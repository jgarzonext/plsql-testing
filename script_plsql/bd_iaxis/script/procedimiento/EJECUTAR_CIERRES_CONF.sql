--------------------------------------------------------
--  DDL for Procedure EJECUTAR_CIERRES_CONF
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."EJECUTAR_CIERRES_CONF" (pcidioma IN NUMBER DEFAULT 8)
IS
/******************************************************************************
   NOMBRE:       Ejecutar_Cierres
   PROPÓSITO:    Este proceso mirará en la tabla CIERRES si hay algún registro cuyo estado
   sea 'cierre programado' (cestado IN (20,21)). Si es así, lanzará el cierre
   para el periodo que indique el registro, y se actualizará la tabla cierres
   para indicar el nuevo estado del periodo.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/06/2009   DCT               Modificación procedure
   2.0        12/01/2012   JMF               0020701: LCOL_F001 - UAT-FIN - La parametrizacion para programacion de cierres no funciono
   3.0        06/11/2012   DCG               0024542: LCOL895-Ajuste provisiones amortizaciones
   4.0        17/07/2015   JAMF              36793: POSES200-POS ADM SAP Cifras PPPC  -  Dejar trazas en procesos en el cálculo y envío de contab.
   5.0                     RAL               37583 POS - Optimizar contabilidad del cierre de provisiones
   6.0        23/11/2015   JAMF              38788: POSES200-POS - No ejecución del cierre de provisiones en PROD
   7.0        27/10/2017   AABC              CONF-403:Se realiza una validacion adicional para la provision de cartera.
******************************************************************************/
/***************************************************************************
   Este proceso mirará en la tabla CIERRES si hay algún registro cuyo estado
   sea 'cierre programado' (cestado IN (20,21)). Si es así, lanzará el cierre
   para el periodo que indique el registro, y se actualizará la tabla cierres
   para indicar el nuevo estado del periodo.
   15/09/04 CPM:
     Se hace una reingenieria de este proceso, para que pueda ejecutar
    diversos cierres en orden diferente dependiendo de la instalació.
    Se parametriza tanto los cierres, como el orden, como las funciones que
    son llamadas para realizar el cierre.
****************************************************************************/
   w_job_number   VARCHAR2(64);   --38788: POSES200-POS - No ejecución del cierre de provisiones en PROD

   -- cierre programado: Por las diferentes horas de ejecución segñun cliente asegurarnos que lo lance cuando toca.
   -- previo programado
   -- BUG 0020701 - 12/01/2012 - JMF: formato fcierre
   CURSOR c_cierres IS
      SELECT   c.ctipo, c.cempres, c.fperini, c.fperfin, c.fcierre, c.sproces, c.cestado,
               p.tpackage, p.tdepen
          FROM cierres c, pds_program_cierres p
         WHERE c.ctipo = p.ctipo
           AND c.cempres = p.cempres
           AND p.cactivo = 1
           AND((c.cestado IN(20, 21)
                AND TO_DATE(TO_CHAR(c.fcierre, 'dd/mm/yyyy') || ' 12:00:00',
                            'dd/mm/yyyy hh24:mi:ss') < f_sysdate)
               OR(c.cestado = 22
                  AND c.fperini < TRUNC(f_sysdate)))
      ORDER BY c.cempres, c.fcierre, p.norden, c.fperini;

   --javendano bug 35149/202207 20-04-2015 POS
   CURSOR c_vjob_run IS
      SELECT v.job, v.this_date
        FROM user_jobs v, dba_jobs_running d
       WHERE UPPER(v.what) LIKE UPPER('%Ejecutar_cierres%')
         AND v.job = d.job
         AND v.job <> TO_NUMBER(w_job_number);   --38788: POSES200-POS - No ejecución del cierre de provisiones en PROD

   cadena         VARCHAR2(1000);
   s              VARCHAR2(2000);
   error          NUMBER := 0;
   psproces       NUMBER;
   pfproces       DATE;
   v_numlin       NUMBER;
   v_modo         NUMBER;
   v_depen        NUMBER;   -- 0: Dependencia correcte; 1: Dependencia erronea.
   empresa        VARCHAR2(10);
   verror         NUMBER;
   v_titulo       VARCHAR2(100) := 'ejecutar_cierres_conf';
   conta_err      NUMBER;
   num_err        NUMBER;
   pnnumlin       NUMBER;
   --Version 7.0
   l_sproceso     NUMBER;
   --

   FUNCTION f_ejec_contab(
      pempresa IN NUMBER,
      ptipopago IN NUMBER,
      pidpago IN NUMBER,
      psinterf OUT NUMBER,
      pnmovimi IN NUMBER DEFAULT NULL) -- Version 7.0
      RETURN NUMBER IS
      vnumerr        NUMBER(10);
   BEGIN
      pac_int_online.p_inicializar_sinterf;
      psinterf := pac_int_online.f_obtener_sinterf;
      vnumerr := pac_cuadre_adm.f_contabiliza_interf(psinterf, ptipopago, pidpago, pempresa,
                                                     TRUNC(f_sysdate), pnmovimi); --Version 7.0

      IF vnumerr <> 0 THEN
         RETURN vnumerr;
      END IF;

      RETURN 0;
   END f_ejec_contab;

   FUNCTION f_envio_contab_pos(
      pempresa IN NUMBER,
      paccion IN NUMBER,
      ptipopago IN NUMBER,
      pidpago IN NUMBER,
      pterminal IN VARCHAR2,
      pemitido OUT NUMBER,
      psinterf IN NUMBER,
      perror OUT VARCHAR2,
      pusuario IN VARCHAR2,
      pnumevento IN NUMBER DEFAULT NULL,
      pcoderrorin IN NUMBER DEFAULT NULL,
      pdescerrorin IN VARCHAR2 DEFAULT NULL,
      ppasocuenta IN NUMBER DEFAULT NULL)
      RETURN NUMBER IS
      vlineaini      VARCHAR2(500);
      v_interficie   VARCHAR2(100);
      videmovimiento VARCHAR2(20);
      aux_idmovimiento VARCHAR2(20);
      new_sinterf    NUMBER;
      vresultado     NUMBER;
      vnumerr        NUMBER;

      CURSOR c_contab IS
         SELECT DISTINCT SUBSTR(otros, 73, 5) sucursal, SUBSTR(otros, 28, 4) producto   --, c.*
                    FROM contab_asient_interf c
                   WHERE sinterf = psinterf
                ORDER BY 1, 2;
   BEGIN
      videmovimiento := '0';
      v_interficie := pac_parametros.f_parempresa_t(pempresa, 'INTERFICIE_ERP');

      FOR reg IN c_contab LOOP
         aux_idmovimiento := reg.producto || reg.sucursal;

         IF aux_idmovimiento <> videmovimiento THEN
            videmovimiento := aux_idmovimiento;
            pac_int_online.p_inicializar_sinterf;
            new_sinterf := pac_int_online.f_obtener_sinterf;
         END IF;

         -- Mirar cómo se puede hacer este UPDATE de la mejor manera, para actualizar el registro que estamos obteniendo del cursor
         UPDATE contab_asient_interf
            SET sinterf = new_sinterf
          WHERE sinterf = psinterf
            AND SUBSTR(otros, 73, 5) = reg.sucursal
            AND SUBSTR(otros, 28, 4) = reg.producto;

         --
         vlineaini := pempresa || '|' || ptipopago || '|' || paccion || '|' || pidpago || '|'
                      || videmovimiento || '|' || pterminal || '|' || pusuario || '|'
                      || pnumevento || '|' || pcoderrorin || '|' || pdescerrorin || '|'
                      || ppasocuenta;
         vresultado := pac_int_online.f_int(pempresa, new_sinterf, v_interficie, vlineaini);

         IF vresultado <> 0 THEN
            IF NVL(pac_parametros.f_parempresa_n(pempresa, 'INT_REPROCESAR'), 0) = 1 THEN
               vnumerr := pac_con.f_cont_reproceso(new_sinterf, 2);
            END IF;
         END IF;

         BEGIN
            --Solo tenemos el ultimo sinterf, tampoco podriamos pasar
            --un parametro OUT con todos. De momento lo dejamos
            SELECT tparam
              INTO pemitido
              FROM int_parametros
             WHERE sinterf = psinterf
               AND cparam = 'EMITIDO';
         EXCEPTION
            WHEN OTHERS THEN
               pemitido := NULL;
         END;
      END LOOP;

      RETURN 0;
   END f_envio_contab_pos;
