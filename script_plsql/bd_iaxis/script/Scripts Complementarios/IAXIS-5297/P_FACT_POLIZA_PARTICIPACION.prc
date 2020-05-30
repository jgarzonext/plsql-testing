CREATE OR REPLACE PROCEDURE P_FACT_POLIZA_PARTICIPACION(PI_FINICIO IN DATE,
                                                        PI_FFIN    IN DATE) IS

  CURSOR RESULT(PI_FINICIO DATE, PI_FFIN DATE) IS
    SELECT DISTINCT SEG.NPOLIZA FPLP_NUM_POLIZA,
                    REC.NRECIBO,
                    (SELECT RD.NCERTDIAN
                       FROM AXIS.RANGO_DIAN_MOVSEGURO RD
                      WHERE RD.SSEGURO = SEG.SSEGURO
                        AND RD.NMOVIMI =
                            (SELECT MAX(M.NMOVIMI)
                               FROM AXIS.MOVSEGURO M
                              WHERE M.SSEGURO = SEG.SSEGURO)
                        AND ROWNUM = 1) FPLP_NUM_CERTIFICADO,
                    (SELECT NCERTDIAN
                       FROM (SELECT R.*,
                                    ROW_NUMBER() OVER(ORDER BY R.NMOVIMI DESC) AS ROW_NUM
                               FROM AXIS.RANGO_DIAN_MOVSEGURO R
                              WHERE R.SSEGURO = SEG.SSEGURO)
                      WHERE ROW_NUM = 2) FPLP_NUM_CERTIFICADO_ANT,
                    VMON.IPRINET PRIMA,
                    AXIS.PAC_PROPIO.F_VALOR_ASEGURADO(SEG.SSEGURO,
                                                          MOVS.NMOVIMI,
                                                          REC.NRIESGO) FPLP_VAL_ASEG,
                    CASE
                      WHEN TOM.CAGRUPA IS NULL OR TOM.CAGRUPA = 0 THEN
                       100
                      ELSE
                       PPR.PPARTICIPACION
                    END FPLP_PARTICIPACION_CLI,
                    '100' FPLP_PARTICIPACION_AGE,
                    CASE
                      WHEN TOM.CAGRUPA IS NULL OR TOM.CAGRUPA = 0 THEN
                       100
                      ELSE
                       PPR.PPARTICIPACION
                    END FPLP_PARTICIPACION_TOM,
                    (SELECT MAX(GEO_ID)
                       FROM DIM_GEOGRAFICA DG
                      WHERE DG.GEO_SUCURSAL = SUBSTR(TO_CHAR(AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                                                                     SEG.CAGENTE,
                                                                                                     NULL,
                                                                                                     NULL)),
                                                     3,
                                                     5)
                        AND DG.ESTADO = 'ACTIVO') FPLP_FK_SUCURSAL,
                    (SELECT MAX(DT.TIE_ID)
                       FROM DIM_TIEMPO DT
                      WHERE DT.ESTADO = 'ACTIVO'
                        AND DT.TIE_FECHA = SEG.FEFECTO) FPLP_FK_FECHA_INI,
                    (SELECT MAX(DT.TIE_ID)
                       FROM DIM_TIEMPO DT
                      WHERE DT.ESTADO = 'ACTIVO'
                        AND DT.TIE_FECHA = SEG.FVENCIM) FPLP_FK_FECHA_TER,
                    (SELECT MAX(DT.TIE_ID)
                       FROM DIM_TIEMPO DT
                      WHERE DT.ESTADO = 'ACTIVO'
                        AND DT.TIE_FECHA = SEG.FEMISIO) FPLP_FK_FECHA_EXP,
                    (SELECT MAX(DT.TIE_ID)
                       FROM DIM_TIEMPO DT
                      WHERE DT.ESTADO = 'ACTIVO'
                        AND DT.TIE_FECHA = SEG.FEMISIO) FPLP_FK_FECHA_CREA,
                    CASE
                      WHEN (SELECT COUNT(1)
                              FROM AXIS.GESCOBROS G
                             WHERE G.SSEGURO = SEG.SSEGURO) = 0 THEN
                       (SELECT MAX(PER_CODIGO)
                          FROM DIM_PERSONA DP
                         WHERE DP.ESTADO = 'ACTIVO'
                           AND DP.PER_PERSONA =
                               (SELECT PP1.NNUMIDE
                                  FROM AXIS.PER_PERSONAS PP1
                                 WHERE PP1.SPERSON = TOM.SPERSON))
                      ELSE
                       (SELECT MAX(PER_CODIGO)
                          FROM DIM_PERSONA DP
                         WHERE DP.ESTADO = 'ACTIVO'
                           AND DP.PER_PERSONA =
                               (SELECT PP1.NNUMIDE
                                  FROM AXIS.PER_PERSONAS PP1,
                                       AXIS.GESCOBROS    GE
                                 WHERE PP1.SPERSON = GE.SPERSON
                                   AND GE.SSEGURO = SEG.SSEGURO))
                    END FPLP_FK_CLIENTE,
                    (SELECT MAX(INTER.INTRM_ID)
                       FROM DIM_INTERMEDIARIO INTER
                      WHERE INTER.ESTADO = 'ACTIVO'
                        AND INTRM_INTERMEDIARIO =
                            (SELECT PP1.NNUMIDE
                               FROM AXIS.AGENTES      AGE,
                                    AXIS.PER_PERSONAS PP1
                              WHERE PP1.SPERSON = AGE.SPERSON
                                AND AGE.CAGENTE = SEG.CAGENTE
                                AND ROWNUM = 1)) FPLP_FK_AGENTE,
                    (SELECT MAX(DP.PER_CODIGO)
                       FROM DIM_PERSONA DP
                      WHERE DP.ESTADO = 'ACTIVO'
                        AND DP.PER_PERSONA =
                            (SELECT PP1.NNUMIDE
                               FROM AXIS.PER_PERSONAS PP1
                              WHERE PP1.SPERSON = TOM.SPERSON
                                AND ROWNUM = 1)) FPLP_FK_TOMADOR,
                    (SELECT MAX(USU_ID)
                       FROM DIM_USUARIO
                      WHERE ESTADO = 'ACTIVO'
                        AND USU_USUARIO = MOVS.CUSUMOV) FPLP_FK_USUARIO,
                    CASE
                      WHEN MOVS.CMOVSEG = 0 THEN
                       'N'
                      WHEN MOVS.CMOVSEG NOT IN (0, 2, 3, 52, 53) THEN
                       'M'
                      WHEN MOVS.CMOVSEG IN (3, 52) THEN
                       'A'
                      WHEN MOVS.CMOVSEG = 53 THEN
                       'C'
                      WHEN MOVS.CMOVSEG = 2 THEN
                       'R'
                    END FPLP_FK_TIPO_CERTIFICADO,
                    '' FPLP_FK_VINCULO_PERSONA_CLI,
                    '' FPLP_FK_VINCULO_PERSONA_AGE,
                    '' FPLP_FK_VINCULO_PERSONA_TOM,
                    '' FPLP_FK_ESTADO_VIGENCIA_POLIZA,
                    SYSDATE FECHA_REGISTRO,
                    'ACTIVO' ESTADO,
                    SYSDATE START_ESTADO,
                    AXIS.F_SYSDATE END_ESTADO,
                    AXIS.F_SYSDATE FECHA_CONTROL,
                    PI_FINICIO FECHA_INICIAL,
                    PI_FFIN FECHA_FIN,
                    VMON.ITOTIMP FPLP_VALIVA,
                    CASE
                      WHEN TOM.CAGRUPA IS NULL OR TOM.CAGRUPA = 0 THEN
                       'CARGUE NORMAL'
                      ELSE
                       'CARGUE VINC 99'
                    END FPLP_TIPO,
                    HOM.CODRAM FPLP_CODPLA,
                    CASE
                      WHEN SEG.CTIPCOA = 0 THEN
                       1
                      WHEN SEG.CTIPCOA IN (1, 2) THEN
                       2
                      WHEN SEG.CTIPCOA IN (8, 9) THEN
                       3
                    END FPLP_TIPCOA
    
      FROM AXIS.SEGUROS            SEG,
           AXIS.TOMADORES          TOM,
           AXIS.VDETRECIBOS_MONPOL VMON,
           AXIS.RECIBOS            REC,
           AXIS.MOVSEGURO          MOVS,
           AXIS.HOMOLOGAPRODUC     HOM,
           AXIS.GARANSEG           GAR,
           AXIS.MOVRECIBO          MOVR,
           AXIS.AGE_CORRETAJE      AG,
           AXIS.PER_PERSONAS_REL   PPR
    
     WHERE HOM.SPRODUC = SEG.SPRODUC
       AND HOM.CGARANT = GAR.CGARANT
       AND HOM.CACTIVI = SEG.CACTIVI
       AND GAR.SSEGURO = SEG.SSEGURO
       AND MOVS.SSEGURO = SEG.SSEGURO
       AND VMON.NRECIBO = REC.NRECIBO
       AND PPR.SPERSON = TOM.SPERSON
       AND PPR.CAGRUPA = TOM.CAGRUPA
       AND SEG.SSEGURO = TOM.SSEGURO
       AND MOVR.NRECIBO = REC.NRECIBO
       AND AG.SSEGURO = SEG.SSEGURO
       AND AG.NMOVIMI = MOVS.NMOVIMI
       AND MOVS.CMOTMOV = 100
       AND MOVS.NMOVIMI = (SELECT MAX(M.NMOVIMI)
                             FROM AXIS.MOVSEGURO M
                            WHERE M.SSEGURO = SEG.SSEGURO)
       AND REC.SSEGURO = SEG.SSEGURO
       AND SEG.FEFECTO BETWEEN PI_FINICIO AND PI_FFIN
    
     ORDER BY SEG.NPOLIZA;

