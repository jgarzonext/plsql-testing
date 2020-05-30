CREATE OR REPLACE PROCEDURE P_FACT_CONTRAGARANTIAS_BDG(PI_FINICIO IN DATE,
                                                       PI_FFIN    IN DATE) IS

  CURSOR RESULT(PI_FINICIO DATE, PI_FFIN DATE) IS
    SELECT DISTINCT (SELECT MAX(DP.PER_CODIGO)
                       FROM DIM_PERSONA DP
                      WHERE DP.PER_PERSONA =
                            (SELECT PP.NNUMIDE
                               FROM AXIS.PER_PERSONAS PP
                              WHERE PP.SPERSON = PC.SPERSON)
                        AND DP.ESTADO = 'ACTIVO') FK_PERSONA,
                    AXIS.FF_DESVALORFIJO(8001035, 8, CC.CTIPO) TIPOGARANTIA,
                    AXIS.FF_DESVALORFIJO(8001036, 8, CC.CCLASE) CLASEGARANTIA,
                    CC.FALTA FECHAEMISION,
                    NULL FECHACERRADA,
                    NULL FECHARETIRADA,
                    CC.FCREA FECHARADICADA,
                    CC.FVENCIMI FECHAVENCIMIENTO,
                    (SELECT MAX(GEO_ID)
                       FROM DIM_GEOGRAFICA DG
                      WHERE DG.GEO_SUCURSAL =
                            SUBSTR(TO_CHAR((SELECT AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                                                          PP.CAGENTE,
                                                                                          NULL,
                                                                                          NULL)
                                             FROM AXIS.PER_PERSONAS PP
                                            WHERE PP.SPERSON = PC.SPERSON)),
                                   3,
                                   5)
                        AND DG.ESTADO = 'ACTIVO') FK_SUCUR,
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
                    AXIS.FF_DESVALORFIJO(8001038, 8, CC.CESTADO) ESTADOGARANTIA,
                    DECODE(CC.CMONEDA, 'COP', 1, 'USD', 2, 'EUR', 8) FK_MONEDAGAR,
                    CC.NEMPRESA NUMDOCUMENTO,
                    CC.DOCUMENTO NUMDOCAUX,
                    CC.NRADICA NUMRADICACION,
                    (SELECT MAX(DP.POL_ID)
                       FROM DIM_POLIZA DP
                      WHERE DP.ESTADO = 'ACTIVO'
                        AND DP.POL_NUM_POLIZA =
                            (SELECT TO_CHAR(SEG.NPOLIZA)
                               FROM AXIS.CTGAR_SEGURO CTS,
                                    AXIS.SEGUROS      SEG
                              WHERE SEG.SSEGURO = CTS.SSEGURO
                                AND CTS.SCONTGAR = CC.SCONTGAR
                                AND CTS.NMOVIMI = CTS.NMOVIMI
                                AND CC.CESTADO = 2)) FK_POL,
                    (SELECT MAX(DP.PER_CODIGO)
                       FROM DIM_PERSONA DP
                      WHERE DP.PER_PERSONA =
                            (SELECT PP1.NNUMIDE
                               FROM AXIS.PER_PERSONAS PP1
                              WHERE PP1.SPERSON = PC.SPERSON)
                        AND DP.ESTADO = 'ACTIVO') FK_TOMADOR,
                    (SELECT MAX(DP.PER_CODIGO)
                       FROM DIM_PERSONA DP
                      WHERE DP.PER_PERSONA =
                            (SELECT PP1.NNUMIDE
                               FROM AXIS.ASEGURADOS   ASE,
                                    AXIS.PER_PERSONAS PP1,
                                    AXIS.CTGAR_SEGURO CTS
                              WHERE PP1.SPERSON = ASE.SPERSON
                                AND ASE.SSEGURO = CTS.SSEGURO
                                AND CTS.SCONTGAR = CC.SCONTGAR
                                AND CTS.NMOVIMI = CC.NMOVIMI
                                AND ROWNUM = 1)
                        AND DP.ESTADO = 'ACTIVO') FK_ASEGURADO,
                    (SELECT MAX(DP.PER_CODIGO)
                       FROM DIM_PERSONA DP
                      WHERE DP.PER_PERSONA =
                            (SELECT PP1.NNUMIDE
                               FROM AXIS.BENESPSEG    BEN,
                                    AXIS.PER_PERSONAS PP1,
                                    AXIS.CTGAR_SEGURO CTS
                              WHERE PP1.SPERSON = BEN.SPERSON
                                AND BEN.SSEGURO = CTS.SSEGURO
                                AND BEN.FFINBEN IS NULL
                                AND BEN.CPAREN = 0
                                AND CTS.SCONTGAR = CC.SCONTGAR
                                AND CTS.NMOVIMI = CC.NMOVIMI
                                AND ROWNUM = 1)
                        AND DP.ESTADO = 'ACTIVO') FK_BENEFICIARIO,
                    NULL FK_DIM_CONTRAGARANTIA,
                    CC.IVALOR VALORGARANTIA,
                    CC.IVALOR VALORCERRADO,
                    AXIS.FF_DESVALORFIJO(8001037, 8, CC.CTENEDOR) TENEDOR_DESC,
                    CC.CTENEDOR TENEDOR_COD,
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
                    PI_FINICIO FECHA_INICIO,
                    PI_FFIN FECHA_FIN,
                    CC.FCREA FECHA_REGISTRO,
                    'ACTIVO' ESTADO,
                    SYSDATE START_ESTADO,
                    SYSDATE END_ESTADO,
                    (SELECT MAX(DI.INTRM_ID)
                       FROM DIM_INTERMEDIARIO DI
                      WHERE DI.ESTADO = 'ACTIVO'
                        AND DI.INTRM_INTERMEDIARIO =
                            (SELECT PP1.NNUMIDE
                               FROM AXIS.PER_PERSONAS PP1
                              WHERE PP1.SPERSON = PC.SPERSON)) FK_AGENTE,
                    PI_FINICIO FECHA_CONTROL,
                    CC.CESTADO ESTADOGARANTIA_COD,
                    CC.CTIPO TIPOGARANTIA_COD,
                    CC.CCLASE CLASEGARANTIA_COD
    
      FROM AXIS.CTGAR_CODEUDOR       C1,
           AXIS.CTGAR_CONTRAGARANTIA CC,
           AXIS.PER_CONTRAGARANTIA   PC
    
     WHERE PC.SCONTGAR = C1.SCONTGAR
       AND C1.SCONTGAR = CC.SCONTGAR
       AND C1.NMOVIMI = CC.NMOVIMI
       AND CC.FALTA = (SELECT MAX(C2.FALTA)
                         FROM AXIS.CTGAR_CONTRAGARANTIA C2
                        WHERE C2.SCONTGAR = CC.SCONTGAR)
       AND CC.FCREA BETWEEN PI_FINICIO AND PI_FFIN;
  /*AND CC.FCREA BETWEEN TO_DATE('01/07/2019', 'DD/MM/YYYY') AND
  TO_DATE('18/12/2019', 'DD/MM/YYYY');*/