BEGIN
   --Inicialització del context
   BEGIN
      --BUG 7352 - 10/06/2009    - DCT - Desarrollo PL Cierres
      empresa := f_parinstalacion_n('EMPRESADEF');
      verror := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(empresa,
                                                                            'USER_BBDD'));

      --FI BUG 7352 - 10/06/2009    - DCT - Desarrollo PL Cierres
      IF verror > 0 THEN
         p_tab_error(f_sysdate, f_user, 'ejecutar_cierres_conf', 1, 'INICIALIZA CONTEXT ',
                     verror);
         p_int_error(' ejecutar_cierres_conf', ' inicializar contexto error ', 1, 0);
         error := 1;
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'ejecutar_cierres_conf', 2, 'INICIALIZA CONTEXT ',
                     SQLERRM);
         p_int_error(' ejecutar_cierres_conf', ' inicializar contexto error ', 1, 0);
         error := 1;
   END;

   w_job_number := SYS_CONTEXT('userenv', 'BG_JOB_ID');   --38788: POSES200-POS - No ejecución del cierre de provisiones en PROD

   --javendano bug 35149/202207 20-04-2015 POS
   FOR reg IN c_vjob_run LOOP
      IF reg.this_date IS NOT NULL THEN
         --El proceso programado se está ejecutando
         error := 9001145;
         p_tab_error(f_sysdate, f_user, 'CIERRE', NULL,
                     SUBSTR('Cierres programados: err=' || f_axis_literales(error, -1), 1,
                            500),
                     'j=' || reg.job || ' d=' || reg.this_date);
      END IF;
   END LOOP;

   --javendano bug 35149/202207 20042015 POS
    --IF error <> 1 THEN
   IF error = 0 THEN
      FOR reg IN c_cierres LOOP
         error := 0;
         psproces := NULL;

         IF reg.cestado = 20 THEN
            v_modo := 2;   -- Definitiu
         ELSE
            v_modo := 1;   -- Previ
         END IF;

         --CPM 31/1/05: Comprovem les dependencies amb altres tancaments
         IF reg.tdepen IS NULL THEN
            v_depen := 0;
         ELSE
            -- Mirem si estem fent el tancament definitiu, pq el previ no
               -- tindrá en compte les dependencies.
            IF v_modo = 1 THEN   -- Previ
               v_depen := 0;
            ELSE
               -- Busquem les dependencies.
               s := 'BEGIN SELECT MAX(NVL(c.cestado, -1))' || CHR(10) || 'INTO :v_depen '
                    || CHR(10) || 'FROM CIERRES c, PDS_PROGRAM_CIERRES p' || CHR(10)
                    || 'WHERE c.fperfin (+) = to_date('''
                    || TO_CHAR(reg.fperfin, 'dd/mm/yyyy') || ''', ''dd/mm/yyyy'')' || CHR(10)
                    || ' AND (c.cestado <> 1 OR c.cestado IS NULL)' || CHR(10)
                    || ' AND c.ctipo (+)= p.ctipo' || CHR(10)
                    || ' AND c.cempres (+)= p.cempres' || CHR(10) || ' AND p.ctipo IN ('
                    || reg.tdepen || ')' || CHR(10) || ' AND p.cempres = ' || reg.cempres
                    || CHR(10) || ' AND p.cactivo = 1; END;';

               EXECUTE IMMEDIATE s
                           USING OUT v_depen;

               IF v_depen IS NULL THEN   -- Les dependencies estàn tancades
                  v_depen := 0;
               ELSE
                  v_depen := 1;
               END IF;
            END IF;
         END IF;

         IF v_depen = 0 THEN   -- Dependencies correctes
            IF reg.tpackage IS NOT NULL THEN
               BEGIN
                  cadena := reg.tpackage || '.proceso_batch_cierre( ' || v_modo || ', '
                            || reg.cempres ||
                                              -- pmoneda  = 2  (pesetas)
                                              -- pidioma  = 1  (catalán); 2 (castellano)
                            ', ' || f_parinstalacion_n('MONEDAINST') || ', ' || pcidioma
                            || ', to_date(''' || TO_CHAR(reg.fperini, 'dd/mm/yyyy')
                            || ''', ''dd/mm/yyyy''), to_date('''
                            || TO_CHAR(reg.fperfin, 'dd/mm/yyyy')
                            || ''', ''dd/mm/yyyy''), to_date('''
                            || TO_CHAR(reg.fcierre, 'dd/mm/yyyy')
                            || ''', ''dd/mm/yyyy''), :error, :psproces, :pfproces); ';
                  s := ' BEGIN ' || CHR(10) || cadena || CHR(10) || ' END;';

--          DBMS_OUTPUT.put_line ('Execute ' || s);
                  EXECUTE IMMEDIATE s
                              USING OUT error, OUT psproces, OUT pfproces;
               EXCEPTION
                  WHEN OTHERS THEN
                     IF psproces IS NOT NULL THEN
                        error := f_proceslin(psproces,
                                             SUBSTR('Cierres programados:ctipo=' || reg.ctipo
                                                    || 'modo=' || v_modo
                                                    || ';error incontrolado=' || SQLERRM,
                                                    1, 120),
                                             0, v_numlin, 2);
                     ELSE
                        p_tab_error(f_sysdate, f_user, 'CIERRE =' || psproces, NULL,
                                    SUBSTR('Cierres programados:ctipo=' || reg.ctipo
                                           || 'modo=' || v_modo || ';error incontrolado',
                                           1, 500),
                                    SQLERRM);
                     END IF;

                     error := 1;
               END;
            END IF;

            IF error = 0 THEN
               UPDATE cierres
                  SET cestado = DECODE(v_modo, 1, 0,   --Previ
                                       2, 1),   --Definitiu
                      sproces = psproces,
                      fproces = NVL(pfproces, f_sysdate)
                WHERE ctipo = reg.ctipo
                  AND cempres = reg.cempres
                  AND fperini = reg.fperini;

               COMMIT;
            ELSE
               IF psproces IS NOT NULL THEN
                  error := f_proceslin(psproces,
                                       SUBSTR('Cierres programados:ctipo=' || reg.ctipo
                                              || 'modo=' || v_modo || ';error=' || error,
                                              1, 120),
                                       0, v_numlin, 2);
               ELSE
                  p_tab_error(f_sysdate, f_user, 'CIERRE =' || psproces, NULL,
                              SUBSTR('Cierres programados:ctipo=' || reg.ctipo || 'modo='
                                     || v_modo || ';error=' || error,
                                     1, 500),
                              SQLERRM);
               END IF;
            END IF;
         ELSE
            IF psproces IS NOT NULL THEN
               error := f_proceslin(psproces,
                                    SUBSTR('Cierres programados:ctipo=' || reg.ctipo
                                           || 'modo=' || v_modo
                                           || ';existen dependencias no cerradas',
                                           1, 120),
                                    0, v_numlin, 2);
            ELSE
               p_tab_error(f_sysdate, f_user, 'CIERRE =' || psproces, NULL,
                           SUBSTR('Cierres programados:ctipo=' || reg.ctipo || 'modo='
                                  || v_modo || ';existen dependencias no cerradas',
                                  1, 500),
                           SQLERRM);
            END IF;
         END IF;
      END LOOP;

      --ejecuto proceso de contabilidad del cierre
      BEGIN
         IF NVL(pac_parametros.f_parempresa_n(empresa, 'GESTIONA_COBPAG'), 0) = 1
            AND NVL(pac_parametros.f_parempresa_n(empresa, 'CONTAB_ONLINE'), 0) = 1 THEN
            --
            DECLARE
               vtipopago      NUMBER;
               vemitido       NUMBER;
               vsinterf       NUMBER;
               vsubfi         VARCHAR2(100);
               ss             VARCHAR2(3000);
               v_cursor       NUMBER;
               v_ttippag      NUMBER := 13;
               v_ttippag_rea  NUMBER := 14;
               --v_ttippag_coa  NUMBER := 16;
               v_filas        NUMBER;
               vterminal      VARCHAR2(20);
               perror         VARCHAR2(2000);
               v_cont_coa     NUMBER;
               v_sproant      NUMBER;

               CURSOR c_cierres(p_ctipo IN NUMBER) IS
                  SELECT sproces, ctipo
                    FROM cierres
                   WHERE
                         --TRUNC(fproces) = TRUNC(f_sysdate)
                           --AND
                         fcontab IS NULL
                     AND ctipo = p_ctipo
                     AND cestado = 1;

               CURSOR c_agentes IS
                  SELECT DISTINCT (cagente)
                             FROM agentes
                            WHERE ctipage = 2
                              AND cactivo = 1;

               CURSOR c_productos IS
                  SELECT DISTINCT (sproduc)
                             FROM productos;

               --Para mejorar rendimiento buscamos el ramo contable del proceso actual y el inmediatamente anterior de todas las tablas
               CURSOR c_productos2(sproc_act NUMBER, sproc_ant NUMBER) IS
                  SELECT DISTINCT f_cnvproductos_ext(sproduc) sproduc
                             FROM (SELECT DISTINCT sproduc
                                              FROM pppc_conf p, productos p2
                                             WHERE sproces IN(sproc_act, sproc_ant)
                                               AND p.cramo = p2.cramo
                                               AND p.cmodali = p2.cmodali
                                               AND p.ctipseg = p2.ctipseg
                                               AND p.ccolect = p2.ccolect
                                   UNION
                                   SELECT DISTINCT sproduc
                                              FROM provmat p, productos p2
                                             WHERE sproces IN(sproc_act, sproc_ant)
                                               AND p.cramo = p2.cramo
                                               AND p.cmodali = p2.cmodali
                                               AND p.ctipseg = p2.ctipseg
                                               AND p.ccolect = p2.ccolect
                                   UNION
                                   SELECT DISTINCT sproduc
                                              FROM upr p, productos p2
                                             WHERE sproces IN(sproc_act, sproc_ant)
                                               AND p.cramo = p2.cramo
                                               AND p.cmodali = p2.cmodali
                                               AND p.ctipseg = p2.ctipseg
                                               AND p.ccolect = p2.ccolect
                                   UNION
                                   SELECT DISTINCT sproduc
                                              FROM prov_amocom p, seguros p2
                                             WHERE sproces IN(sproc_act, sproc_ant)
                                               AND p.sseguro = p2.sseguro
                                   UNION
                                   SELECT DISTINCT sproduc
                                              FROM ibnr_sam p
                                             WHERE sproces IN(sproc_act, sproc_ant));

               CURSOR c_recibos IS
                  SELECT DISTINCT (nrecibo)
                             FROM ctacoaseguro
                            WHERE fcontab IS NULL;
            BEGIN
               --
               p_int_error(f_axis_literales(9900986, pcidioma),
                           'EJECUTAR CIERRES POS INICIO Cierres de provisiones' || f_sysdate,
                           0, NULL);
               --Insertamos en la tabla PROCESOSCAB el registro identificativo de proceso -----
               num_err := f_procesini(f_user, empresa, 'Contab.PROVISIONES', v_titulo, psproces); --Version 7.0
               conta_err := 0;

               --cierres de provisiones
               --
               FOR cie IN c_cierres(3) LOOP
                  SELECT MAX(sproces)
                    INTO v_sproant
                    FROM cierres
                   WHERE ctipo = 3
                     AND sproces < cie.sproces
                     AND cestado = 1;
                  -- Version 7.0
                  BEGIN
                     --
                     SELECT DISTINCT (p.sproces)
                       INTO l_sproceso
                       FROM pppc_conf p
                      WHERE p.sproces = cie.sproces;
                     --
                  EXCEPTION WHEN no_data_found THEN
                     --
                     BEGIN
                        --
                        SELECT DISTINCT (pc.sproces)
                          INTO l_sproceso
                          FROM pppc_conf_oct pc
                         WHERE pc.sproces = cie.sproces;
                         --
                     EXCEPTION WHEN no_data_found THEN
                         l_sproceso := NULL;
                     END;
                  END;
                  --
                  IF l_sproceso IS NOT NULL THEN
                     --
                     FOR c_sucur IN (SELECT DISTINCT pac_contab_conf.f_division(p.sseguro,NULL) sucursal
                                       FROM pppc_conf p
                                      WHERE p.sproces = l_sproceso) LOOP
                        --
                        vsinterf := NULL;
                        verror := pac_user.f_get_terminal(pac_md_common.f_get_cxtusuario, vterminal);
                        verror := f_ejec_contab(empresa, v_ttippag, c_sucur.sucursal, vsinterf,l_sproceso);
                        --
                     END LOOP;
                     --
                  ELSE
                     --
                     vsinterf := NULL;
                     verror := pac_user.f_get_terminal(pac_md_common.f_get_cxtusuario, vterminal);
                     verror := f_ejec_contab(empresa, v_ttippag, cie.sproces, vsinterf);
                  END IF;
                  --Version 7.0
                  IF verror <> 0 THEN
                     conta_err := conta_err + 1;
                     pnnumlin := NULL;
                     num_err :=
                        f_proceslin(psproces,
                                    SUBSTR('Contabilidad cierres - provisiones ' || perror, 1,
                                           120),
                                    0, pnnumlin);
                     p_int_error
                                (f_axis_literales(9900986, pcidioma),
                                 'EJECUTAR CIERRES_pos Contabilidad cierres - provisiones'
                                 || f_axis_literales(9901093, pcidioma),
                                 2, verror);
                  ELSE
                     verror := f_envio_contab_pos(empresa, 1, v_ttippag, cie.sproces,
                                                  vterminal, vemitido, vsinterf, perror,
                                                  f_user);

                     IF verror <> 0 THEN
                        conta_err := conta_err + 1;
                        pnnumlin := NULL;
                        num_err :=
                           f_proceslin(psproces,
                                       SUBSTR('Contabilidad cierres - provisiones ' || perror,
                                              1, 120),
                                       0, pnnumlin);
                        p_int_error
                                (f_axis_literales(9900986, pcidioma),
                                 'EJECUTAR CIERRES_pos Contabilidad cierres - provisiones'
                                 || f_axis_literales(9901093, pcidioma),
                                 2, verror);
                     END IF;
                  END IF;

                  COMMIT;

                  UPDATE cierres
                     SET fcontab = f_sysdate
                   WHERE ctipo = cie.ctipo
                     AND fcontab IS NULL
                     AND cestado = 1
                     AND sproces = cie.sproces;

                  COMMIT;
               END LOOP;

               --Terminamos en la tabla PROCESOSCAB el registro identificativo de proceso -----
               num_err := f_procesfin(psproces, conta_err);
               p_int_error(f_axis_literales(9900986, pcidioma),
                           'EJECUTAR CIERRES POS INICIO Cierres de reaseguro' || f_sysdate, 0,
                           NULL);
               --Insertamos en la tabla PROCESOSCAB el registro identificativo de proceso -----
               num_err := f_procesini(f_user, 17, 'Contab. REASEGURO', v_titulo, psproces);
               conta_err := 0;

               --cierres de reaseguro
               FOR cie IN c_cierres(4) LOOP
                  FOR age_provi IN c_productos LOOP
                     vsinterf := NULL;
                     verror := pac_user.f_get_terminal(pac_md_common.f_get_cxtusuario,
                                                       vterminal);
                     verror := pac_con.f_emision_pagorec(empresa, 1, v_ttippag_rea,
                                                         cie.sproces, age_provi.sproduc,
                                                         vterminal, vemitido, vsinterf,
                                                         perror, f_user);

                     IF verror <> 0
                        OR TRIM(perror) IS NOT NULL THEN
                        IF verror = 0 THEN
                           verror := 151323;
                        END IF;

                        conta_err := conta_err + 1;
                        pnnumlin := NULL;
                        num_err :=
                           f_proceslin(psproces,
                                       SUBSTR('Contabilidad cierres - reaseguro ' || perror, 1,
                                              120),
                                       0, pnnumlin);
                        p_int_error
                                   (f_axis_literales(9900986, pcidioma),
                                    'EJECUTAR CIERRES_pos Contabilidad cierres - reaseguro'
                                    || f_axis_literales(9901093, pcidioma),
                                    2, verror);
                     END IF;
                  END LOOP;

                  UPDATE cierres
                     SET fcontab = f_sysdate
                   WHERE ctipo = cie.ctipo
                     AND fcontab IS NULL
                     AND cestado = 1
                     AND sproces = cie.sproces;

                  COMMIT;
               END LOOP;

               --Terminamos en la tabla PROCESOSCAB el registro identificativo de proceso -----
               num_err := f_procesfin(psproces, conta_err);
               /* p_int_error(f_axis_literales(9900986, v_idioma),
                            'PROCESOS NOCTURNOS POS INICIO Cierres de coaseguro' || f_sysdate, 0,
                            NULL);

                --cierres de coaseguro ejecutados en procesos nocturnos
                FOR cie IN c_recibos LOOP
                   --  FOR age_provi IN c_productos LOOP
                   vsinterf := NULL;
                   verror := pac_user.f_get_terminal(pac_md_common.f_get_cxtusuario, vterminal);
                   verror := pac_con.f_emision_pagorec(v_cempres, 1, v_ttippag_coa, cie.nrecibo,
                                                       NULL, vterminal, vemitido, vsinterf,
                                                       perror, f_user);

                   IF verror <> 0
                      OR TRIM(perror) IS NOT NULL THEN
                      IF verror = 0 THEN
                         verror := 151323;
                      END IF;

                      p_int_error(f_axis_literales(9900986, v_idioma),
                                  'p_procesos_nocturnos_pos Contabilidad cierres - coaseguro'
                                  || f_axis_literales(9901093, v_idioma),
                                  2, verror);
                   END IF;
                --  END LOOP;
                END LOOP;

                UPDATE ctacoaseguro
                   SET fcontab = TRUNC(f_sysdate)
                 WHERE fcontab IS NULL;*/

               --Insertamos en la tabla PROCESOSCAB el registro identificativo de proceso -----
               num_err := f_procesini(f_user, 17, 'Contab. COASEGURO', v_titulo, psproces);
               conta_err := 0;

               FOR cie IN c_cierres(5) LOOP
                  -- FOR age_provi IN c_productos LOOP
                  vsinterf := NULL;
                  verror := pac_user.f_get_terminal(pac_md_common.f_get_cxtusuario, vterminal);
                  verror := pac_con.f_emision_pagorec(empresa, 1, v_ttippag_rea, cie.sproces,
                                                      1, vterminal, vemitido, vsinterf,
                                                      perror, f_user);

                  IF verror <> 0
                     OR TRIM(perror) IS NOT NULL THEN
                     IF verror = 0 THEN
                        verror := 151323;
                     END IF;

                     conta_err := conta_err + 1;
                     pnnumlin := NULL;
                     num_err := f_proceslin(psproces,
                                            SUBSTR('Contabilidad cierres - coaseguro '
                                                   || perror,
                                                   1, 120),
                                            0, pnnumlin);
                     p_int_error(f_axis_literales(9900986, pcidioma),
                                 'EJECUTAR CIERRES_pos Contabilidad cierres - reaseguro'
                                 || f_axis_literales(9901093, pcidioma),
                                 2, verror);
                  END IF;

                  --  END LOOP;
                  UPDATE cierres
                     SET fcontab = f_sysdate
                   WHERE ctipo = cie.ctipo
                     AND fcontab IS NULL
                     AND cestado = 1
                     AND sproces = cie.sproces;

                  COMMIT;
               END LOOP;

               --Terminamos en la tabla PROCESOSCAB el registro identificativo de proceso -----
               num_err := f_procesfin(psproces, conta_err);
               --cierres de reaseguro XL
               p_int_error(f_axis_literales(9900986, pcidioma),
                           'EJECUTAR CIERRES POS INICIO Cierres de reaseguro XL' || f_sysdate,
                           0, NULL);
               --Insertamos en la tabla PROCESOSCAB el registro identificativo de proceso -----
               num_err := f_procesini(f_user, 17, 'Contab. REASEGURO XL', v_titulo, psproces);
               conta_err := 0;

               FOR cie IN c_cierres(15) LOOP
                  FOR age_provi IN c_productos LOOP
                     vsinterf := NULL;
                     verror := pac_user.f_get_terminal(pac_md_common.f_get_cxtusuario,
                                                       vterminal);
                     verror := pac_con.f_emision_pagorec(empresa, 1, v_ttippag_rea,
                                                         cie.sproces, age_provi.sproduc,
                                                         vterminal, vemitido, vsinterf,
                                                         perror, f_user);

                     IF verror <> 0
                        OR TRIM(perror) IS NOT NULL THEN
                        IF verror = 0 THEN
                           verror := 151323;
                        END IF;

                        conta_err := conta_err + 1;
                        pnnumlin := NULL;
                        num_err :=
                           f_proceslin(psproces,
                                       SUBSTR('Contabilidad cierres - coaseguro ' || perror, 1,
                                              120),
                                       0, pnnumlin);
                        p_int_error
                                (f_axis_literales(9900986, pcidioma),
                                 'EJECUTAR CIERRES_pos Contabilidad cierres - reaseguro XL'
                                 || f_axis_literales(9901093, pcidioma),
                                 2, verror);
                     END IF;
                  END LOOP;

                  UPDATE cierres
                     SET fcontab = f_sysdate
                   WHERE ctipo = cie.ctipo
                     AND fcontab IS NULL
                     AND cestado = 1
                     AND sproces = cie.sproces;

                  COMMIT;
               END LOOP;

               --Terminamos en la tabla PROCESOSCAB el registro identificativo de proceso -----
               num_err := f_procesfin(psproces, conta_err);
            END;
         END IF;
      END;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      IF psproces IS NOT NULL THEN
         error := f_proceslin(psproces,
                              SUBSTR('Cierres programados; error incontrolado=' || SQLERRM, 1,
                                     120),
                              0, v_numlin, 2);
      ELSE
         p_tab_error(f_sysdate, f_user, 'CIERRE =' || psproces, NULL,
                     SUBSTR('Cierres programados; error incontrolado', 1, 500), SQLERRM);
      END IF;
END ejecutar_cierres_conf;

/

  GRANT EXECUTE ON "AXIS"."EJECUTAR_CIERRES_CONF" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."EJECUTAR_CIERRES_CONF" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."EJECUTAR_CIERRES_CONF" TO "PROGRAMADORESCSI";
