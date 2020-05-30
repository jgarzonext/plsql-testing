CREATE OR REPLACE PROCEDURE P_FACT_CONTRAGARANTIAS(PI_FINICIO IN DATE,
                                                   PI_FFIN    IN DATE) IS

  CURSOR RESULT(P_FINICIO DATE, P_FFIN DATE) IS
    SELECT DISTINCT (SELECT MAX(PER_CODIGO)
                       FROM DIM_PERSONA
                      WHERE ESTADO = 'ACTIVO'
                        AND PER_PERSONA =
                            (SELECT PP.NNUMIDE
                               FROM AXIS.PER_PERSONAS PP
                              WHERE PP.SPERSON = PC.SPERSON)) FK_PERSONA,
                    AXIS.FF_DESVALORFIJO(8001035, 8, CC.CTIPO) TIPOGARANTIA,
                    AXIS.FF_DESVALORFIJO(8001036, 8, CC.CCLASE) CLASEGARANTIA,
                    CC.FALTA FECHAEMISION,
                    NULL FECHACERRADA,
                    NULL FECHARETIRADA,
                    CC.FCREA FECHARADICADA,
                    CC.FVENCIMI FECHAVENCIMIENTO,
                    (SELECT MAX(GEO_ID)
                       FROM DIM_GEOGRAFICA
                      WHERE ESTADO = 'ACTIVO'
                        AND TO_CHAR(GEO_SUCURSAL) =
                            (SELECT TO_CHAR(SUBSTR(AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                                                           PP.CAGENTE,
                                                                                           NULL,
                                                                                           NULL),
                                                   3,
                                                   5))
                               FROM AXIS.PER_PERSONAS PP
                              WHERE PP.SPERSON = PC.SPERSON)) FK_SUCUR,
                     (SELECT MAX(PER_CODIGO)
                          FROM DIM_PERSONA DP
                         WHERE DP.ESTADO = 'ACTIVO'
                           AND DP.PER_PERSONA =
                               (SELECT PP1.NNUMIDE
                                  FROM AXIS.PER_PERSONAS PP1
                                 WHERE PP1.SPERSON = (SELECT P1.SPERSON
                                 FROM (SELECT C.*,
                                    ROW_NUMBER() OVER(PARTITION BY C.SCONTGAR ORDER BY C.SPERSON) ROW_COUNT
                               FROM AXIS.CTGAR_CODEUDOR C
                              WHERE C.SCONTGAR = CC.SCONTGAR) P1
                      WHERE P1.ROW_COUNT = 1))) AS FK_CODF1,
                     (SELECT MAX(PER_CODIGO)
                          FROM DIM_PERSONA DP
                         WHERE DP.ESTADO = 'ACTIVO'
                           AND DP.PER_PERSONA =
                               (SELECT PP1.NNUMIDE
                                  FROM AXIS.PER_PERSONAS PP1
                                 WHERE PP1.SPERSON = (SELECT P1.SPERSON
                                 FROM (SELECT C.*,
                                    ROW_NUMBER() OVER(PARTITION BY C.SCONTGAR ORDER BY C.SPERSON) ROW_COUNT
                               FROM AXIS.CTGAR_CODEUDOR C
                              WHERE C.SCONTGAR = CC.SCONTGAR) P1
                      WHERE P1.ROW_COUNT = 2))) AS CODF2,
                     (SELECT MAX(PER_CODIGO)
                          FROM DIM_PERSONA DP
                         WHERE DP.ESTADO = 'ACTIVO'
                           AND DP.PER_PERSONA =
                               (SELECT PP1.NNUMIDE
                                  FROM AXIS.PER_PERSONAS PP1
                                 WHERE PP1.SPERSON = (SELECT P1.SPERSON
                                 FROM (SELECT C.*,
                                    ROW_NUMBER() OVER(PARTITION BY C.SCONTGAR ORDER BY C.SPERSON) ROW_COUNT
                               FROM AXIS.CTGAR_CODEUDOR C
                              WHERE C.SCONTGAR = CC.SCONTGAR) P1
                      WHERE P1.ROW_COUNT = 3))) AS CODF3,
                     (SELECT MAX(PER_CODIGO)
                          FROM DIM_PERSONA DP
                         WHERE DP.ESTADO = 'ACTIVO'
                           AND DP.PER_PERSONA =
                               (SELECT PP1.NNUMIDE
                                  FROM AXIS.PER_PERSONAS PP1
                                 WHERE PP1.SPERSON = (SELECT P1.SPERSON
                                 FROM (SELECT C.*,
                                    ROW_NUMBER() OVER(PARTITION BY C.SCONTGAR ORDER BY C.SPERSON) ROW_COUNT
                               FROM AXIS.CTGAR_CODEUDOR C
                              WHERE C.SCONTGAR = CC.SCONTGAR) P1
                      WHERE P1.ROW_COUNT = 4))) AS CODF4,
                     (SELECT MAX(PER_CODIGO)
                          FROM DIM_PERSONA DP
                         WHERE DP.ESTADO = 'ACTIVO'
                           AND DP.PER_PERSONA =
                               (SELECT PP1.NNUMIDE
                                  FROM AXIS.PER_PERSONAS PP1
                                 WHERE PP1.SPERSON = (SELECT P1.SPERSON
                                 FROM (SELECT C.*,
                                    ROW_NUMBER() OVER(PARTITION BY C.SCONTGAR ORDER BY C.SPERSON) ROW_COUNT
                               FROM AXIS.CTGAR_CODEUDOR C
                              WHERE C.SCONTGAR = CC.SCONTGAR) P1
                      WHERE P1.ROW_COUNT = 5))) AS CODF5,
                    CC.TDESCRIPCION DESCRIPCION,
                    AXIS.FF_DESVALORFIJO(8001038, 8, CC.CESTADO) ESTADOGARANTIA,
                    DECODE(CC.CMONEDA, 'COP', 1, 'USD', 2, 'EUR', 8) FK_MONEDAGAR,
                    CC.NEMPRESA NUMDOCUMENTO,
                    CC.DOCUMENTO NUMDOCAUX,
                    CC.NRADICA NUMRADICACION,
                    (SELECT SEG.NPOLIZA
                       FROM AXIS.CTGAR_SEGURO CTS, AXIS.SEGUROS SEG
                      WHERE SEG.SSEGURO = CTS.SSEGURO
                        AND CTS.SCONTGAR = CC.SCONTGAR
                        AND CTS.NMOVIMI = CTS.NMOVIMI
                        AND CC.CESTADO = 2) POLIZA,
                    CC.IVALOR VALORGARANTIA,
                    CC.IVALOR VALORCERRADO,
                    AXIS.FF_DESVALORFIJO(8001037, 8, CC.CTENEDOR) TENEDOR,
                    (SELECT MAX(DU.USU_ID)
                       FROM DIM_USUARIO DU
                      WHERE DU.ESTADO = 'ACTIVO'
                        AND DU.USU_USUARIO =
                            (SELECT C2.CUSUALT
                               FROM AXIS.CTGAR_CONTRAGARANTIA C2
                              WHERE C2.SCONTGAR = CC.SCONTGAR
                                AND C2.NMOVIMI =
                                    (SELECT MIN(C2.NMOVIMI)
                                       FROM AXIS.CTGAR_CONTRAGARANTIA C2
                                      WHERE C2.SCONTGAR = CC.SCONTGAR))) FK_SUCREA,
                    (SELECT C2.CUSUALT
                       FROM AXIS.CTGAR_CONTRAGARANTIA C2
                      WHERE C2.SCONTGAR = CC.SCONTGAR
                        AND C2.NMOVIMI =
                            (SELECT MAX(C2.NMOVIMI)
                               FROM AXIS.CTGAR_CONTRAGARANTIA C2
                              WHERE C2.SCONTGAR = CC.SCONTGAR)) SUCMOD,
                    (SELECT MAX(DT.TIE_ID)
                       FROM DIM_TIEMPO DT
                      WHERE DT.ESTADO = 'ACTIVO'
                        AND DT.TIE_FECHA =
                            (SELECT TRUNC(C2.FALTA)
                               FROM AXIS.CTGAR_CONTRAGARANTIA C2
                              WHERE C2.SCONTGAR = CC.SCONTGAR
                                AND C2.NMOVIMI =
                                    (SELECT MIN(C2.NMOVIMI)
                                       FROM AXIS.CTGAR_CONTRAGARANTIA C2
                                      WHERE C2.SCONTGAR = CC.SCONTGAR))) FK_FECREA,
                    (SELECT C2.FALTA
                       FROM AXIS.CTGAR_CONTRAGARANTIA C2
                      WHERE C2.SCONTGAR = CC.SCONTGAR
                        AND C2.NMOVIMI =
                            (SELECT MAX(C2.NMOVIMI)
                               FROM AXIS.CTGAR_CONTRAGARANTIA C2
                              WHERE C2.SCONTGAR = CC.SCONTGAR)) FECMOD,
                    P_FINICIO FECHA_INICIO,
                    P_FFIN FECHA_FIN
    
      FROM AXIS.CTGAR_CODEUDOR       C1,
           AXIS.CTGAR_CONTRAGARANTIA CC,
           AXIS.PER_CONTRAGARANTIA   PC
    
     WHERE PC.SCONTGAR = C1.SCONTGAR
       AND C1.SCONTGAR = CC.SCONTGAR
       AND C1.NMOVIMI = CC.NMOVIMI
       AND CC.FALTA = (SELECT MAX(C2.FALTA)
                         FROM AXIS.CTGAR_CONTRAGARANTIA C2
                        WHERE C2.SCONTGAR = CC.SCONTGAR)
       AND CC.FCREA BETWEEN P_FINICIO AND P_FFIN;