BEGIN

  DELETE FROM FACT_CONTRAGARANTIAS_BDG_DUMMY;
  COMMIT;

  FOR ROWS IN RESULT(PI_FINICIO, PI_FFIN) LOOP
    INSERT INTO FACT_CONTRAGARANTIAS_BDG_DUMMY
      (FCG_ID,
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
       ESTADOGARANTIA,
       FK_MONEDAGAR,
       NUMDOCUMENTO,
       NUMDOCAUX,
       NUMRADICACION,
       FK_POL,
       FK_TOMADOR,
       FK_ASEGURADO,
       FK_BENEFICIARIO,
       FK_DIM_CONTRAGARANTIA,
       VALORGARANTIA,
       VALORCERRADO,
       TENEDOR_DESC,
       TENEDOR_COD,
       FK_SUCREA,
       SUCMOD,
       FK_FECREA,
       FECMOD,
       FECHA_INICIO,
       FECHA_FIN,
       FECHA_REGISTRO,
       ESTADO,
       START_ESTADO,
       END_ESTADO,
       FK_AGENTE,
       FECHA_CONTROL,
       ESTADOGARANTIA_COD,
       TIPOGARANTIA_COD,
       CLASEGARANTIA_COD)
    VALUES
      (FCG_ID.NEXTVAL,
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
       ROWS.ESTADOGARANTIA,
       ROWS.FK_MONEDAGAR,
       ROWS.NUMDOCUMENTO,
       ROWS.NUMDOCAUX,
       ROWS.NUMRADICACION,
       ROWS.FK_POL,
       ROWS.FK_TOMADOR,
       ROWS.FK_ASEGURADO,
       ROWS.FK_BENEFICIARIO,
       ROWS.FK_DIM_CONTRAGARANTIA,
       ROWS.VALORGARANTIA,
       ROWS.VALORCERRADO,
       ROWS.TENEDOR_DESC,
       ROWS.TENEDOR_COD,
       ROWS.FK_SUCREA,
       ROWS.SUCMOD,
       ROWS.FK_FECREA,
       ROWS.FECMOD,
       ROWS.FECHA_INICIO,
       ROWS.FECHA_FIN,
       ROWS.FECHA_REGISTRO,
       ROWS.ESTADO,
       ROWS.START_ESTADO,
       ROWS.END_ESTADO,
       ROWS.FK_AGENTE,
       ROWS.FECHA_CONTROL,
       ROWS.ESTADOGARANTIA_COD,
       ROWS.TIPOGARANTIA_COD,
       ROWS.CLASEGARANTIA_COD);
  END LOOP;

  COMMIT;
END P_FACT_CONTRAGARANTIAS_BDG;
/
