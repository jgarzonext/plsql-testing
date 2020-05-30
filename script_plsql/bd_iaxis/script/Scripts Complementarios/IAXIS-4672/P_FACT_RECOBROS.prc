CREATE OR REPLACE PROCEDURE P_FACT_RECOBROS(PI_FINICIO IN DATE,
                                            PI_FFIN    IN DATE) IS

  CURSOR RESULT(P_FINICIO DATE, P_FFIN DATE) IS
    SELECT DISTINCT (SELECT MAX(GEO_ID)
                       FROM DIM_GEOGRAFICA DG
                      WHERE DG.GEO_SUCURSAL = SUBSTR(TO_CHAR(AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                                                                     SEG.CAGENTE,
                                                                                                     NULL,
                                                                                                     NULL)),
                                                     3,
                                                     5)) SUCUR,
                    (SELECT RD.NCERTDIAN
                       FROM AXIS.RANGO_DIAN_MOVSEGURO RD
                      WHERE RD.SSEGURO = SEG.SSEGURO
                        AND RD.NMOVIMI = SSIN.NMOVIMI) CERTIF,
                    SEG.NPOLIZA POLIZA,
                    SSIN.NSINIES SINIESTRO,
                    STP.FORDPAG FECDOC,
                    CASE
                      WHEN STP.CCONPAG = 376 THEN
                       DECODE(STP.CMONRES,
                              'COP',
                              STP.ISINRET,
                              'USD',
                              STP.ISINRETPAG,
                              'EUR',
                              STP.ISINRETPAG)
                    END INTERES,
                    CASE
                      WHEN STP.CCONPAG IN
                           (366, 367, 368, 369, 370, 371, 372, 373, 374, 375) THEN
                       DECODE(STP.CMONRES,
                              'COP',
                              STP.ISINRET,
                              'USD',
                              STP.ISINRETPAG,
                              'EUR',
                              STP.ISINRETPAG)
                    END CAPITAL,
                    DECODE(STP.CMONRES,
                           'COP',
                           STR.ICAPRIE,
                           'USD',
                           STR.ICAPRIE_MONCIA,
                           'EUR',
                           STR.ICAPRIE_MONCIA) VASEG,
                    HOM.CODRAM CODRAM,
                    'T0' REC_TIPO_CRUCE,
                    STP.SIDEPAG REC_NUMERO_CRUCE,
                    REGEXP_REPLACE(AXIS.FF_DESVALORFIJO(803,
                                                            8,
                                                            STP.CCONPAG),
                                   '[^0-9]',
                                   '') REC_TIPO_TRANSACCION,
                    '0' REC_TIPO_VALOR,
                    REGEXP_REPLACE(AXIS.FF_DESVALORFIJO(803,
                                                            8,
                                                            STP.CCONPAG),
                                   '[^A-Za-z¡…Õ”⁄·ÈÌÛ˙]',
                                   '') REC_DESC_TRANSACCION,
                    CASE
                      WHEN SEG.CTIPCOA = 0 THEN
                       1
                      WHEN SEG.CTIPCOA IN (1, 2) THEN
                       2
                      WHEN SEG.CTIPCOA IN (8, 9) THEN
                       3
                    END REC_TIPCOA
      FROM AXIS.SIN_SINIESTRO       SSIN,
           AXIS.SIN_TRAMITA_PAGO    STP,
           AXIS.SIN_TRAMITA_MOVPAGO STM,
           AXIS.SEGUROS             SEG,
           AXIS.SIN_TRAMITA_RESERVA STR,
           AXIS.HOMOLOGAPRODUC      HOM
    
     WHERE SEG.SSEGURO = SSIN.SSEGURO
       AND STR.SIDEPAG = STP.SIDEPAG
       AND STR.NSINIES = STP.NSINIES
       AND HOM.SPRODUC = SEG.SPRODUC
       AND HOM.CGARANT = STR.CGARANT
       AND HOM.CACTIVI = SEG.CACTIVI
       AND STP.SIDEPAG = STM.SIDEPAG
       AND STR.NMOVRES = (SELECT MAX(STR1.NMOVRES)
                            FROM AXIS.SIN_TRAMITA_RESERVA STR1
                           WHERE STR1.NSINIES = SSIN.NSINIES
                             AND STR1.SIDEPAG = STR.SIDEPAG)
       AND STP.CTIPPAG = 7
       AND STM.NMOVPAG = (SELECT MAX(STM1.NMOVPAG)
                            FROM AXIS.SIN_TRAMITA_MOVPAGO STM1
                           WHERE STM1.SIDEPAG = STP.SIDEPAG)
       AND STP.NSINIES = SSIN.NSINIES
       AND STP.CCONPAG IN
           (366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376)
       AND STP.FORDPAG BETWEEN P_FINICIO AND P_FFIN;
  --   BETWEEN TO_DATE('01/08/2019', 'DD/MM/YYYY') AND
  --     TO_DATE('19/12/2019', 'DD/MM/YYYY');

BEGIN

  DELETE FROM FACT_RECOBROS_DUMMY;
  COMMIT;

  FOR ROWS IN RESULT(PI_FINICIO, PI_FFIN) LOOP
    INSERT INTO FACT_RECOBROS_DUMMY
      (SEQ_FACT_RECOBROS,
       SUCUR,
       CERTIF,
       POLIZA,
       SINIESTRO,
       FECDOC,
       INTERES,
       CAPITAL,
       VASEG,
       CODRAM,
       REC_TIPO_CRUCE,
       REC_NUMERO_CRUCE,
       REC_TIPO_TRANSACCION,
       REC_TIPO_VALOR,
       REC_DESC_TRANSACCION,
       REC_TIPCOA)
    VALUES
      (SEQ_FACT_RECOBROS.NEXTVAL,
       ROWS.SUCUR,
       ROWS.CERTIF,
       ROWS.POLIZA,
       ROWS.SINIESTRO,
       ROWS.FECDOC,
       ROWS.INTERES,
       ROWS.CAPITAL,
       ROWS.VASEG,
       ROWS.CODRAM,
       ROWS.REC_TIPO_CRUCE,
       ROWS.REC_NUMERO_CRUCE,
       ROWS.REC_TIPO_TRANSACCION,
       ROWS.REC_TIPO_VALOR,
       ROWS.REC_DESC_TRANSACCION,
       ROWS.REC_TIPCOA);
  END LOOP;

  COMMIT;
END P_FACT_RECOBROS;
/