BEGIN

  DELETE FROM FACT_CONTRAGARANTIAS_DUMMY;
  COMMIT;

  FOR ROWS IN RESULT(PI_FINICIO, PI_FFIN) LOOP
    INSERT INTO FACT_CONTRAGARANTIAS_DUMMY
      (FACT_CONTRA_ID,
       FK_PERSONA,
       TIPOGARANTIA,
       CLASEGARANTIA,
       FECHAEMISION,
       FECHACERRADA,
       FECHARETIRADA,
       FECHARADICADA,
       FECHAVENCIMIENTO,
       FK_SUCUR,
       FK_CODF1,
       CODF2,
       CODF3,
       CODF4,
       CODF5,
       DESCRIPCION,
       ESTADOGARANTIA,
       FK_MONEDAGAR,
       NUMDOCUMENTO,
       NUMDOCAUX,
       NUMRADICACION,
       POLIZA,
       VALORGARANTIA,
       VALORCERRADO,
       TENEDOR,
       FK_SUCREA,
       SUCMOD,
       FK_FECREA,
       FECMOD,
       FECHA_INICIO,
       FECHA_FIN)
    VALUES
      (SEQ_FACT_CONTRA.NEXTVAL,
       ROWS.FK_PERSONA,
       ROWS.TIPOGARANTIA,
       ROWS.CLASEGARANTIA,
       ROWS.FECHAEMISION,
       ROWS.FECHACERRADA,
       ROWS.FECHARETIRADA,
       ROWS.FECHARADICADA,
       ROWS.FECHAVENCIMIENTO,
       ROWS.FK_SUCUR,
       ROWS.FK_CODF1,
       ROWS.CODF2,
       ROWS.CODF3,
       ROWS.CODF4,
       ROWS.CODF5,
       ROWS.DESCRIPCION,
       ROWS.ESTADOGARANTIA,
       ROWS.FK_MONEDAGAR,
       ROWS.NUMDOCUMENTO,
       ROWS.NUMDOCAUX,
       ROWS.NUMRADICACION,
       ROWS.POLIZA,
       ROWS.VALORGARANTIA,
       ROWS.VALORCERRADO,
       ROWS.TENEDOR,
       ROWS.FK_SUCREA,
       ROWS.SUCMOD,
       ROWS.FK_FECREA,
       ROWS.FECMOD,
       ROWS.FECHA_INICIO,
       ROWS.FECHA_FIN);
  END LOOP;

  COMMIT;
END P_FACT_CONTRAGARANTIAS;
/
