CREATE OR REPLACE PROCEDURE P_PROCESOS_NOCTURNOS
IS
    /******************************************************************************
    NOMBRE:       P_PROCESOS_NOCTURNOS
    PROPÓSITO:    Procedimiento que ejecuta una serie de procesos

    REVISIONES:
    Ver        Fecha        Autor             Descripción
    ---------  ----------  ---------------  ------------------------------------
    1.0        ??/??/????  ???                1. Creación del package.
    2.0        30/03/2009  DRA                2. 0010761: CRE - Reembolsos
    3.0        02/12/2009  MCA                3. 0011835: Modificación de la pac_parametros
    4.0        23/11/2009  JMF                4. 0011802: CRE - Regularització per canvi de versió
    5.0        02/02/2010  JTS                5. 0012409: CEM - Procesos Batch / Modificacions diverses per tot el codi
    6.0        09/03/2010  AVT                6. 0013504: CRE - Reaseguro del PPJ dinámico igual que el Credit Vida
    7.0        01/04/2010  AVT                7. 0014028: Desquadre Contabilitat PPJ
    8.0        04/06/2010  ETM                8. 0014804: CRE800 - Incluir limpieza de tablas temporales
    9.0        10/11/2010  DRA                9. 0016623: CIV800 - CADUCIDAD SIMULACIONES GUARDADAS
   10.0        30/04/2012  APD               10. 0022049: MDP - TEC - Visualizar garantías y sub-garantias
   11.0        25/03/2014  JTT               11. 0029943: POSRA200 - Gaps 27,28 Anexos de PU en VI
   12.0        22/08/2016  HRE               12  CONF-186: Se incluyen procesos para gestion de marcas.
   12.0        01/09/2016  DMC               12  CONF-304: Desarrollo INT06 (CÓDIGO BRIDGER).
   13.0        14/02/2019  SWAPNIL           13. Cambios para incidente GCRS19: cambiar query de generacion de archivo Bridger
   14.0        15/02/2019  CJMR              14. TCS-344 Marcas: Ajustes de acuerdo a nuevo funcional de Marcas
   15.0        28/03/2019  RABQ              15. IAXIS-3200: Funcionalidad Anulaciones - Gestión Cotización
   16.0        14/05/2019  ECP               16. IAXIS-3631: Cambio de Estado cuando las pólizas están vencidas (proceso nocturno)
    ******************************************************************************/
    p_errm          NUMBER;
    verror          NUMBER;
    p_proceso       NUMBER;
    desde           VARCHAR2 (100);
    hasta           VARCHAR2 (100);
    errores         VARCHAR2 (32000);
    errores2        VARCHAR2 (32000);
    empresa         VARCHAR2 (10);
    ss              VARCHAR2 (3000);
    v_cursor        NUMBER;
    retorno         NUMBER;
    v_filas         NUMBER;
    vsubfi          VARCHAR2 (100);
    v_nversio_a     NUMBER;                   -- BUG: 13504 - 09-03-2010 - AVT
    v_idioma        NUMBER
        := NVL (pac_contexto.f_contextovalorparametro ('IAX_IDIOMA'), 2);
    vsproces        NUMBER;
    v_nempres       NUMBER := 0;
    vnum_err        NUMBER;  --SGM IAXIS 3641 CARGUE DE ARCHIVO DE PROVEEDORES
    v_contexto      NUMBER := 0; --SGM IAXIS 3641 CARGUE DE ARCHIVO DE PROVEEDORES

    CURSOR prop_de_alta IS
        SELECT npoliza, fefecto, ncertif
          FROM seguros
         WHERE     csituac = 4
               AND creteni = 0
               AND NOT EXISTS
                       (SELECT *
                          FROM motretencion
                         WHERE sseguro = seguros.sseguro);

    CURSOR error_sistema IS
        SELECT npoliza, fefecto, ncertif
          FROM seguros
         WHERE     creteni NOT IN (3, 4)
               AND EXISTS
                       (SELECT *
                          FROM motretencion m
                         WHERE     m.sseguro = seguros.sseguro
                               AND m.cmotret = 6
                               AND NOT EXISTS
                                       (SELECT 1
                                          FROM motreten_rev r
                                         WHERE     m.sseguro = r.sseguro
                                               AND m.nriesgo = r.nriesgo
                                               AND m.nmovimi = r.nmovimi
                                               AND m.nmotret = r.nmotret));

    CURSOR prestamos IS
        SELECT npoliza, ncertif
          FROM seguros s
         WHERE     sproduc IN (4, 5, 6)
               AND creteni NOT IN (3, 4)
               AND NOT EXISTS
                       (SELECT 1
                          FROM prestamoseg p
                         WHERE p.sseguro = s.sseguro);

    CURSOR nduraci IS
        SELECT npoliza, ncertif
          FROM seguros
         WHERE creteni NOT IN (3, 4) AND csituac <> 0 AND nduraci = 0;

    CURSOR recibos_pdtes IS
        SELECT DISTINCT npoliza, ncertif
          FROM seguros s
         WHERE     csituac = 2
               AND s.sseguro IN
                       (SELECT /*+ USE_NL(M) ORDERED */
                               NVL (r.sseguro, r.sseguro)
                          FROM recibos r, movrecibo m
                         WHERE     m.nrecibo = r.nrecibo + 0
                               AND m.cestrec + 0 = 0
                               AND m.fmovfin IS NULL);

    CURSOR reduccions IS
        SELECT /*+ USE_HASH(S,M) ORDERED */
               s.npoliza, s.ncertif
          FROM movseguro m, seguros s
         WHERE     s.sseguro = m.sseguro + 0
               AND m.cmotmov IN (229, 266)
               AND m.nmovimi = (SELECT MAX (nmovimi)
                                  FROM movseguro x
                                 WHERE x.sseguro = s.sseguro)
               AND (   EXISTS
                           (SELECT 1
                              FROM recibos r
                             WHERE     r.sseguro = s.sseguro
                                   AND r.nmovimi = m.nmovimi
                                   AND r.ctiprec = 1
                                   AND 0 = (SELECT SUM (itotalr)
                                              FROM vdetrecibos v
                                             WHERE v.nrecibo = r.nrecibo))
                    OR s.cforpag <> 0);

    --Bug 25376-XVM-09/05/2013.Inicio
    /*
    CURSOR gar_sin_ftarifa IS
       SELECT s.npoliza, g.sseguro, g.nriesgo, g.cgarant, g.nmovimi, s.ncertif
         FROM garanseg g, seguros s
        WHERE g.ftarifa IS NULL
          AND s.sseguro = g.sseguro;
    */
    CURSOR gar_sin_ftarifa IS
        SELECT s.npoliza,
               g.sseguro,
               g.nriesgo,
               g.cgarant,
               g.nmovimi,
               s.ncertif
          FROM garanseg g, seguros s
         WHERE     g.ftarifa IS NULL
               AND g.ffinefe IS NULL
               AND s.sseguro = g.sseguro;

    --Bug 25376-XVM-09/05/2013.Fin

    -- Bug 0011802 - 23/11/2009 - JMF Afegir cvalid
    CURSOR contrato_valido IS
          SELECT /*+ FULL(I) */
                 c.scontra,
                 c.nversio,
                 i.cempres,
                 c.fconini
            FROM contratos c, codicontratos i
           WHERE     c.fconini = c.fconfin
                 AND c.scontra = i.scontra
                 AND i.cvalid = 1
                 AND NOT EXISTS
                         (SELECT c2.nversio
                            FROM contratos c2
                           WHERE     c.scontra = c2.scontra
                                 AND c.nversio < c2.nversio)
        ORDER BY C.SCONTRA;

    CURSOR rec_moverroneo IS
        SELECT nrecibo FROM recibos
        MINUS
        SELECT nrecibo
          FROM movrecibo
         WHERE fmovfin IS NULL;

    --846 jdomingo 19/11/2007
    --controlem que no hi hagi cap p¿lissa sense garanseg que no estigui anul¿lada
    -- 0014028 AVT 06-04-2010 afegim el tipus de producte per controlar els certificats =0 dels col¿lectius simples
    CURSOR no_garanseg_no_anul IS
        SELECT /*+ FIRST_ROWS */
               sseguro,
               s.sproduc,
               s.cramo,
               npoliza,
               nsuplem,
               fefecto,
               fvencim,
               femisio,
               fanulac,
               fcancel,
               csituac,
               s.cduraci,
               nduraci,
               cforpag,
               fcarant,
               fcarpro,
               fcaranu,
               ncertif,
               csubpro
          FROM seguros s, productos p
         WHERE     s.sseguro NOT IN (SELECT g.sseguro
                                       FROM garanseg g)
               AND s.csituac != 2
               AND (s.csituac = 4 OR s.creteni = 3)
               AND s.sproduc = p.sproduc;

    -- 0014028 AVT 01-04-2010 Control de que no hi hagi cap p¿lissa d'inversi¿ sense una distribuci¿ d'inversi¿ assiganda
    CURSOR seguros_inversio_no IS
        SELECT *
          FROM seguros s
         WHERE     s.cagrpro = 21
               AND NOT EXISTS
                       (SELECT *
                          FROM segdisin2
                         WHERE sseguro = s.sseguro);

    --INI BUG CONF-186  Fecha (22/08/2016) - HRE - proceso de marcas
    v_rec_pdtes     NUMBER;
    v_sin_activos   NUMBER;

    --PERSONAS QUE NO TIENEN SARLAFT, MARCA 0048
    CURSOR cur_sin_sarlaft IS
        SELECT *
          FROM per_personas a
         WHERE     cestper = 0
               AND NOT EXISTS
                       (SELECT 1
                          FROM datsarlatf b
                         -- CJMR 06/03/2019
                         WHERE a.sperson = b.sperson);

    --PERSONAS QUE ESTAN EN LA LISTA CLINTON, MARCA 0050
    CURSOR cur_lista_clinton IS
        SELECT *
          FROM per_personas a
         WHERE     cestper = 0
               AND EXISTS
                       (SELECT 1
                          FROM lre_personas b
                         WHERE a.sperson = b.sperson AND b.ctiplis = 5);

    --PERSONAS QUE TENIAN CHEQUE DEVUELTO, CON CARTERA MAYOR A 85 DIAS, CON CARTERA MAYOR A 120 DIAS Y EL RECIBO FUE PAGADO, MARCA 0032
    CURSOR cur_permarcas (pcmarca agr_marcas.cmarca%TYPE)
    IS
        SELECT /*+ FULL(A) */
               *
          FROM per_agr_marcas a
         WHERE cmarca = pcmarca
               AND (ctomador = 1 + UID * 0 OR cconsorcio = 1)
               AND nmovimi =
                   (SELECT MAX (nmovimi)
                      FROM per_agr_marcas b
                     WHERE     a.cempres = b.cempres
                           AND a.sperson = b.sperson
                           AND a.cmarca = b.cmarca);

    CURSOR cur_rec_pdtes (psperson per_personas.sperson%TYPE)
    IS
        SELECT /*+ USE_HASH(C,B) ORDERED */
               COUNT (0)
          FROM tomadores a, recibos b, movrecibo c
         WHERE     a.sseguro = b.sseguro
               AND b.nrecibo = c.nrecibo
               AND a.sperson = psperson
               AND c.cestrec IN (0, 3, 4)
               AND c.smovrec = (SELECT MAX (smovrec)
                                  FROM movrecibo d
                                 WHERE c.nrecibo = d.nrecibo);

    --PERSONAS CON CARTERA PRIMERA ALERTA (MAYOR A 120 DÍAS), MARCA 0033  TCS-344 CJMR 15/02/2019
    CURSOR cur_cartera85 IS
        SELECT d.sperson
          FROM seguros    C1,
               tomadores  d,
               movrecibo  B1,
               recibos    a
         WHERE     a.sseguro = C1.sseguro + 0
               AND a.nrecibo = B1.nrecibo + 0
               AND d.sseguro = C1.sseguro + 0
               AND B1.smovrec =
                   ANY (SELECT MAX (smovrec)
                          FROM movrecibo C2
                         WHERE B1.nrecibo = C2.nrecibo
                        INTERSECT
                        SELECT B2.smovrec
                          FROM movrecibo B2
                         WHERE     C1.sseguro = d.sseguro
                               AND a.nrecibo = B2.nrecibo
                               AND a.sseguro = C1.sseguro
                               AND   TRUNC (SYSDATE)
                                   - GREATEST (a.fefecto, C1.fefecto) >
                                   120
                               AND   TRUNC (SYSDATE)
                                   - GREATEST (a.fefecto, C1.fefecto) <=
                                   200)
               AND B1.cestrec IN (0, 3, 4)
               AND TRUNC (SYSDATE) - GREATEST (a.fefecto, C1.fefecto) > 120
               AND TRUNC (SYSDATE) - GREATEST (a.fefecto, C1.fefecto) <= 200;

    -- TCS-344 CJMR 15/02/2019

    --PERSONAS CON CARTERA SEGUNDA ALERTA (MAYOR A 200 DÍAS), MARCA 0031  TCS-344 CJMR 15/02/2019
    CURSOR cur_cartera120 IS
          SELECT d.sperson
            FROM seguros  C1,
                 tomadores d,
                 movrecibo b,
                 recibos  a
           WHERE     a.sseguro = C1.sseguro + 0
                 AND a.nrecibo = b.nrecibo + 0
                 AND d.sseguro = C1.sseguro + 0
                 AND b.smovrec = (SELECT MAX (smovrec)
                                    FROM movrecibo C2
                                   WHERE b.nrecibo = C2.nrecibo)
                 AND (   b.cestrec + 0 = 0
                      OR b.cestrec + 0 = 3
                      OR b.cestrec + 0 = 4)
                 AND TRUNC (SYSDATE) - GREATEST (a.fefecto, C1.fefecto) > 200
        ORDER BY A.NRECIBO;

    -- TCS-344 CJMR 15/02/2019

    -- AND trunc(SYSDATE) - GREATEST(a.fefecto, c.fefecto)  <= 120;

    --ALTA SINIESTRALIDAD
    CURSOR cur_siniestralidad IS
        SELECT /*+ INDEX_JOIN(B1) */
               C1.sperson
          FROM sin_siniestro B1, tomadores C1, sin_movsiniestro A1
         WHERE     A1.nsinies = B1.nsinies || ''
               AND C1.sseguro = B1.sseguro + 0
               AND nmovsin = (SELECT MAX (nmovsin)
                                FROM sin_movsiniestro D1
                               WHERE A1.nsinies = D1.nsinies)
               AND cestsin NOT IN (1, 2)
        UNION
        SELECT C2.sperson
          FROM sin_movsiniestro A2, sin_siniestro B2, tomadores C2
         WHERE     A2.nsinies = B2.nsinies
               AND B2.sseguro = C2.sseguro
               AND nmovsin = (SELECT MAX (nmovsin)
                                FROM sin_movsiniestro D2
                               WHERE A2.nsinies = D2.nsinies)
               AND cestsin NOT IN (1, 2);

    ----ALTA SINIESTRALIDAD y SINIESTROS TERMINADOS
    CURSOR cur_sin_siniestralidad (psperson per_personas.sperson%TYPE)
    IS
        SELECT COUNT(0) 
  FROM (SELECT /*+ USE_HASH(C1,B1) ORDERED */ C1.sperson 
          FROM sin_movsiniestro A1, 
               sin_siniestro B1, 
               tomadores C1 
         WHERE A1.nsinies = B1.nsinies 
           AND B1.sseguro = C1.sseguro 
           AND nmovsin = (SELECT MAX(nmovsin) 
                            FROM sin_movsiniestro D1 
                           WHERE A1.nsinies = D1.nsinies) 
           AND cestsin NOT IN (1, 2) 
           AND C1.sperson = psperson 
        UNION 
        SELECT  /*+ USE_HASH(C2,B2) ORDERED */ C2.sperson 
          FROM sin_movsiniestro A2, 
               sin_siniestro B2, 
               tomadores C2 
         WHERE A2.nsinies = B2.nsinies 
           AND B2.sseguro = C2.sseguro 
           AND nmovsin = (SELECT MAX(nmovsin) 
                            FROM sin_movsiniestro D2 
                           WHERE A2.nsinies = D2.nsinies) 
           AND cestsin NOT IN (1, 2) 
           AND C2.sperson = psperson) V ;

    --FIN BUG CONF-186  - Fecha (22/08/2016) - HRE

    -- INI TCS-344 CJMR 15/02/2019
    CURSOR cur_permarcas_fcc (pcmarca agr_marcas.cmarca%TYPE)
    IS
        SELECT pam.sperson
          FROM per_agr_marcas  pam,
               (  SELECT sperson, cmarca, MAX (nmovimi) nmov
                    FROM per_agr_marcas
                GROUP BY sperson, cmarca) max_mov
         WHERE     pam.sperson = max_mov.sperson
               AND pam.cmarca = max_mov.cmarca
               AND pam.nmovimi = max_mov.nmov
               AND (   pam.ctomador = 1
                    OR pam.cintermed = 1
                    OR pam.cconsorcio = 1
                    OR pam.cproveedor = 1)
               AND pam.cmarca = pcmarca;

    CURSOR cur_con_sarlaft IS
        SELECT a.sperson
          FROM per_personas a
         WHERE     cestper = 0
               AND EXISTS
                       (SELECT 'x'
                          FROM datsarlatf b                 -- CJMR 06/03/2019
                         WHERE a.sperson = b.sperson);

    CURSOR cur_sarlaft_desactualizado IS
        SELECT ds.sperson
          FROM datsarlatf  ds,
               (  SELECT sperson, MAX (ssarlaft) sarlaft
                    FROM datsarlatf
                GROUP BY sperson) max_sar
         WHERE     fdiligencia < (SYSDATE - 365)
               AND ds.sperson = max_sar.sperson
               AND ds.ssarlaft = max_sar.sarlaft;

    CURSOR cur_sarlaft_actualizado IS
        SELECT ds.sperson
          FROM datsarlatf  ds,
               (  SELECT sperson, MAX (ssarlaft) sarlaft
                    FROM datsarlatf
                GROUP BY sperson) max_sar
         WHERE     fdiligencia > (SYSDATE - 365)
               AND ds.sperson = max_sar.sperson
               AND ds.ssarlaft = max_sar.sarlaft;

    CURSOR cur_fcc_dev_sucursal IS
        SELECT ds.sperson
          FROM datsarlatf  ds,
               (  SELECT sperson, MAX (ssarlaft) sarlaft
                    FROM datsarlatf
                GROUP BY sperson) max_sar
         WHERE     crutfcc = 4
               AND ds.sperson = max_sar.sperson
               AND ds.ssarlaft = max_sar.sarlaft;

    CURSOR cur_fcc_no_dev_sucursal IS
        SELECT ds.sperson
          FROM datsarlatf  ds,
               (  SELECT sperson, MAX (ssarlaft) sarlaft
                    FROM datsarlatf
                GROUP BY sperson) max_sar
         WHERE     crutfcc <> 4
               AND ds.sperson = max_sar.sperson
               AND ds.ssarlaft = max_sar.sarlaft;

    CURSOR cur_ley_insolvencia IS
        SELECT DISTINCT sperson
          FROM per_agr_marcas
         WHERE     cmarca = '0113'
               AND sperson NOT IN
                       (SELECT sperson
                          FROM lre_personas
                         WHERE     ctiplis = 62
                               AND cclalis = 2
                               AND sperson IS NOT NULL);

   -- FIN TCS-344 CJMR 15/02/2019
   
   -- INI IAXIS-4834 CJMR 06/11/2019
   CURSOR cur_grupos_economicos(p_cmarca agr_marcas.cmarca%TYPE, p_ctiplis lre_personas.ctiplis%TYPE) IS
       SELECT DISTINCT pam.sperson, pam.cmarca
         FROM per_agr_marcas pam
        WHERE pam.cmarca = p_cmarca
          AND pam.ctomador = 1
          AND pam.nmovimi = (SELECT MAX(b.nmovimi)
                           FROM per_agr_marcas b
                          WHERE b.sperson = pam.sperson
                            AND b.cmarca = pam.cmarca)
          AND pam.sperson NOT IN (
                 SELECT sperson
                   FROM lre_personas
                  WHERE ctiplis = p_ctiplis
                    AND cclalis = 2
                    AND sperson IS NOT NULL);
   -- FIN IAXIS-4834 CJMR 06/11/2019

    -- JAS-Bug 9608-24/04/2009
    --Netegem les taules temporals que no corresponguin a simulacions.
    FUNCTION f_borrado_tablas_est
        RETURN NUMBER
    IS
    BEGIN
        FOR c IN (SELECT sseguro
                    FROM estseguros
                   WHERE csituac <> 7)
        LOOP
            pac_alctr126.borrar_tablas_est (c.sseguro);
        END LOOP;

        -- BUG 14804 - 04/06/2010 - ETM - 0014804: CRE800 - Incluir limpieza de tablas temporales
        FOR reg IN (SELECT sperson
                      FROM estper_personas
                     WHERE sseguro NOT IN (SELECT sseguro
                                             FROM estseguros
                                            WHERE csituac = 7))
        LOOP                                        -- BUG16623:DRA:10/11/2010
            --borrar  todas la estructura de personas
            pac_persona.borrar_tablas_estper (reg.sperson);
        END LOOP;

        --FIN BUG 14804 - 04/06/2010 - ETM - 0014804: CRE800 - Incluir limpieza de tablas temporales
        COMMIT;
        p_int_error (
            f_axis_literales (9900986, v_idioma),
            'Proceso borrado EST - ' || f_axis_literales (9901094, v_idioma),
            0,
            NULL);
        RETURN 0;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'Proceso borrado EST - '
                || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
            RETURN 1;
    END;

    --Llencem el proc¿s de revisi¿ de l'inter¿s de les p¿lisses que hagin de renovar l'inter¿s a dia d'avui.
    FUNCTION f_revision_interes_polizas
        RETURN NUMBER
    IS
        vsproces   NUMBER;
    BEGIN
        pac_prod_comu.p_revision_renovacion (f_sysdate,
                                             NULL,
                                             vsproces,
                                             NULL);
        COMMIT;
        p_int_error (
            f_axis_literales (9900986, v_idioma),
               'Proceso revisión interés - '
            || f_axis_literales (9901094, v_idioma),
            0,
            NULL);
        RETURN 0;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'Proceso revisión interés - '
                || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
            RETURN 1;
    END;

    --Trasp¿s de les dades de LOG a les taules temporals
    FUNCTION f_traspaso_log
        RETURN NUMBER
    IS
        vnumerr   NUMBER (8);
    BEGIN
        vnumerr := pac_log.f_traspaso_log;

        IF vnumerr = 0
        THEN
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'Proceso históricos LOG - '
                || f_axis_literales (9901094, v_idioma),
                0,
                NULL);
        ELSE
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'Proceso históricos LOG - '
                || f_axis_literales (9901093, v_idioma)
                || ' - numerr: '
                || vnumerr,
                2,
                NULL);
        END IF;

        RETURN vnumerr;
    EXCEPTION
        WHEN OTHERS
        THEN
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'Proceso históricos LOG - '
                || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
            RETURN 1;
    END;

    -----------------------------------------------------------------------------
    -- Mantis 9692.#6.i.
    FUNCTION f_traspas_int_his
        RETURN NUMBER
    IS
        vnumerr   NUMBER (8);
    BEGIN
        vnumerr := pac_con.f_traspaso_int_his;

        IF vnumerr = 0
        THEN
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'Proceso históricos INTERFASES - '
                || f_axis_literales (9901094, v_idioma),
                0,
                NULL);
        ELSE
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'Proceso históricos INTERFASES - '
                || f_axis_literales (9901093, v_idioma)
                || ' - numerr: '
                || vnumerr,
                2,
                NULL);
        END IF;

        RETURN (vnumerr);
    EXCEPTION
        WHEN OTHERS
        THEN
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'Proceso históricos INTERFASES - '
                || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
            RETURN (1);
    END;

    -- Mantis 9692.#6.f.
    FUNCTION f_traspas_histaberror
        RETURN NUMBER
    IS
        vdias   NUMBER;
    BEGIN
        --vdias := f_parempresa_t('DIAS_TABERROR', empresa);  02/12/2009  Bug 11835   MCA 02/12/2009
        /*
              Se comenta el codigo por la modificacion de tab_error a vista durante las pruebas. Se eliminara cuando este probado


          vdias := pac_parametros.f_parempresa_n(empresa, 'DIAS_TABERROR');

            INSERT INTO histab_error
               (SELECT *
                  FROM tab_error
                 WHERE TRUNC(ferror) < TRUNC(f_sysdate) - vdias);

            DELETE      tab_error
                  WHERE TRUNC(ferror) < TRUNC(f_sysdate) - vdias;

            DELETE      control_error
                  WHERE TRUNC(fecha) < TRUNC(f_sysdate) - vdias;

        COMMIT;*/
        RETURN 0;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'Proceso Traspaso a HISTAB_ERROR - '
                || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
            RETURN 1;
    END;

    -----------------------------------------------------------------------------

    -- BUG 14804 - 04/06/2010 - ETM - 0014804: CRE800 - Incluir limpieza de tablas temporales

    /*************************************************************************
       FUNCTION f_borrado_tablas_temp
       Borra todas las tablas temporales que hay en la tabla Tab_temporales
       return: codigo de error

    *************************************************************************/
    FUNCTION f_borrado_tablas_temp
        RETURN NUMBER
    IS
    BEGIN
        FOR c IN (SELECT ttabla, twhere FROM tab_temporales)
        LOOP
            IF c.twhere IS NOT NULL
            THEN
                EXECUTE IMMEDIATE   'delete from '
                                 || c.ttabla
                                 || ' where '
                                 || c.twhere;
            ELSE
                EXECUTE IMMEDIATE 'TRUNCATE table ' || c.ttabla;
            END IF;
        END LOOP;

        COMMIT;
        p_int_error (
            f_axis_literales (9900986, v_idioma),
            'Proceso borrado TEMP - ' || f_axis_literales (9901094, v_idioma),
            0,
            NULL);
        RETURN 0;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'Proceso borrado TEMP - '
                || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
            RETURN 1;
    END;

    --FIN BUG 14804 - 04/06/2010 - ETM - 0014804: CRE800 - Incluir limpieza de tablas temporales
    -----------------------------------------------------------------

    /*************************************************************************
       FUNCTION f_actualiza_garanprored
       Función que actualiza los datos de la tabla GARANPRORED
       return: codigo de error

    *************************************************************************/
    FUNCTION f_actualiza_garanprored (psproduc   IN NUMBER DEFAULT NULL,
                                      pcactivi   IN NUMBER DEFAULT NULL,
                                      pcgarant   IN NUMBER DEFAULT NULL,
                                      pfmovini   IN DATE DEFAULT f_sysdate)
        RETURN NUMBER
    IS
        vnumerr     NUMBER;
        vtproceso   VARCHAR2 (200) := 'Proceso actualiza GARANPRORED';
    BEGIN
        vnumerr :=
            pac_mntprod.f_act_garanprored (psproduc,
                                           pcactivi,
                                           pcgarant,
                                           pfmovini);

        IF vnumerr <> 0
        THEN
            ROLLBACK;
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                vtproceso || ' - ' || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
            RETURN 1;
        END IF;

        COMMIT;
        p_int_error (
            f_axis_literales (9900986, v_idioma),
            vtproceso || ' - ' || f_axis_literales (9901094, v_idioma),
            0,
            NULL);
        RETURN 0;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                vtproceso || ' - ' || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
            RETURN 1;
    END;

    /*************************************************************************
       FUNCTION f_actualiza_antiguedad
       Función que actualiza la antiguedad de las personas
       return: codigo de error

    *************************************************************************/
    -- Bug 25542 - APD - 14/01/2013 - se crea la funcion
    FUNCTION f_actualiza_antiguedad (psperson   IN NUMBER DEFAULT NULL,
                                     pcagrupa   IN NUMBER DEFAULT NULL,
                                     pfecha     IN DATE DEFAULT NULL)
        RETURN NUMBER
    IS
        vnumerr     NUMBER;
        vtproceso   VARCHAR2 (200) := 'Proceso actualiza ANTIGUEDAD PERSONA';
        vsproces    NUMBER;
    BEGIN
        pac_persona.p_proceso_antiguedad (psperson,
                                          pcagrupa,
                                          pfecha,
                                          vsproces);
        COMMIT;
        p_int_error (
            f_axis_literales (9900986, v_idioma),
            vtproceso || ' - ' || f_axis_literales (9901094, v_idioma),
            0,
            NULL);
        RETURN 0;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                vtproceso || ' - ' || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
            RETURN 1;
    END f_actualiza_antiguedad;

    -- fin Bug 25542 - APD - 14/01/2013 - se crea la funcion

    -----------------------------------------------------------------
    -- Fi -JAS-Bug 9608-24/04/2009

    --INI - RABQ - IAXIS-3200
    FUNCTION f_fuera_vigencia_sim (psseguro IN NUMBER)
        RETURN NUMBER
    IS
        vftarifa   DATE;
        vsproduc   NUMBER;
    BEGIN
        SELECT sproduc, fefecto
          INTO vsproduc, vftarifa
          FROM seguros
         WHERE sseguro = psseguro;

        --dbms_output.put_line('f_parproductos_v (vsproduc, ''VIG_SIMUL'')'||f_parproductos_v (vsproduc, 'VIG_SIMUL')||' '||vsproduc);
        IF NVL (f_parproductos_v (vsproduc, 'VIG_SIMUL'), 0) > 0
        THEN
            IF   TRUNC (vftarifa)
               + NVL (f_parproductos_v (vsproduc, 'VIG_SIMUL'), 0) <
               f_sysdate
            THEN
                DBMS_OUTPUT.put_line ('vftarifa ' || vftarifa);
                RETURN 1;
            END IF;
        END IF;

        RETURN 0;
    EXCEPTION
        WHEN OTHERS
        THEN
            RETURN 0;
    END f_fuera_vigencia_sim;

    --FIN - RABQ - IAXIS-3200
    PROCEDURE p_borrado_simulaciones
    IS
    BEGIN
        FOR c IN (SELECT sseguro
                    FROM estseguros es
                   WHERE es.csituac = 7)
        LOOP
            IF f_fuera_vigencia_sim (c.sseguro) = 1
            THEN
                pac_alctr126.borrar_tablas_est (c.sseguro);
            END IF;
        END LOOP;

        FOR reg IN (SELECT sperson, sseguro
                      FROM estper_personas
                     WHERE sseguro IN (SELECT sseguro
                                         FROM estseguros
                                        WHERE csituac = 7))
        LOOP
            IF f_fuera_vigencia_sim (reg.sseguro) = 1
            THEN
                --borrar  todas la estructura de personas
                pac_persona.borrar_tablas_estper (reg.sperson, 1);
            END IF;
        END LOOP;

        FOR c IN (SELECT sseguro, nsolici
                    FROM seguros es
                   WHERE es.csituac = 4)
        LOOP
            IF f_fuera_vigencia_sim (c.sseguro) = 1
            THEN
                DBMS_OUTPUT.put_line (c.sseguro || ' ' || c.nsolici);
                pac_alctr126.borrar_tablas (c.sseguro);
                DBMS_OUTPUT.put_line (
                    c.sseguro || ' borra tabla ' || c.nsolici);
            END IF;
        END LOOP;

        COMMIT;
        p_int_error (
            f_axis_literales (9900986, v_idioma),
               'Proceso borrado SIMULACIONES EST - '
            || f_axis_literales (9901094, v_idioma),
            0,
            NULL);
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'Proceso borrado SIMULACIONES  EST - '
                || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
    END p_borrado_simulaciones;

    FUNCTION f_traspaso_persistencia_simul
        RETURN NUMBER
    IS
        vnumerr    NUMBER;
        mensajes   t_iax_mensajes := t_iax_mensajes ();
    BEGIN
        FOR i IN (SELECT es.sseguro
                    FROM estseguros es, persistencia_simul ps
                   WHERE es.sseguro = ps.sseguro AND es.csituac = 4)
        LOOP
            vnumerr :=
                pk_simulaciones.f_actualizar_persistencia (i.sseguro,
                                                           mensajes);
        END LOOP;

        RETURN 0;
    EXCEPTION
        WHEN OTHERS
        THEN
            RETURN 0;
    END f_traspaso_persistencia_simul;

    -- Bug 28821/176979 - 10/06/2014 - AMC
    PROCEDURE p_traspaso_newsuple
    IS
    BEGIN
        FOR reg IN (SELECT DISTINCT cconfig
                      FROM pds_supl_config
                     WHERE cconfig NOT IN (SELECT cconfig
                                             FROM pds_supl_cod_config
                                            WHERE cconsupl = 'SUPL_BBDD'))
        LOOP
            BEGIN
                INSERT INTO pds_supl_cod_config
                     VALUES ('SUPL_BBDD', reg.cconfig);
            EXCEPTION
                WHEN DUP_VAL_ON_INDEX
                THEN
                    NULL;
            END;
        END LOOP;

        COMMIT;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'p_traspaso_newsuple - '
                || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
    END p_traspaso_newsuple;

    -- Bug 32062/181826 - 13/08/2014 - NSS
    FUNCTION f_devoluciones
        RETURN NUMBER
    IS
        vnumerr     NUMBER;
        vtproceso   VARCHAR2 (200) := 'Proceso devoluciones';
    BEGIN
        --IF NVL(pac_parametros.f_parempresa_n(empresa, 'DOMIS_IBAN_XML'), 0) = 1 THEN
        --Bug 33346   Se ha de realizar el tratamiento de acciones para todos los clientes
        vnumerr := pac_devolu.f_exec_devolu (v_idioma);

        IF vnumerr <> 0
        THEN
            ROLLBACK;
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                vtproceso || ' - ' || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
            RETURN 1;
        END IF;

        --END IF;
        RETURN 0;
    EXCEPTION
        WHEN OTHERS
        THEN
            ROLLBACK;
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                vtproceso || ' - ' || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
            RETURN 1;
    END f_devoluciones;

    --INI BUG CONF 304 - Desarrollo INT06 (CÓDIGO BRIDGER) - DMCOTTE
    --función que genera los reportes bridger
    FUNCTION f_fichero_bridger (pempres IN NUMBER, ptipo IN NUMBER)
        RETURN VARCHAR2
    IS
        fichero         UTL_FILE.file_type;
        rutafich        VARCHAR2 (255);
        linea           VARCHAR2 (500);
        /* Cambios para incidente GCRS19 : Start */
        linea_bridger   VARCHAR2 (500);
        /* Cambios para incidente GCRS19 : End */
        nomfich         VARCHAR2 (500);
        mensajes        t_iax_mensajes;
    BEGIN
        rutafich := f_parinstalacion_t ('INFORMES');

        IF ptipo IS NOT NULL
        THEN
            IF ptipo = 1
            THEN
                /* Cambios para incidente GCRS19 : Start */
                nomfich :=
                       'Bridger_'
                    || TO_CHAR (f_sysdate, 'yyyymmdd_hh24miss')
                    || '.csv';
                fichero := UTL_FILE.fopen (rutafich, nomfich, 'w');
                linea_bridger :=
                    'ESTADO|IDENTIFICACION|NOMBRE|TIPO|TIPO_PERSONA|DIRECCION|CIUDAD|DEPARTAMENTO|ZIPCODE|PAIS|UNIQUE_IDENTIFIER';
                UTL_FILE.put_line (fichero, linea_bridger);
            ELSE
                nomfich :=
                       'Transacciones_'
                    || TO_CHAR (f_sysdate, 'yyyymmdd_hh24miss')
                    || '.txt';
                fichero := UTL_FILE.fopen (rutafich, nomfich, 'w');
                linea :=
                    'ESTADO|IDENTIFICACION|NOMBRE|TIPO|TIPO_PERSONA|DIRECCION|CIUDAD|DEPARTAMENTO|ZIPCODE|PAIS';
                UTL_FILE.put_line (fichero, linea);
            END IF;
        /* Cambios para incidente GCRS19 : End */
        END IF;

        /* Cursor diario */
        IF ptipo = 1
        THEN
            FOR aux
                IN (               /* Cambios para incidente GCRS19 : Start */
                      SELECT MAX (t1.estado)                    estado,
                             (t1.identificacion)                identificacion,
                             MAX (TRIM (UPPER (t1.nombre)))     nombre,
                             MAX (t1.tipo)                      tipo,
                             MAX (t1.tipo_persona)              tipo_persona,
                             MAX (t1.direccion)                 direccion,
                             MAX (t1.ciudad)                    ciudad,
                             MAX (t1.departamento)              departamento,
                             MAX (t1.zipcode)                   zipcode,
                             MAX (t1.pais)                      pais
                        FROM (SELECT DISTINCT
                                     DECODE (NVL (s.csituac, 0),
                                             0, 'ACTIVO',
                                             'INACTIVO')
                                         estado,
                                     p.nnumide
                                         identificacion,
                                        DECODE (
                                            p.ctipper,
                                            1, NVL (perdet.tapelli1 || ' ',
                                                    ' '),
                                            2, NVL (perdet.tapelli1 || ' ',
                                                    ' '),
                                            ' ')
                                     || NVL (perdet.tapelli2 || ' ', ' ')
                                     || NVL (perdet.tnombre1 || ' ', ' ')
                                     || NVL (perdet.tnombre2, ' ')
                                         nombre,
                                     pac_isqlfor_conf.f_roles_persona (
                                         p.sperson)
                                         tipo,
                                     DECODE (
                                         (SELECT tatribu
                                            FROM detvalores
                                           WHERE     cvalor = 85
                                                 AND catribu = p.ctipper
                                                 AND cidioma = 8),
                                         'Natural', 'N',
                                         'Jurídica', 'J')
                                         tipo_persona,
                                     REPLACE (t.tdomici, '''', '')
                                         direccion,
                                     INITCAP (
                                         (SELECT tpoblac
                                            FROM poblaciones
                                           WHERE (cprovin, cpoblac) =
                                                 (SELECT cprovin, cpoblac
                                                    FROM per_direcciones
                                                   WHERE     sperson =
                                                             p.sperson
                                                         AND cdomici =
                                                             t.cdomici)))
                                         ciudad,
                                     pac_isqlfor.f_provincia (t.sperson,
                                                              t.cdomici)
                                         departamento,
                                     t.cpostal
                                         zipcode,
                                     pac_isqlfor.f_dirpais (t.sperson,
                                                            t.cdomici,
                                                            8)
                                         pais
                                FROM per_personas   p,
                                     per_direcciones t,
                                     per_detper     perdet,
                                     seguros        s,
                                     tomadores      tom
                               WHERE     p.sperson = t.sperson
                                     AND perdet.sperson = p.sperson
                                     AND p.sperson = tom.sperson
                                     AND tom.sseguro = s.sseguro
                                     AND s.creteni = 0
                                     AND s.csituac = 0
                                     AND t.cdomici =
                                         (SELECT MAX (t1.cdomici)
                                            FROM per_direcciones t1
                                           WHERE t1.sperson = t.sperson)
                                     AND TRUNC (s.femisio) >= TRUNC (f_sysdate)
                              UNION
                              SELECT DISTINCT
                                     DECODE (NVL (s.csituac, 0),
                                             0, 'ACTIVO',
                                             'INACTIVO')
                                         estado,
                                     p.nnumide
                                         identificacion,
                                        DECODE (
                                            p.ctipper,
                                            1, NVL (perdet.tapelli1 || ' ',
                                                    ' '),
                                            2, NVL (perdet.tapelli1 || ' ',
                                                    ' '),
                                            ' ')
                                     || NVL (perdet.tapelli2 || ' ', ' ')
                                     || NVL (perdet.tnombre1 || ' ', ' ')
                                     || NVL (perdet.tnombre2, ' ')
                                         nombre,
                                     pac_isqlfor_conf.f_roles_persona (
                                         p.sperson)
                                         tipo,
                                     DECODE (
                                         (SELECT tatribu
                                            FROM detvalores
                                           WHERE     cvalor = 85
                                                 AND catribu = p.ctipper
                                                 AND cidioma = 8),
                                         'Natural', 'N',
                                         'Jurídica', 'J')
                                         tipo_persona,
                                     REPLACE (t.tdomici, '''', '')
                                         direccion,
                                     INITCAP (
                                         (SELECT tpoblac
                                            FROM poblaciones
                                           WHERE (cprovin, cpoblac) =
                                                 (SELECT cprovin, cpoblac
                                                    FROM per_direcciones
                                                   WHERE     sperson =
                                                             p.sperson
                                                         AND cdomici =
                                                             t.cdomici)))
                                         ciudad,
                                     pac_isqlfor.f_provincia (t.sperson,
                                                              t.cdomici)
                                         departamento,
                                     t.cpostal
                                         zipcode,
                                     pac_isqlfor.f_dirpais (t.sperson,
                                                            t.cdomici,
                                                            8)
                                         pais
                                FROM per_personas   p,
                                     per_direcciones t,
                                     per_detper     perdet,
                                     seguros        s,
                                     asegurados     a
                               WHERE     p.sperson = t.sperson
                                     AND perdet.sperson = p.sperson
                                     AND p.sperson = a.sperson
                                     AND a.sseguro = s.sseguro
                                     AND s.creteni = 0
                                     AND s.csituac = 0
                                     AND t.cdomici =
                                         (SELECT MAX (t1.cdomici)
                                            FROM per_direcciones t1
                                           WHERE t1.sperson = t.sperson)
                                     AND TRUNC (s.femisio) >= TRUNC (f_sysdate)
                              UNION
                              SELECT DISTINCT
                                     DECODE (NVL (s.csituac, 0),
                                             0, 'ACTIVO',
                                             'INACTIVO')
                                         estado,
                                     p.nnumide
                                         identificacion,
                                        DECODE (
                                            p.ctipper,
                                            1, NVL (perdet.tapelli1 || ' ',
                                                    ' '),
                                            2, NVL (perdet.tapelli1 || ' ',
                                                    ' '),
                                            ' ')
                                     || NVL (perdet.tapelli2 || ' ', ' ')
                                     || NVL (perdet.tnombre1 || ' ', ' ')
                                     || NVL (perdet.tnombre2, ' ')
                                         nombre,
                                     pac_isqlfor_conf.f_roles_persona (
                                         p.sperson)
                                         tipo,
                                     DECODE (
                                         (SELECT tatribu
                                            FROM detvalores
                                           WHERE     cvalor = 85
                                                 AND catribu = p.ctipper
                                                 AND cidioma = 8),
                                         'Natural', 'N',
                                         'Jurídica', 'J')
                                         tipo_persona,
                                     REPLACE (t.tdomici, '''', '')
                                         direccion,
                                     INITCAP (
                                         (SELECT tpoblac
                                            FROM poblaciones
                                           WHERE (cprovin, cpoblac) =
                                                 (SELECT cprovin, cpoblac
                                                    FROM per_direcciones
                                                   WHERE     sperson =
                                                             p.sperson
                                                         AND cdomici =
                                                             t.cdomici)))
                                         ciudad,
                                     pac_isqlfor.f_provincia (t.sperson,
                                                              t.cdomici)
                                         departamento,
                                     t.cpostal
                                         zipcode,
                                     pac_isqlfor.f_dirpais (t.sperson,
                                                            t.cdomici,
                                                            8)
                                         pais
                                FROM per_personas   p,
                                     per_direcciones t,
                                     per_detper     perdet,
                                     seguros        s,
                                     agentes        ag
                               WHERE     p.sperson = t.sperson
                                     AND perdet.sperson = p.sperson
                                     AND p.sperson = ag.sperson
                                     AND ag.cagente = s.cagente
                                     AND s.creteni = 0
                                     AND s.csituac = 0
                                     AND ag.cactivo = 1
                                     AND t.cdomici =
                                         (SELECT MAX (t1.cdomici)
                                            FROM per_direcciones t1
                                           WHERE t1.sperson = t.sperson)
                                     AND TRUNC (s.femisio) >= TRUNC (f_sysdate))
                             t1
                    GROUP BY t1.identificacion)
            LOOP
                linea_bridger :=
                       aux.estado
                    || '|'
                    || aux.identificacion
                    || '|'
                    || aux.nombre
                    || '|'
                    || aux.tipo
                    || '|'
                    || aux.tipo_persona
                    || '|'
                    || aux.direccion
                    || '|'
                    || aux.ciudad
                    || '|'
                    || aux.departamento
                    || '|'
                    || aux.zipcode
                    || '|'
                    || aux.pais
                    || '|';
                UTL_FILE.put_line (fichero, linea_bridger);
            /* Cambios para incidente GCRS19 : End */
            END LOOP;
        ELSE
            /*TCS revisión 24/10/2019*/
            FOR aux
                IN (SELECT DECODE (p.cestper,
                                   0, ' ',
                                   ff_desvalorfijo (13, 8, p.cestper))
                               estado,
                           p.nnumide
                               identificacion,
                              DECODE (p.ctipper,
                                      1, NVL (perdet.tapelli1, ' '),
                                      2, NVL (perdet.tapelli1, ' '),
                                      ' ')
                           || NVL (perdet.tapelli2, ' ')
                           || NVL (perdet.tnombre1, ' ')
                           || NVL (perdet.tnombre2, ' ')
                               nombre,
                           pac_isqlfor_conf.f_roles_persona (p.sperson)
                               tipo,
                           DECODE (
                               (SELECT tatribu
                                  FROM detvalores
                                 WHERE     cvalor = 85
                                       AND catribu = p.ctipper
                                       AND cidioma = 8),
                               'Natural', 'N',
                               'Jurídica', 'J')
                               tipo_persona,
                           t.cdomici
                               direccion,
                           INITCAP (
                               (SELECT tpoblac
                                  FROM poblaciones
                                 WHERE (cprovin, cpoblac) =
                                       (SELECT cprovin, cpoblac
                                          FROM per_direcciones
                                         WHERE     sperson = p.sperson
                                               AND cdomici = t.cdomici)))
                               ciudad,
                           pac_isqlfor.f_provincia (t.sperson, t.cdomici)
                               departamento,
                           t.cpostal
                               zipcode,
                           pac_isqlfor.f_dirpais (t.sperson, t.cdomici, 8)
                               pais
                      FROM per_personas     p,
                           per_direcciones  t,
                           per_detper       perdet,
                           pagosini         i
                     WHERE     p.sperson = t.sperson
                           AND perdet.sperson = p.sperson
                           AND p.sperson = i.sperson
                           AND TRUNC (i.fefepag) = TRUNC (f_sysdate - 1)
                    UNION
                    SELECT DECODE (p.cestper,
                                   0, ' ',
                                   ff_desvalorfijo (13, 8, p.cestper))
                               estado,
                           p.nnumide
                               identificacion,
                              DECODE (p.ctipper,
                                      1, NVL (perdet.tapelli1, ' '),
                                      2, NVL (perdet.tapelli1, ' '),
                                      ' ')
                           || NVL (perdet.tapelli2, ' ')
                           || NVL (perdet.tnombre1, ' ')
                           || NVL (perdet.tnombre2, ' ')
                               nombre,
                           pac_isqlfor_conf.f_roles_persona (p.sperson)
                               tipo,
                           DECODE (
                               (SELECT tatribu
                                  FROM detvalores
                                 WHERE     cvalor = 85
                                       AND catribu = p.ctipper
                                       AND cidioma = 8),
                               'Natural', 'N',
                               'Jurídica', 'J')
                               tipo_persona,
                           t.cdomici
                               direccion,
                           INITCAP (
                               (SELECT tpoblac
                                  FROM poblaciones
                                 WHERE (cprovin, cpoblac) =
                                       (SELECT cprovin, cpoblac
                                          FROM per_direcciones
                                         WHERE     sperson = p.sperson
                                               AND cdomici = t.cdomici)))
                               ciudad,
                           pac_isqlfor.f_provincia (t.sperson, t.cdomici)
                               departamento,
                           t.cpostal
                               zipcode,
                           pac_isqlfor.f_dirpais (t.sperson, t.cdomici, 8)
                               pais
                      FROM per_personas     p,
                           per_direcciones  t,
                           per_detper       perdet,
                           pagosini         i
                     WHERE     p.sperson = t.sperson
                           AND perdet.sperson = p.sperson
                           AND p.sperson = i.sperson
                           AND TRUNC (i.fefepag) = TRUNC (f_sysdate - 1)
                    UNION
                    SELECT DECODE (p.cestper,
                                   0, '',
                                   ff_desvalorfijo (13, 8, p.cestper))
                               estado,
                           p.nnumide
                               identificacion,
                              DECODE (p.ctipper,
                                      1, NVL (perdet.tapelli1, ' '),
                                      2, NVL (perdet.tapelli1, ' '),
                                      ' ')
                           || NVL (perdet.tapelli2, ' ')
                           || NVL (perdet.tnombre1, ' ')
                           || NVL (perdet.tnombre2, ' ')
                               nombre,
                           pac_isqlfor_conf.f_roles_persona (p.sperson)
                               tipo,
                           DECODE (
                               (SELECT tatribu
                                  FROM detvalores
                                 WHERE     cvalor = 85
                                       AND catribu = p.ctipper
                                       AND cidioma = 8),
                               'Natural', 'N',
                               'Jurídica', 'J')
                               tipo_persona,
                           t.cdomici
                               direccion,
                           INITCAP (
                               (SELECT tpoblac
                                  FROM poblaciones
                                 WHERE (cprovin, cpoblac) =
                                       (SELECT cprovin, cpoblac
                                          FROM per_direcciones
                                         WHERE     sperson = p.sperson
                                               AND cdomici = t.cdomici)))
                               ciudad,
                           pac_isqlfor.f_provincia (t.sperson, t.cdomici)
                               departamento,
                           t.cpostal
                               zipcode,
                           pac_isqlfor.f_dirpais (t.sperson, t.cdomici, 8)
                               pais
                      FROM per_personas     p,
                           per_direcciones  t,
                           per_detper       perdet,
                           recibos          r
                     WHERE     p.sperson = t.sperson
                           AND perdet.sperson = p.sperson
                           AND r.sperson = p.sperson
                           AND TRUNC (r.femisio) = TRUNC (f_sysdate - 1)
                    UNION
                    SELECT DECODE (p.cestper,
                                   0, ' ',
                                   ff_desvalorfijo (13, 8, p.cestper))
                               estado,
                           p.nnumide
                               identificacion,
                              DECODE (p.ctipper,
                                      1, NVL (perdet.tapelli1, ' '),
                                      2, NVL (perdet.tapelli1, ' '),
                                      ' ')
                           || NVL (perdet.tapelli2, ' ')
                           || NVL (perdet.tnombre1, ' ')
                           || NVL (perdet.tnombre2, ' ')
                               nombre,
                           pac_isqlfor_conf.f_roles_persona (p.sperson)
                               tipo,
                           DECODE (
                               (SELECT tatribu
                                  FROM detvalores
                                 WHERE     cvalor = 85
                                       AND catribu = p.ctipper
                                       AND cidioma = 8),
                               'Natural', 'N',
                               'Jurídica', 'J')
                               tipo_persona,
                           t.cdomici
                               direccion,
                           INITCAP (
                               (SELECT tpoblac
                                  FROM poblaciones
                                 WHERE (cprovin, cpoblac) =
                                       (SELECT cprovin, cpoblac
                                          FROM per_direcciones
                                         WHERE     sperson = p.sperson
                                               AND cdomici = t.cdomici)))
                               ciudad,
                           pac_isqlfor.f_provincia (t.sperson, t.cdomici)
                               departamento,
                           t.cpostal
                               zipcode,
                           pac_isqlfor.f_dirpais (t.sperson, t.cdomici, 8)
                               pais
                      FROM per_personas     p,
                           per_direcciones  t,
                           per_detper       perdet,
                           ctactes          c,
                           liquidacab       l
                     WHERE     p.sperson = t.sperson
                           AND perdet.sperson = p.sperson
                           AND c.cconcta = 99
                           AND c.sproces = l.sproliq
                           AND TRUNC (l.fliquid) = TRUNC (f_sysdate - 1)
                    UNION
                    SELECT DECODE (p.cestper,
                                   0, ' ',
                                   ff_desvalorfijo (13, 8, p.cestper))
                               estado,
                           p.nnumide
                               identificacion,
                              DECODE (p.ctipper,
                                      1, NVL (perdet.tapelli1, ' '),
                                      2, NVL (perdet.tapelli1, ' '),
                                      ' ')
                           || NVL (perdet.tapelli2, ' ')
                           || NVL (perdet.tnombre1, ' ')
                           || NVL (perdet.tnombre2, ' ')
                               nombre,
                           pac_isqlfor_conf.f_roles_persona (p.sperson)
                               tipo,
                           DECODE (
                               (SELECT tatribu
                                  FROM detvalores
                                 WHERE     cvalor = 85
                                       AND catribu = p.ctipper
                                       AND cidioma = 8),
                               'Natural', 'N',
                               'Jurídica', 'J')
                               tipo_persona,
                           t.cdomici
                               direccion,
                           INITCAP (
                               (SELECT tpoblac
                                  FROM poblaciones
                                 WHERE (cprovin, cpoblac) =
                                       (SELECT cprovin, cpoblac
                                          FROM per_direcciones
                                         WHERE     sperson = p.sperson
                                               AND cdomici = t.cdomici)))
                               ciudad,
                           pac_isqlfor.f_provincia (t.sperson, t.cdomici)
                               departamento,
                           t.cpostal
                               zipcode,
                           pac_isqlfor.f_dirpais (t.sperson, t.cdomici, 8)
                               pais
                      FROM per_personas     p,
                           per_direcciones  t,
                           per_detper       perdet,
                           pagosreaxl       xl,
                           sin_siniestro    s
                     WHERE     p.sperson = t.sperson
                           AND perdet.sperson = p.sperson
                           AND s.dec_sperson = p.sperson
                           AND xl.nsinies = s.nsinies
                           AND TRUNC (xl.fefecto) = TRUNC (f_sysdate - 1))
            LOOP
                linea :=
                       aux.estado
                    || '|'
                    || aux.identificacion
                    || '|'
                    || aux.nombre
                    || '|'
                    || aux.tipo
                    || '|'
                    || aux.tipo_persona
                    || '|'
                    || aux.direccion
                    || '|'
                    || aux.ciudad
                    || '|'
                    || aux.departamento
                    || '|'
                    || aux.zipcode
                    || '|'
                    || aux.pais;
                UTL_FILE.put_line (fichero, linea);
            END LOOP;
        END IF;

        IF UTL_FILE.is_open (fichero)
        THEN
            UTL_FILE.fclose (fichero);
        END IF;

        RETURN nomfich;
    EXCEPTION
        WHEN OTHERS
        THEN
            pac_iobj_mensajes.p_tratarmensaje (
                mensajes,
                'pac_isqlfor_conf.f_fichero_bridger',
                1000001,
                1,
                'pempres: ' || pempres || ' ptipo:' || ptipo,
                psqcode   => SQLCODE,
                psqerrm   => SQLERRM);
            p_control_error ('DMC',
                             'f_fichero_bridger',
                             '2- ptipo: ' || ptipo || ' nomfich:' || nomfich);

            IF UTL_FILE.is_open (fichero)
            THEN
                UTL_FILE.fclose (fichero);
            END IF;

            RETURN NULL;
    END f_fichero_bridger;
--FIN BUG CONF 304 - Desarrollo INT06 (CÓDIGO BRIDGER) - DMCOTTE
BEGIN
    p_int_error (f_axis_literales (9900986, v_idioma),
                 'PROCESOS NOCTURNOS INICIO - Fecha de inicio ' || f_sysdate,
                 0,
                 NULL);
    -- Bug 27986/151387 - 29/08/2013 - AMC
    pac_parpnocturnos.p_inicializa;

    -----------------------------------------------------------------------------

    -- AMC-Bug 9608-21/04/2009
    --Inicialització del context
    BEGIN
        empresa := f_parinstalacion_n ('EMPRESADEF');
        verror :=
            pac_contexto.f_inicializarctx (
                pac_parametros.f_parempresa_t (empresa, 'USER_BBDD'));

        IF verror > 0
        THEN
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'Inicializar contexto - '
                || f_axis_literales (9901093, v_idioma),
                2,
                verror);
            RETURN;
        END IF;

        v_idioma := pac_contexto.f_contextovalorparametro ('IAX_IDIOMA');
    EXCEPTION
        WHEN OTHERS
        THEN
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'Inicializar contexto - '
                || f_axis_literales (9901093, v_idioma),
                2,
                SQLERRM);
            RETURN;
    END;

    --Traspasamos las simulaciones que se han quedado en persistencia_simul con csituac = 4 en estseguros
    verror := f_traspaso_persistencia_simul;
    --Esborrem les taules EST que no corresponguin a simulacions.
    verror := f_borrado_tablas_est;
    -- BUG 14804 - 04/06/2010 - ETM - 0014804: CRE800 - Incluir limpieza de tablas temporales
    verror := f_borrado_tablas_temp;
    --FIN BUG 14804 - 04/06/2010 - ETM - 0014804: CRE800 - Incluir limpieza de tablas temporales

    -- Proceso borrado simulaciones fuera de vigencia
    p_borrado_simulaciones;
    --bug 32062/181826:NSS:13/08/2014
    -- Proceso devoluciones
    verror := f_devoluciones;
    --fin bug 32062/181826:NSS:13/08/2014

    --Llencem el proc¿s de revisi¿ d'inter¿s de les p¿lisses que han de renovar.
    --verror := f_revision_interes_polizas;
    -- vsubfi := f_parempresa_t('SUFIJO_EMP', empresa);  Bug 11835   MCA 02/12/2009
    vsubfi := pac_parametros.f_parempresa_t (empresa, 'SUFIJO_EMP');
    ss := 'BEGIN ' || ' P_PROCESOS_NOCTURNOS_' || vsubfi || ';' || 'END;';

    IF DBMS_SQL.is_open (v_cursor)
    THEN
        DBMS_SQL.close_cursor (v_cursor);
    END IF;

    v_cursor := DBMS_SQL.open_cursor;
    DBMS_SQL.parse (v_cursor, ss, DBMS_SQL.native);
    v_filas := DBMS_SQL.EXECUTE (v_cursor);

    IF DBMS_SQL.is_open (v_cursor)
    THEN
        DBMS_SQL.close_cursor (v_cursor);
    END IF;

    --Trasp¿s de les dades de LOG.
    verror := f_traspaso_log;
    -- Fi -AMC-Bug 9608-21/04/2009

    -- Mantis 9692.#6.i.Trasp¿s de dades de interfase a hist¿ric ( int -> hisint).
    verror := f_traspas_int_his;
    -- Mantis 9692.#6.f.

    -- Bug 11219 - 21/09/2009 - AMC
    verror := f_traspas_histaberror;

    --Fi Bug 11219 - 21/09/2009 - AMC

    --{comprobación de no exixten prop. de alta sin motivos de retención}
    FOR c IN prop_de_alta
    LOOP
        p_int_error (
            f_axis_literales (9900986, v_idioma),
               'PROP. DE ALTA SIN MOTIVOS DE RETENCIÓN - PÓLIZA : '
            || c.npoliza
            || '-'
            || c.ncertif,
            1,
            NULL);
    END LOOP;

    --{comprobación de polizas retenidas por errores de sistma}
    FOR c IN error_sistema
    LOOP
        p_int_error (
            f_axis_literales (9900986, v_idioma),
               'POL. RETENIDAS ERROR DE SISTEMA - POLIZA : '
            || c.npoliza
            || '-'
            || c.ncertif,
            1,
            NULL);
    END LOOP;

    --{comprobaci¿n que no existen vinculados sin el contrato}
    FOR c IN prestamos
    LOOP
        p_int_error (
            f_axis_literales (9900986, v_idioma),
               'POL. DE VINCULADOS SIN CONTRATO VINCULADO - POLIZA : '
            || c.npoliza
            || '-'
            || c.ncertif,
            1,
            NULL);
    END LOOP;

    FOR c IN nduraci
    LOOP
        p_int_error (
            f_axis_literales (9900986, v_idioma),
               'DURACION DE LA PÓLIZA INCORRECTA - POLIZA : '
            || c.npoliza
            || '-'
            || c.ncertif,
            1,
            NULL);
    END LOOP;

    --IAXIS-3631  -- ECP -- 14/05/2019
    --{proceso diario de baja de p¿lizas}
    /*BEGIN
       pac_anulacion.p_baja_automatico_vto(NULL, NULL, TRUNC(f_sysdate), p_proceso);
       p_int_error(' Proceso automático de anulación', ' finalizado correctamente', 1, 6);
    EXCEPTION
       WHEN OTHERS THEN
          --{Controlamos posibles errores en el proceso nocturno}
          p_int_error(' Proceso automático de anulación', 'NO FINALIZADO', 1, 6);
    END;*/

    --INI SGM IAXIS 3641 CARGUE DE ARCHIVO DE PROVEEDORES
    BEGIN
        v_contexto :=
            pac_contexto.f_inicializarctx (
                pac_parametros.f_parempresa_t (24, 'USER_BBDD'));
        vnum_err := pac_cargas_conf.f_anota_leearchivos_carga;
        p_control_error ('SGM', 'resultado ', vnum_err);
        p_int_error ('CARGUE DE ARCHIVO DE PROVEEDORES',
                     'FINALIZADO CORRECTAMENTE',
                     1,
                     6);
    EXCEPTION
        WHEN OTHERS
        THEN
            --{Controlamos posibles errores en el proceso nocturno}
            p_int_error ('CARGUE DE ARCHIVO DE PROVEEDORES',
                         'NO FINALIZADO',
                         1,
                         6);
    END;

    --FIN SGM IAXIS 3641 CARGUE DE ARCHIVO DE PROVEEDORES

    --INI SGM IAXIS 3482 PODER INGRESAR ACUERDOS DE PAGO, MASIVAMENTE Y TRAZAR
    BEGIN
        v_contexto :=
            pac_contexto.f_inicializarctx (
                pac_parametros.f_parempresa_t (24, 'USER_BBDD'));
        vnum_err := pac_cargas_conf.f_leearchivos_acuerdo;
        p_control_error ('SGM', 'resultado ', vnum_err);
        p_int_error ('CARGUE ACUERDOS PAGO',
                     'FINALIZADO CORRECTAMENTE',
                     1,
                     6);
    EXCEPTION
        WHEN OTHERS
        THEN
            --{Controlamos posibles errores en el proceso nocturno}
            p_int_error ('CARGUE ACUERDOS PAGO',
                         'NO FINALIZADO',
                         1,
                         6);
    END;

    --FIN SGM IAXIS 3482 PODER INGRESAR ACUERDOS DE PAGO, MASIVAMENTE Y TRAZAR

    --{proceso de deteccion de recibos pendientes de p¿lizas anuladas}
    FOR c IN recibos_pdtes
    LOOP
        p_int_error (
            f_axis_literales (9900986, v_idioma),
               'PÓLIZA ANULADA CON RECIBOS PDTES : - POLIZA : '
            || c.npoliza
            || '-'
            || c.ncertif,
            1,
            NULL);
    END LOOP;

    --{Control de reducciones con recibos de importe 0}
    FOR c IN reduccions
    LOOP
        p_int_error (
            f_axis_literales (9900986, v_idioma),
               'REDUCCION INCORRECTA, RECIBOS A 0 - POLIZA : '
            || c.npoliza
            || '-'
            || c.ncertif,
            1,
            NULL);
    END LOOP;

    FOR c IN gar_sin_ftarifa
    LOOP
        p_int_error (
            f_axis_literales (9900986, v_idioma),
               'POLIZAS SIN FECHA DE TARIFA!!!! - POLIZA : '
            || c.npoliza
            || '-'
            || c.ncertif,
            1,
            NULL);
    END LOOP;

    -- Bug 0011802 - 23/11/2009 - JMF Activar codi.
    --(ACC)22.04.2009 - Es deixa comentat per revisi¿ posterior
    --CPM 12-1-06 {Validaci¿n del contrato de reaseguro con recalculo de cesiones (si es necesario)
    FOR CV IN contrato_valido
    LOOP
        -- BUG: 13504 - 09-03-2010 - AVT la versi¿ anterior no te perqu¿ ser la actaul menys una
        BEGIN
            SELECT nversio
              INTO v_nversio_a
              FROM contratos
             WHERE scontra = CV.scontra AND fconfin IS NULL;
        EXCEPTION
            WHEN OTHERS
            THEN
                p_int_error (
                    f_axis_literales (9900986, v_idioma),
                       'Select CONTRATO REASEGURO - '
                    || CV.scontra
                    || '/'
                    || CV.nversio
                    || ' - Error : '
                    || SQLERRM,
                    1,
                    NULL);
        END;

        p_control_error ('cessio1',
                         'proceso_nocturno',
                         'Va a entrar a f_batch_cessio');
        --p_errm := f_batch_cessio(CV.cempres, CV.scontra, v_nversio_a, CV.nversio, CV.fconini); --OJO habilitar

        --p_errm := f_batch_cessio(CV.cempres, CV.scontra, CV.nversio - 1 , CV.nversio, CV.fconini);
        -- BUG: 13504 - 09-03-2010 - AVT fi
        p_int_error (
            f_axis_literales (9900986, v_idioma),
               'VALIDACIÓN CONTRATO REASEGURO - '
            || CV.scontra
            || '/'
            || CV.nversio
            || ' - Error : '
            || p_errm,
            1,
            NULL);
        COMMIT;
    END LOOP;

    --{Comprobaci¿n de recibos con movimiento err¿neo}
    FOR c IN rec_moverroneo
    LOOP
        p_int_error (
            f_axis_literales (9900986, v_idioma),
            'RECIBOS CON MOVIMIENTO ERRONEO - RECIBO : ' || c.nrecibo,
            1,
            NULL);
    END LOOP;

    --{Controlem que no hi hagi cap p¿lissa sense garanseg que no estigui anul¿lada}
    FOR c IN no_garanseg_no_anul
    LOOP
        IF c.csubpro = 2 AND c.ncertif = 0
        THEN
            NULL;
        ELSE
            p_int_error (
                f_axis_literales (9900986, v_idioma),
                   'PÓLIZAS SIN GARANSEG NO ANULADAS - PÓLIZA : '
                || c.npoliza
                || '-'
                || c.ncertif,
                1,
                NULL);
        END IF;
    END LOOP;

    -- 0014028 AVT 01-04-2010 Control de que no hi hagi cap p¿lissa d'inversi¿ sense una distribuci¿ d'inversi¿ assiganda
    FOR c IN seguros_inversio_no
    LOOP
        p_int_error (
            f_axis_literales (9900986, v_idioma),
               'PÓLIZAS DE INVERSIÓN SIN SEGDISIN2 - PÓLIZA : '
            || c.npoliza
            || '-'
            || c.ncertif,
            1,
            NULL);
    END LOOP;

    --INI BUG CONF-186  Fecha (22/08/2016) - HRE - proceso de marcas
    --PERSONAS QUE NO TIENEN SARLAFT, MARCA 0048  Formulario de Conocimiento del Cliente Pendiente
    FOR rg_sin_sarlaft IN cur_sin_sarlaft
    LOOP
        verror :=
            pac_marcas.f_set_marca_automatica (empresa,
                                               rg_sin_sarlaft.sperson,
                                               '0048');
    END LOOP;

    -- INI TCS-344 CJMR 15/02/2019
    FOR rg_con_sarlaft IN cur_con_sarlaft
    LOOP
        FOR rg_permarca IN cur_permarcas_fcc ('0048')
        LOOP
            IF rg_con_sarlaft.sperson = rg_permarca.sperson
            THEN
                verror :=
                    pac_marcas.f_del_marca_automatica (empresa,
                                                       rg_permarca.sperson,
                                                       '0048');
            END IF;
        END LOOP;
    END LOOP;

    -- FIN TCS-344 CJMR 15/02/2019

    --PERSONAS QUE ESTAN EN LA LISTA CLINTON, MARCA 0050
    FOR rg_lista_clinton IN cur_lista_clinton
    LOOP
        verror :=
            pac_marcas.f_set_marca_automatica (empresa,
                                               rg_lista_clinton.sperson,
                                               '0050');
    END LOOP;

    --PERSONAS QUE TENIAN CHEQUE DEVUELTO Y EL RECIBO FUE PAGADO, MARCA 0032
    FOR rg_permarcas IN cur_permarcas ('0032')
    LOOP
        OPEN cur_rec_pdtes (rg_permarcas.sperson);

        FETCH cur_rec_pdtes INTO v_rec_pdtes;

        CLOSE cur_rec_pdtes;

        IF (v_rec_pdtes = 0)
        THEN
            verror :=
                pac_marcas.f_del_marca_automatica (empresa,
                                                   rg_permarcas.sperson,
                                                   '0032');
        END IF;
    END LOOP;

    --PERSONAS CON CARTERA PRIMERA ALERTA (MAYOR A 120 DÍAS), MARCA 0033    -- TCS-344 CJMR 15/02/2019
    FOR rg_cartera85 IN cur_cartera85
    LOOP
        verror :=
            pac_marcas.f_set_marca_automatica (empresa,
                                               rg_cartera85.sperson,
                                               '0033');
    END LOOP;

    --PERSONAS CON CARTERA MAYOR A 85 DIAS Y EL RECIBO FUE PAGADO, MARCA 0033
    FOR rg_permarcas IN cur_permarcas ('0033')
    LOOP
        OPEN cur_rec_pdtes (rg_permarcas.sperson);

        FETCH cur_rec_pdtes INTO v_rec_pdtes;

        CLOSE cur_rec_pdtes;

        IF (v_rec_pdtes = 0)
        THEN
            verror :=
                pac_marcas.f_del_marca_automatica (empresa,
                                                   rg_permarcas.sperson,
                                                   '0033');
        END IF;
    END LOOP;

    --PERSONAS CON CARTERA SEGUNDA ALERTA (MAYOR A 200 DÍAS), MARCA 0031  -- TCS-344 CJMR 15/02/2019
    FOR rg_cartera120 IN cur_cartera120
    LOOP
        verror :=
            pac_marcas.f_set_marca_automatica (empresa,
                                               rg_cartera120.sperson,
                                               '0031');
    END LOOP;

    --PERSONAS CON CARTERA MAYOR A 120 DIAS Y EL RECIBO FUE PAGADO, MARCA 0031
    FOR rg_permarcas IN cur_permarcas ('0031')
    LOOP
        OPEN cur_rec_pdtes (rg_permarcas.sperson);

        FETCH cur_rec_pdtes INTO v_rec_pdtes;

        CLOSE cur_rec_pdtes;

        IF (v_rec_pdtes = 0)
        THEN
            verror :=
                pac_marcas.f_del_marca_automatica (empresa,
                                                   rg_permarcas.sperson,
                                                   '0031');
        END IF;
    END LOOP;

    --PERSONAS CON ALTA SINIESTRALIDAD
    FOR rg_siniestralidad IN cur_siniestralidad
    LOOP
        verror :=
            pac_marcas.f_set_marca_automatica (empresa,
                                               rg_siniestralidad.sperson,
                                               '0025');
    END LOOP;

    --PERSONAS CON ALTA SINIESTRALIDAD Y SINIESTROS TERMINADOS, MARCA 0025
    FOR rg_permarcas IN cur_permarcas ('0025')
    LOOP
        OPEN cur_sin_siniestralidad (rg_permarcas.sperson);

        FETCH cur_sin_siniestralidad INTO v_sin_activos;

        CLOSE cur_sin_siniestralidad;

        IF (v_sin_activos = 0)
        THEN
            verror :=
                pac_marcas.f_del_marca_automatica (empresa,
                                                   rg_permarcas.sperson,
                                                   '0025');
        END IF;
    END LOOP;

    --FIN BUG CONF-186  - Fecha (22/08/2016) - HRE

    -- INI TCS-344 CJMR 15/02/2019
    -- Marca 0049 Formulario de Conocimiento del Cliente Desactualizado
    FOR rg_sarlaft_desactualizado IN cur_sarlaft_desactualizado
    LOOP
        verror :=
            pac_marcas.f_set_marca_automatica (
                empresa,
                rg_sarlaft_desactualizado.sperson,
                '0049');
    END LOOP;

    FOR rg_sarlaft_actualizado IN cur_sarlaft_actualizado
    LOOP
        FOR rg_permarca IN cur_permarcas_fcc ('0049')
        LOOP
            IF rg_sarlaft_actualizado.sperson = rg_permarca.sperson
            THEN
                verror :=
                    pac_marcas.f_del_marca_automatica (empresa,
                                                       rg_permarca.sperson,
                                                       '0049');
            END IF;
        END LOOP;
    END LOOP;

    -- Marca 0052 Formulario de Conocimiento del Cliente Devuelto
    FOR rg_fcc_dev_sucursal IN cur_fcc_dev_sucursal
    LOOP
        verror :=
            pac_marcas.f_set_marca_automatica (empresa,
                                               rg_fcc_dev_sucursal.sperson,
                                               '0052');
    END LOOP;

    FOR rg_fcc_no_dev_sucursal IN cur_fcc_no_dev_sucursal
    LOOP
        FOR rg_permarca IN cur_permarcas_fcc ('0052')
        LOOP
            IF rg_fcc_no_dev_sucursal.sperson = rg_permarca.sperson
            THEN
                verror :=
                    pac_marcas.f_del_marca_automatica (empresa,
                                                       rg_permarca.sperson,
                                                       '0052');
            END IF;
        END LOOP;
    END LOOP;

    -- Marca 0113 - Ley de insolvencia
    FOR rg_ley_insolvencia IN cur_ley_insolvencia
    LOOP
        verror :=
            pac_marcas.f_del_marca_automatica (empresa,
                                               rg_ley_insolvencia.sperson,
                                               '0113');
    END LOOP;

   -- FIN TCS-344 CJMR 15/02/2019
   
   -- INI IAXIS-4834 CJMR 06/11/2019
   FOR reg_grupos_economicos IN cur_grupos_economicos('0202', 63) LOOP -- Grupos econ??os en Alerta
      verror := pac_marcas.f_del_marca_automatica (empresa, reg_grupos_economicos.sperson, reg_grupos_economicos.cmarca);
   END LOOP;
   
   FOR reg_grupos_economicos IN cur_grupos_economicos('0201', 64) LOOP -- Grupos econ??os restringidos
      verror := pac_marcas.f_del_marca_automatica (empresa, reg_grupos_economicos.sperson, reg_grupos_economicos.cmarca);
   END LOOP;
   
   FOR reg_grupos_economicos IN cur_grupos_economicos('0200', 65) LOOP -- Grupos econ??os bloqueados
      verror := pac_marcas.f_del_marca_automatica (empresa, reg_grupos_economicos.sperson, reg_grupos_economicos.cmarca);
   END LOOP;
   -- FIN IAXIS-4834 CJMR 06/11/2019

    -- Bug 16592 - 10/11/2010 - AMC
    pac_fe_vida.p_proceso_certifica_fe_vida (NULL, vsproces);
    -- Fi Bug 16592 - 10/11/2010 - AMC

    -- BUG 22049 - APD - 30/04/2012 - se añade la llamada a f_actualiza_garanprored
    verror := f_actualiza_garanprored;
    -- fin BUG 22049 - APD - 30/04/2012
    --------------------------------------------------------------------------------------
    p_int_error (
        f_axis_literales (9900986, v_idioma),
           'PROCESOS NOCTURNOS - '
        || f_axis_literales (9901094, v_idioma)
        || ' - '
        || f_sysdate,
        0,
        NULL);
    -- BUG 25542 - APD - 14/01/2013 - se añade la llamada a f_actualiza_antiguedad
    verror := f_actualiza_antiguedad;
    p_int_error (
        f_axis_literales (9900986, v_idioma),
           f_axis_literales (9904770, v_idioma)
        || ' - '
        || f_axis_literales (9901094, v_idioma)
        || ' - '
        || f_sysdate,
        0,
        NULL);

    -- fin BUG 25542 - APD - 14/01/2013

    --JTT 25/03/2014
    SELECT nvalpar
      INTO v_nempres
      FROM parinstalacion
     WHERE cparame = 'EMPRESADEF';

    verror :=
        pac_provimat_pbex.f_procesar_pu (v_nempres,
                                         f_sysdate,
                                         NULL,
                                         NULL,
                                         NULL,
                                         v_idioma);
    p_int_error (f_axis_literales (9900986, v_idioma),
                 'pac_provimat_pbex.f_procesar_pu : ' || v_nempres,
                 1,
                 NULL);
    --JTT 25/03/2014

    -- Bug 19421 - I - 16/12/2011 borrado de las tablas de persistencia
    verror := pac_persistencia.f_limpiar_conexiones;
    -- Bug 19421 - F - 16/12/2011 borrado de las tablas de persistencia

    -- Bug 28821/176979 - 10/06/2014 - AMC
    p_traspaso_newsuple;
    -- Fi Bug 28821/176979 - 10/06/2014 - AMC

    --INI BUG CONF 304 - Desarrollo INT06 (C¿DIGO BRIDGER) - DMCOTTE
    vsubfi := f_fichero_bridger (v_nempres, 1);
    p_int_error (f_axis_literales (9900986, v_idioma),
                 'fichero código bridger 1: ' || vsubfi,
                 1,
                 NULL);
    vsubfi := f_fichero_bridger (v_nempres, 2);
    p_int_error (f_axis_literales (9900986, v_idioma),
                 'fichero código bridger 1: ' || vsubfi,
                 1,
                 NULL);
--FIN BUG CONF 304 - Desarrollo INT06 (C¿DIGO BRIDGER) - DMCOTTE
EXCEPTION
    WHEN OTHERS
    THEN
        p_int_error (
            f_axis_literales (9900986, v_idioma),
            'p_procesos_nocturnos - ' || f_axis_literales (9901093, v_idioma),
            2,
            SQLERRM);
END p_procesos_nocturnos;
/
