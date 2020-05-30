CREATE OR REPLACE PROCEDURE P_FACT_SINIESTROS(PI_FINICIO IN DATE,
                                              PI_FFIN    IN DATE) IS

  CURSOR RESULT(P_FINICIO DATE, P_FFIN DATE) IS
    SELECT DISTINCT SSIN.NSINIES SIN_NUM_SINI,
                    SEG.NPOLIZA SIN_NUM_POLIZA,
                    (SELECT RD.NCERTDIAN
                       FROM AXIS.RANGO_DIAN_MOVSEGURO RD
                      WHERE RD.SSEGURO = SEG.SSEGURO
                        AND RD.NMOVIMI = SSIN.NMOVIMI) SIN_NUM_CERTIFICADO,
                    STP.SIDEPAG SIN_NUM_ORDEN,
                    (SELECT SUM(GAR.IPRITAR)
                       FROM AXIS.GARANSEG GAR
                      WHERE GAR.SSEGURO = SEG.SSEGURO
                        AND GAR.CGARANT = STR.CGARANT) SIN_PRIMA_NETA_EMIT_POL,
                    0 SIN_PRIMA_NETA_DEVE_POL,
                    (SELECT SUM(GAR.ICAPITAL)
                       FROM AXIS.GARANSEG GAR
                      WHERE GAR.SSEGURO = SEG.SSEGURO
                        AND GAR.CGARANT = STR.CGARANT) SIN_VALOR_ASEGURADO,
                    (SELECT SUM(STP1.ISINRET)
                       FROM AXIS.SIN_TRAMITA_PAGO STP1
                      WHERE STP1.NSINIES = SSIN.NSINIES
                        AND STP1.CCONPAG IN (315,
                                             316,
                                             317,
                                             318,
                                             319,
                                             321,
                                             323,
                                             324,
                                             325,
                                             338,
                                             382)) SIN_VALOR_PAGO_POL,
                    (SELECT SUM(STP1.ISINRET)
                       FROM AXIS.SIN_TRAMITA_PAGO STP1
                      WHERE STP1.NSINIES = SSIN.NSINIES
                        AND STP1.CCONPAG IN (330,
                                             332,
                                             333,
                                             334,
                                             336,
                                             337,
                                             339,
                                             341,
                                             342,
                                             343,
                                             345,
                                             346,
                                             348,
                                             349,
                                             350,
                                             351,
                                             352,
                                             353,
                                             355,
                                             356,
                                             357,
                                             358,
                                             361,
                                             364,
                                             365)) SIN_VALOR_GASTO_POL,
                    STR.IRESERVA SIN_VALOR_RESE_POL,
                    (SELECT SUM(STP1.ISINRET)
                       FROM AXIS.SIN_TRAMITA_PAGO STP1
                      WHERE STP1.NSINIES = SSIN.NSINIES
                        AND STP1.CCONPAG IN
                            (366, 367, 368, 373, 374, 375, 378, 379)) SIN_VALOR_RECU_POL,
                    (SELECT SUM(STP1.IFRANQ)
                       FROM AXIS.SIN_TRAMITA_PAGO STP1
                      WHERE STP1.NSINIES = SSIN.NSINIES) SIN_VALOR_DEDU_POL,
                    (SELECT SUM(STR1.IRESERVA)
                       FROM AXIS.SIN_TRAMITA_RESERVA STR1
                      WHERE STR1.NSINIES = SSIN.NSINIES
                        AND EXTRACT(YEAR FROM STR1.FMOVRES) =
                            EXTRACT(YEAR FROM SYSDATE)) SIN_RESERVAANOACTUAL,
                    (SELECT SUM(STR1.IRESERVA)
                       FROM AXIS.SIN_TRAMITA_RESERVA STR1
                      WHERE STR1.NSINIES = SSIN.NSINIES
                        AND EXTRACT(YEAR FROM STR1.FMOVRES) <
                            EXTRACT(YEAR FROM SYSDATE)) SIN_RESERVAANOANTERIOR,
                    0 SIN_IND_SINI_EMIT,
                    0 SIN_IND_SINI_CTACIA,
                    (SELECT CU.PLOCCOA
                       FROM AXIS.COACUADRO CU
                      WHERE CU.SSEGURO = SEG.SSEGURO
                        AND CU.NCUACOA = SSIN.NMOVIMI
                        AND SEG.CTIPCOA IN (8, 9)) SIN_POR_COAS_ACEP, ---
                    (SELECT SUM(CE.PCESCOA)
                       FROM AXIS.COACEDIDO CE
                      WHERE CE.SSEGURO = SEG.SSEGURO
                        AND CE.NCUACOA = SSIN.NMOVIMI
                        AND SEG.CTIPCOA IN (1, 2)) SIN_POR_COAS_CEDI, ---
                    '' SIN_AFECTACIONCONTRATO,
                    '' SIN_CLASECONTRATO,
                    (SELECT AXIS.F_DESPOBLAC2(STL.CPOBLAC, STL.CPROVIN)
                       FROM AXIS.SIN_TRAMITA_LOCALIZA STL
                      WHERE STL.NSINIES = SSIN.NSINIES
                        AND STL.NTRAMIT = STP.NTRAMIT
                        AND ROWNUM = 1) SIN_LUGARSINIESTRO,
                    (SELECT MAX(STP1.FORDPAG)
                       FROM AXIS.SIN_TRAMITA_PAGO STP1
                      WHERE STP1.NSINIES = SSIN.NSINIES
                        AND STP1.CCONPAG IN (320, 328)) SIN_FECENTREGAANTICIPO,
                    '' SIN_FECACTAINICIACION,
                    '' SIN_FECENTREGACONTRATO,
                    (SELECT SUM(STP1.ISINRET)
                       FROM AXIS.SIN_TRAMITA_PAGO STP1
                      WHERE STP1.NSINIES = SSIN.NSINIES
                        AND STP1.CCONPAG IN (326, 327, 329, 360)) SIN_HONORARIOABOGADO,
                    (SELECT SUM(STV.IPRETEN)
                       FROM AXIS.SIN_TRAMITA_VALPRETENSION STV
                      WHERE STV.NSINIES = SSIN.NSINIES
                        AND STV.CGARANT = STR.CGARANT
                        AND STV.NTRAMIT = STR.NTRAMIT) SIN_PRETENSIONES,
                    SSIN.FNOTIFI SIN_FECNOTIFICACION,
                    0 SIN_CAUSAPROCESO, ----
                    0 SIN_TIPOVINCULAPROCESO, ----
                    (SELECT MAX(DT.TIE_ID)
                       FROM DIM_TIEMPO DT
                      WHERE DT.TIE_FECHA = TRUNC(STM.FEFEPAG)
                        AND DT.ESTADO = 'ACTIVO') SINPAG_FK_TIEMPO,
                    (SELECT MAX(GEO_ID)
                       FROM DIM_GEOGRAFICA DG
                      WHERE DG.GEO_SUCURSAL = SUBSTR(TO_CHAR(AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                                                                     SEG.CAGENTE,
                                                                                                     NULL,
                                                                                                     NULL)),
                                                     3,
                                                     5)
                        AND DG.ESTADO = 'ACTIVO') SIN_FK_GEOGRAFICA,
                    DECODE(STP.CMONRES, 'COP', 1, 'USD', 2, 'EUR', 8) SIN_FK_MONEDA,
                    (SELECT MAX(DP.PER_CODIGO)
                       FROM DIM_PERSONA DP
                      WHERE DP.PER_PERSONA =
                            (SELECT PP1.NNUMIDE
                               FROM AXIS.TOMADORES    TOM,
                                    AXIS.PER_PERSONAS PP1
                              WHERE PP1.SPERSON = TOM.SPERSON
                                AND TOM.SSEGURO = SEG.SSEGURO)
                        AND DP.ESTADO = 'ACTIVO') SINPAG_FK_PERSONA,
                    (SELECT MAX(DT.TEC_ID)
                       FROM DIM_TECNICA DT
                      WHERE DT.TEC_RAMO = HOM.CODRAM
                        AND DT.ESTADO = 'ACTIVO') SINPAG_FK_TECNICA,
                    GEN.ICAPITAL SIN_FK_RANGOVLRASEGURADO, ---
                    (SELECT MAX(DP.PER_CODIGO)
                       FROM DIM_PERSONA DP
                      WHERE DP.PER_PERSONA =
                            (SELECT PP1.NNUMIDE
                               FROM AXIS.REASEGURO    REA,
                                    AXIS.COMPANIAS    COM,
                                    AXIS.PER_PERSONAS PP1
                              WHERE PP1.SPERSON = COM.SPERSON
                                AND COM.CCOMPANI = REA.CCOMPANI
                                AND REA.NSINIES = SSIN.NSINIES
                                AND REA.NMOVIMI = SSIN.NMOVIMI
                                AND REA.SSEGURO = SEG.SSEGURO
                                AND REA.SIDEPAG = STP.SIDEPAG
                                AND ROWNUM = 1)
                        AND DP.ESTADO = 'ACTIVO') SIN_FK_REASEGURADOR, ---
                    0 SIN_FK_CAUSASINIESTRO, ---
                    0 SIN_FK_ESTADOSINIESTRO, ---      
                    (SELECT SM.FESTSIN
                       FROM AXIS.SIN_MOVSINIESTRO SM
                      WHERE SM.NSINIES = SSIN.NSINIES
                        AND SM.NMOVSIN =
                            (SELECT MIN(SM.NMOVSIN)
                               FROM AXIS.SIN_MOVSINIESTRO SM1
                              WHERE SM1.NSINIES = SSIN.NSINIES)
                        AND ROWNUM = 1) FECHA_CONTROL,
                    SYSDATE FECHA_REGISTRO,
                    P_FINICIO FECHA_INICIO,
                    P_FFIN FECHA_FIN,
                    (SELECT MAX(DP.PER_CODIGO)
                       FROM DIM_PERSONA DP
                      WHERE DP.PER_PERSONA =
                            (SELECT PP1.NNUMIDE
                               FROM AXIS.ASEGURADOS   ASE,
                                    AXIS.PER_PERSONAS PP1
                              WHERE PP1.SPERSON = ASE.SPERSON
                                AND ASE.SSEGURO = SEG.SSEGURO
                                AND ROWNUM = 1)
                        AND DP.ESTADO = 'ACTIVO') SINPAG_FK_ASEGURADO,
                    (SELECT MAX(DP.PER_CODIGO)
                       FROM DIM_PERSONA DP
                      WHERE DP.PER_PERSONA =
                            (SELECT PP1.NNUMIDE
                               FROM AXIS.TOMADORES    TOM,
                                    AXIS.PER_PERSONAS PP1
                              WHERE PP1.SPERSON = TOM.SPERSON
                                AND TOM.SSEGURO = SEG.SSEGURO)
                        AND DP.ESTADO = 'ACTIVO') SINPAG_FK_CLIENTE,
                    (SELECT MAX(DI.INTRM_ID)
                       FROM DIM_INTERMEDIARIO DI
                      WHERE DI.INTRM_INTERMEDIARIO =
                            (SELECT PP1.NNUMIDE
                               FROM AXIS.AGENTES      AGE,
                                    AXIS.PER_PERSONAS PP1
                              WHERE PP1.SPERSON = AGE.SPERSON
                                AND AGE.CAGENTE = SEG.CAGENTE)
                        AND DI.ESTADO = 'ACTIVO') SIN_FK_INTERMEDIARIO,
                    /*(SELECT MAX(DT.TIE_ID)
                     FROM DIM_TIEMPO DT
                    WHERE DT.TIE_FECHA = SSIN.FSINIES
                      AND DT.ESTADO = 'ACTIVO')*/
                    SSIN.FSINIES SIN_FECHARECLAMO,
                    (SELECT MAX(DP.PER_CODIGO)
                       FROM DIM_PERSONA DP
                      WHERE DP.PER_PERSONA =
                            (SELECT PP1.NNUMIDE
                               FROM AXIS.BENESPSEG    BEN,
                                    AXIS.PER_PERSONAS PP1
                              WHERE PP1.SPERSON = BEN.SPERSON
                                AND BEN.SSEGURO = SEG.SSEGURO
                                AND BEN.FFINBEN IS NULL
                                AND BEN.CPAREN = 0
                                AND ROWNUM = 1)
                        AND DP.ESTADO = 'ACTIVO') SIN_FK_BENEFICIARIO
    
      FROM AXIS.SIN_SINIESTRO       SSIN,
           AXIS.SIN_TRAMITA_PAGO    STP,
           AXIS.SIN_TRAMITA_MOVPAGO STM,
           AXIS.SEGUROS             SEG,
           AXIS.SIN_TRAMITA_RESERVA STR,
           AXIS.HOMOLOGAPRODUC      HOM,
           AXIS.GARANSEG            GEN
    
     WHERE SEG.SSEGURO = SSIN.SSEGURO
       AND STR.SIDEPAG = STP.SIDEPAG
       AND STR.NSINIES = STP.NSINIES
       AND HOM.SPRODUC = SEG.SPRODUC
       AND HOM.CGARANT = STR.CGARANT
       AND HOM.CACTIVI = SEG.CACTIVI
       AND GEN.SSEGURO = SEG.SSEGURO
       AND GEN.NMOVIMI = SSIN.NMOVIMI
       AND STR.CGARANT = GEN.CGARANT
       AND STP.SIDEPAG = STM.SIDEPAG
       AND STM.NMOVPAG = (SELECT MAX(STM1.NMOVPAG)
                            FROM AXIS.SIN_TRAMITA_MOVPAGO STM1
                           WHERE STM1.SIDEPAG = STP.SIDEPAG)
       AND STP.NSINIES = SSIN.NSINIES
       AND STP.FORDPAG BETWEEN P_FINICIO AND P_FFIN;
  /* AND STP.FORDPAG BETWEEN TO_DATE('01/11/2019', 'DD/MM/YYYY') AND
  TO_DATE('19/12/2019', 'DD/MM/YYYY');*/