BEGIN

  DELETE FROM FACT_POLIZA_PARTI_DUMMY;
  COMMIT;

  FOR ROWS IN RESULT(PI_FINICIO, PI_FFIN) LOOP
    INSERT INTO FACT_POLIZA_PARTI_DUMMY
      (FPLP_ID,
       FPLP_NUM_POLIZA,
       NRECIBO,
       FPLP_NUM_CERTIFICADO,
       FPLP_NUM_CERTIFICADO_ANT,
       PRIMA,
       FPLP_VAL_ASEG,
       FPLP_PARTICIPACION_CLI,
       FPLP_PARTICIPACION_AGE,
       FPLP_PARTICIPACION_TOM,
       FPLP_FK_SUCURSAL,
       FPLP_FK_FECHA_INI,
       FPLP_FK_FECHA_TER,
       FPLP_FK_FECHA_EXP,
       FPLP_FK_FECHA_CREA,
       FPLP_FK_CLIENTE,
       FPLP_FK_AGENTE,
       FPLP_FK_TOMADOR,
       FPLP_FK_USUARIO,
       FPLP_FK_TIPO_CERTIFICADO,
       FPLP_FK_VINCULO_PERSONA_CLI,
       FPLP_FK_VINCULO_PERSONA_AGE,
       FPLP_FK_VINCULO_PERSONA_TOM,
       FPLP_FK_ESTADO_VIGENCIA_POLIZA,
       FECHA_REGISTRO,
       ESTADO,
       START_ESTADO,
       END_ESTADO,
       FECHA_CONTROL,
       FECHA_INICIAL,
       FECHA_FIN,
       FPLP_VALIVA,
       FPLP_TIPO,
       FPLP_CODPLA,
       FPLP_TIPCOA)
    VALUES
      (FPLP_ID.NEXTVAL,
       ROWS.FPLP_NUM_POLIZA,
       ROWS.NRECIBO,
       ROWS.FPLP_NUM_CERTIFICADO,
       ROWS.FPLP_NUM_CERTIFICADO_ANT,
       ROWS.PRIMA,
       ROWS.FPLP_VAL_ASEG,
       ROWS.FPLP_PARTICIPACION_CLI,
       ROWS.FPLP_PARTICIPACION_AGE,
       ROWS.FPLP_PARTICIPACION_TOM,
       ROWS.FPLP_FK_SUCURSAL,
       ROWS.FPLP_FK_FECHA_INI,
       ROWS.FPLP_FK_FECHA_TER,
       ROWS.FPLP_FK_FECHA_EXP,
       ROWS.FPLP_FK_FECHA_CREA,
       ROWS.FPLP_FK_CLIENTE,
       ROWS.FPLP_FK_AGENTE,
       ROWS.FPLP_FK_TOMADOR,
       ROWS.FPLP_FK_USUARIO,
       ROWS.FPLP_FK_TIPO_CERTIFICADO,
       ROWS.FPLP_FK_VINCULO_PERSONA_CLI,
       ROWS.FPLP_FK_VINCULO_PERSONA_AGE,
       ROWS.FPLP_FK_VINCULO_PERSONA_TOM,
       ROWS.FPLP_FK_ESTADO_VIGENCIA_POLIZA,
       ROWS.FECHA_REGISTRO,
       ROWS.ESTADO,
       ROWS.START_ESTADO,
       ROWS.END_ESTADO,
       ROWS.FECHA_CONTROL,
       ROWS.FECHA_INICIAL,
       ROWS.FECHA_FIN,
       ROWS.FPLP_VALIVA,
       ROWS.FPLP_TIPO,
       ROWS.FPLP_CODPLA,
       ROWS.FPLP_TIPCOA);
  END LOOP;

  COMMIT;
END;
/
