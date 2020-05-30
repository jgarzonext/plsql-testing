--------------------------------------------------------
--  DDL for Procedure EJECUTAR_CIERRES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."EJECUTAR_CIERRES" (pcidioma IN NUMBER DEFAULT 2)
AUTHID CURRENT_USER IS
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
   4.0        14/01/2015   JAMF              0033804: Proteger el proceso de cierres
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
   14/01/2015 JAMF
    Se añade una comprobación inicial para ver si ya hay algún job ejecutándose
****************************************************************************/
   w_job_number   VARCHAR2(64);   -- BUG 0035672 - FAL - 24/04/2015

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

   CURSOR c_vjob_run IS
      --javendano bug 35149/202207 20042015 POS
      /*SELECT v.job, v.this_date
        FROM user_jobs v
       WHERE UPPER(v.what) LIKE UPPER('%Ejecutar_cierres%');*/
      SELECT v.job, v.this_date
        FROM user_jobs v, dba_jobs_running d
       WHERE UPPER(v.what) LIKE UPPER('%Ejecutar_cierres%')
         AND v.job = d.job
         AND v.job <> TO_NUMBER(w_job_number);   -- BUG 0035672 - FAL - 24/04/2015

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
BEGIN
   --Inicialització del context
   BEGIN
      --BUG 7352 - 10/06/2009    - DCT - Desarrollo PL Cierres
      empresa := f_parinstalacion_n('EMPRESADEF');
      verror := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(empresa,
                                                                            'USER_BBDD'));

      --FI BUG 7352 - 10/06/2009    - DCT - Desarrollo PL Cierres
      IF verror > 0 THEN
         p_tab_error(f_sysdate, f_user, 'Ejecutar_Cierres', 1, 'INICIALIZA CONTEXT ', verror);
         p_int_error(' Ejecutar_Cierres', ' inicializar contexto error ', 1, 0);
         error := 1;
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'Ejecutar_Cierres', 2, 'INICIALIZA CONTEXT ', SQLERRM);
         p_int_error(' Ejecutar_Cierres', ' inicializar contexto error ', 1, 0);
         error := 1;
   END;

   w_job_number := SYS_CONTEXT('userenv', 'BG_JOB_ID');   -- BUG 0035672 - FAL - 24/04/2015

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
                 -- P_CONTROL_ERROR('FAC','FAC',error||'//'||s);
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
            
            --P_CONTROL_ERROR('FAC','FAC',error||'//'||psproces);

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
END ejecutar_cierres;

/

  GRANT EXECUTE ON "AXIS"."EJECUTAR_CIERRES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."EJECUTAR_CIERRES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."EJECUTAR_CIERRES" TO "PROGRAMADORESCSI";