BEGIN

  DELETE FROM FACT_SINIESTROS_DUMMY;
  COMMIT;

  FOR ROWS IN RESULT(PI_FINICIO, PI_FFIN) LOOP
  
    INSERT INTO FACT_SINIESTROS_DUMMY
      (SIN_ID,
       SIN_NUM_SINI,
       SIN_NUM_POLIZA,
       SIN_NUM_CERTIFICADO,
       SIN_NUM_ORDEN,
       SIN_PRIMA_NETA_EMIT_POL,
       SIN_PRIMA_NETA_DEVE_POL,
       SIN_VALOR_ASEGURADO,
       SIN_VALOR_PAGO_POL,
       SIN_VALOR_GASTO_POL,
       SIN_VALOR_RESE_POL,
       SIN_VALOR_RECU_POL,
       SIN_VALOR_DEDU_POL,
       SIN_RESERVAANOACTUAL,
       SIN_RESERVAANOANTERIOR,
       SIN_IND_SINI_EMIT,
       SIN_IND_SINI_CTACIA,
       SIN_POR_COAS_ACEP,
       SIN_POR_COAS_CEDI,
       SIN_AFECTACIONCONTRATO,
       SIN_CLASECONTRATO,
       SIN_LUGARSINIESTRO,
       SIN_FECENTREGAANTICIPO,
       SIN_FECACTAINICIACION,
       SIN_FECENTREGACONTRATO,
       SIN_HONORARIOABOGADO,
       SIN_PRETENSIONES,
       SIN_FECNOTIFICACION,
       SIN_CAUSAPROCESO,
       SIN_TIPOVINCULAPROCESO,
       SIN_FK_TIEMPO,
       SIN_FK_GEOGRAFICA,
       SIN_FK_MONEDA,
       SIN_FK_PERSONA,
       SIN_FK_TECNICA,
       SIN_FK_RANGOVLRASEGURADO,
       SIN_FK_REASEGURADOR,
       SIN_FK_CAUSASINIESTRO,
       SIN_FK_ESTADOSINIESTRO,
       FECHA_CONTROL,
       FECHA_REGISTRO,
       FECHA_INICIO,
       FECHA_FIN,
       SIN_FK_ASEGURADO,
       SIN_FK_CLIENTE,
       SIN_FK_INTERMEDIARIO,
       SIN_FECHARECLAMO,
       SIN_FK_BENEFICIARIO)
    VALUES
      (SIN_ID.NEXTVAL,
       ROWS.SIN_NUM_SINI,
       ROWS.SIN_NUM_POLIZA,
       ROWS.SIN_NUM_CERTIFICADO,
       ROWS.SIN_NUM_ORDEN,
       ROWS.SIN_PRIMA_NETA_EMIT_POL,
       ROWS.SIN_PRIMA_NETA_DEVE_POL,
       ROWS.SIN_VALOR_ASEGURADO,
       ROWS.SIN_VALOR_PAGO_POL,
       ROWS.SIN_VALOR_GASTO_POL,
       ROWS.SIN_VALOR_RESE_POL,
       ROWS.SIN_VALOR_RECU_POL,
       ROWS.SIN_VALOR_DEDU_POL,
       ROWS.SIN_RESERVAANOACTUAL,
       ROWS.SIN_RESERVAANOANTERIOR,
       ROWS.SIN_IND_SINI_EMIT,
       ROWS.SIN_IND_SINI_CTACIA,
       ROWS.SIN_POR_COAS_ACEP,
       ROWS.SIN_POR_COAS_CEDI,
       ROWS.SIN_AFECTACIONCONTRATO,
       ROWS.SIN_CLASECONTRATO,
       ROWS.SIN_LUGARSINIESTRO,
       ROWS.SIN_FECENTREGAANTICIPO,
       ROWS.SIN_FECACTAINICIACION,
       ROWS.SIN_FECENTREGACONTRATO,
       ROWS.SIN_HONORARIOABOGADO,
       ROWS.SIN_PRETENSIONES,
       ROWS.SIN_FECNOTIFICACION,
       ROWS.SIN_CAUSAPROCESO,
       ROWS.SIN_TIPOVINCULAPROCESO,
       ROWS.SINPAG_FK_TIEMPO,
       ROWS.SIN_FK_GEOGRAFICA,
       ROWS.SIN_FK_MONEDA,
       ROWS.SINPAG_FK_PERSONA,
       ROWS.SINPAG_FK_TECNICA,
       ROWS.SIN_FK_RANGOVLRASEGURADO,
       ROWS.SIN_FK_REASEGURADOR,
       ROWS.SIN_FK_CAUSASINIESTRO,
       ROWS.SIN_FK_ESTADOSINIESTRO,
       ROWS.FECHA_CONTROL,
       ROWS.FECHA_REGISTRO,
       ROWS.FECHA_INICIO,
       ROWS.FECHA_FIN,
       ROWS.SINPAG_FK_ASEGURADO,
       ROWS.SINPAG_FK_CLIENTE,
       ROWS.SIN_FK_INTERMEDIARIO,
       ROWS.SIN_FECHARECLAMO,
       ROWS.SIN_FK_BENEFICIARIO);
  END LOOP;

  COMMIT;

END P_FACT_SINIESTROS;
/
