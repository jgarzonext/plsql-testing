CREATE OR REPLACE PROCEDURE P_FACT_SINIESTROS_PAGADOS(PI_FINICIO IN DATE,
                                                      PI_FFIN    IN DATE) IS
  CURSOR RESULT(P_FINICIO DATE, P_FFIN DATE) IS
    SELECT DISTINCT SEG.NPOLIZA SINPAG_NUM_POLIZA,
           (SELECT RD.NCERTDIAN
              FROM AXIS.RANGO_DIAN_MOVSEGURO RD
             WHERE RD.SSEGURO = SEG.SSEGURO
               AND RD.NMOVIMI = SSIN.NMOVIMI) SINPAG_NUM_CERTIFICADO,
           STP.SIDEPAG SINPAG_NUM_ORDEN,
           SSIN.NSINIES SINPAG_NUM_SINIESTRO,
           DECODE(STP.CMONRES,
                  'COP',
                  STP.ISINRET,
                  'USD',
                  STP.ISINRETPAG,
                  'EUR',
                  STP.ISINRETPAG) SINPAG_SINIESTRO_NETA,
           DECODE(STP.CMONRES,
                  'COP',
                  STP.IIVA,
                  'USD',
                  STP.IIVAPAG,
                  'EUR',
                  STP.IIVAPAG) SINPAG_SINIESTRO_IVA,
           DECODE(STP.CMONRES,
                  'COP',
                  STP.IRETEIVA,
                  'USD',
                  STP.IRETEIVAPAG,
                  'EUR',
                  STP.IRETEIVAPAG) SINPAG_SINIESTRO_RETEIVA,
           DECODE(STP.CMONRES,
                  'COP',
                  STP.IRETENC,
                  'USD',
                  STP.IRETENCPAG,
                  'EUR',
                  STP.IRETENCPAG) SINPAG_SINIESTRO_RETFTE,
           DECODE(STP.CMONRES,
                  'COP',
                  STP.IRETEICA,
                  'USD',
                  STP.IRETEICAPAG,
                  'EUR',
                  STP.IRETEICAPAG) SINPAG_SINIESTRO_ICA,
           DECODE(STP.CMONRES,
                  'COP',
                  (STP.ISINRET + STP.IIVA + STP.IRETEIVA + STP.IRETENC +
                  STP.IRETEICA),
                  'USD',
                  (STP.ISINRETPAG + STP.IIVAPAG + STP.IRETEIVAPAG +
                  STP.IRETENCPAG + STP.IRETEICAPAG),
                  'EUR',
                  (STP.ISINRETPAG + STP.IIVAPAG + STP.IRETEIVAPAG +
                  STP.IRETENCPAG + STP.IRETEICAPAG)) SINPAG_SINIESTRO_TOT,
           '' SINPAG_ORI_DOC_CRUCE,
           '' SINPAG_TIPO_DOC_CRUCE,
           '' SINPAG_NUM_DOC_CRUCE,
           '' SINPAG_SINIESTRO_CRUCE,
           '' SINPAG_SINIESTRO_IVA_CRUCE,
           '' SINPAG_SINIESTRO_RETEIVA_CRUCE,
           '' SINPAG_SINIESTRO_RETFTE_CRUCE,
           '' SINPAG_SINIESTRO_ICA_CRUCE,
           (SELECT MAX(DT.TIE_ID)
              FROM DIM_TIEMPO DT
             WHERE DT.TIE_FECHA = TRUNC(SSIN.FNOTIFI)
               AND DT.ESTADO = 'ACTIVO') SINPAG_FK_TIEMPO,
           (SELECT MAX(GEO_ID)
              FROM DIM_GEOGRAFICA
             WHERE ESTADO = 'ACTIVO'
               AND TO_CHAR(GEO_SUCURSAL) =
                   TO_CHAR(SUBSTR(AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                                          SEG.CAGENTE,
                                                                          NULL,
                                                                          NULL),
                                  3,
                                  5))) SINPAG_FK_GEOGRAFICA,
           DECODE(STP.CMONRES, 'COP', 1, 'USD', 2, 'EUR', 8) SINPAG_FK_MONEDA,
           (SELECT MAX(PER_CODIGO)
              FROM DIM_PERSONA
             WHERE ESTADO = 'ACTIVO'
               AND PER_PERSONA =
                   (SELECT PP1.NNUMIDE
                      FROM AXIS.TOMADORES TOM, AXIS.PER_PERSONAS PP1
                     WHERE PP1.SPERSON = TOM.SPERSON
                       AND TOM.SSEGURO = SEG.SSEGURO)) SINPAG_FK_PERSONA,
           HOM.CODRAM SINPAG_FK_TECNICA,
           TRUNC(SYSDATE) FECHA_CONTROL,
           TRUNC(SYSDATE) FECHA_REGISTRO,
           P_FINICIO FECHA_INICIO,
           P_FFIN FECHA_FIN,
           (SELECT MAX(INTRM_ID)
              FROM DIM_INTERMEDIARIO
             WHERE ESTADO = 'ACTIVO'
               AND INTRM_INTERMEDIARIO =
                   (SELECT PP1.NNUMIDE
                      FROM AXIS.AGENTES AGE, AXIS.PER_PERSONAS PP1
                     WHERE PP1.SPERSON = AGE.SPERSON
                       AND AGE.CAGENTE = SEG.CAGENTE)) SINPAG_FK_AGENTE,
           (SELECT MAX(DT.TIE_ID)
              FROM DIM_TIEMPO DT
             WHERE DT.TIE_FECHA = TRUNC(SSIN.FSINIES)
               AND DT.ESTADO = 'ACTIVO') SINPAG_FK_FECSINIESTRO,
           (SELECT MAX(DT.TIE_ID)
              FROM DIM_TIEMPO DT
             WHERE DT.TIE_FECHA = TRUNC(STP.FORDPAG)
               AND DT.ESTADO = 'ACTIVO') SINPAG_FK_FECDOC,
           (SELECT MAX(GEO_ID)
              FROM DIM_GEOGRAFICA
             WHERE ESTADO = 'ACTIVO'
               AND TO_CHAR(GEO_SUCURSAL) =
                   TO_CHAR(SUBSTR(AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                                          SEG.CAGENTE,
                                                                          NULL,
                                                                          NULL),
                                  3,
                                  5))) SINPAG_FK_SUCURSAL,
           (SELECT MAX(PER_CODIGO)
              FROM DIM_PERSONA
             WHERE ESTADO = 'ACTIVO'
               AND PER_PERSONA =
                   (SELECT PP1.NNUMIDE
                      FROM AXIS.TOMADORES TOM, AXIS.PER_PERSONAS PP1
                     WHERE PP1.SPERSON = TOM.SPERSON
                       AND TOM.SSEGURO = SEG.SSEGURO)) SINPAG_FK_CLIENTE,
           (SELECT MAX(PER_CODIGO)
              FROM DIM_PERSONA
             WHERE ESTADO = 'ACTIVO'
               AND PER_PERSONA =
                   (SELECT PP1.NNUMIDE
                      FROM AXIS.ASEGURADOS ASE, AXIS.PER_PERSONAS PP1
                     WHERE PP1.SPERSON = ASE.SPERSON
                       AND ASE.SSEGURO = SEG.SSEGURO
                       AND ROWNUM = 1)) SINPAG_FK_ASEGURADO,
           DECODE(STP.CMONRES,
                  'COP',
                  STP.ISINRET,
                  'USD',
                  STP.ISINRETPAG,
                  'EUR',
                  STP.ISINRETPAG) SINPAG_SINIESTRO_BASE,
           DECODE(STP.CMONRES,
                  'COP',
                  STP.IFRANQ,
                  'USD',
                  STP.IFRANQPAG,
                  'EUR',
                  STP.IFRANQPAG) SINPAG_SINIESTRO_DEDUCIBLE
    
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
       AND STM.CESTPAG IN (0, 2)
       AND STP.CTIPPAG = 2
       AND STM.NMOVPAG = (SELECT MAX(STM1.NMOVPAG)
                            FROM AXIS.SIN_TRAMITA_MOVPAGO STM1
                           WHERE STM1.SIDEPAG = STP.SIDEPAG)
       AND STP.NSINIES = SSIN.NSINIES
       AND STP.FORDPAG BETWEEN P_FINICIO AND P_FFIN;
BEGIN
  DELETE FROM FACT_SINIESTROS_PGD_DUMMY;
  COMMIT;

  FOR ROWS IN RESULT(PI_FINICIO, PI_FFIN) LOOP
  
    INSERT INTO FACT_SINIESTROS_PGD_DUMMY
      (SIN_PAG_ID,
       SINPAG_NUM_POLIZA,
       SINPAG_NUM_CERTIFICADO,
       SINPAG_NUM_ORDEN,
       SINPAG_NUM_SINIESTRO,
       SINPAG_SINIESTRO_NETA,
       SINPAG_SINIESTRO_IVA,
       SINPAG_SINIESTRO_RETEIVA,
       SINPAG_SINIESTRO_RETFTE,
       SINPAG_SINIESTRO_ICA,
       SINPAG_SINIESTRO_TOT,
       SINPAG_ORI_DOC_CRUCE,
       SINPAG_TIPO_DOC_CRUCE,
       SINPAG_NUM_DOC_CRUCE,
       SINPAG_SINIESTRO_CRUCE,
       SINPAG_SINIESTRO_IVA_CRUCE,
       SINPAG_SINIESTRO_RETEIVA_CRUCE,
       SINPAG_SINIESTRO_RETFTE_CRUCE,
       SINPAG_SINIESTRO_ICA_CRUCE,
       SINPAG_FK_TIEMPO,
       SINPAG_FK_GEOGRAFICA,
       SINPAG_FK_MONEDA,
       SINPAG_FK_PERSONA,
       SINPAG_FK_TECNICA,
       FECHA_CONTROL,
       FECHA_REGISTRO,
       FECHA_INICIO,
       FECHA_FIN,
       SINPAG_FK_AGENTE,
       SINPAG_FK_FECSINIESTRO,
       SINPAG_FK_FECDOC,
       SINPAG_FK_SUCURSAL,
       SINPAG_FK_CLIENTE,
       SINPAG_FK_ASEGURADO,
       SINPAG_SINIESTRO_BASE,
       SINPAG_SINIESTRO_DEDUCIBLE)
    VALUES
      (SEQ_FACT_SIN_PAG.NEXTVAL,
       ROWS.SINPAG_NUM_POLIZA,
       ROWS.SINPAG_NUM_CERTIFICADO,
       ROWS.SINPAG_NUM_ORDEN,
       ROWS.SINPAG_NUM_SINIESTRO,
       ROWS.SINPAG_SINIESTRO_NETA,
       ROWS.SINPAG_SINIESTRO_IVA,
       ROWS.SINPAG_SINIESTRO_RETEIVA,
       ROWS.SINPAG_SINIESTRO_RETFTE,
       ROWS.SINPAG_SINIESTRO_ICA,
       ROWS.SINPAG_SINIESTRO_TOT,
       ROWS.SINPAG_ORI_DOC_CRUCE,
       ROWS.SINPAG_TIPO_DOC_CRUCE,
       ROWS.SINPAG_NUM_DOC_CRUCE,
       ROWS.SINPAG_SINIESTRO_CRUCE,
       ROWS.SINPAG_SINIESTRO_IVA_CRUCE,
       ROWS.SINPAG_SINIESTRO_RETEIVA_CRUCE,
       ROWS.SINPAG_SINIESTRO_RETFTE_CRUCE,
       ROWS.SINPAG_SINIESTRO_ICA_CRUCE,
       ROWS.SINPAG_FK_TIEMPO,
       ROWS.SINPAG_FK_GEOGRAFICA,
       ROWS.SINPAG_FK_MONEDA,
       ROWS.SINPAG_FK_PERSONA,
       ROWS.SINPAG_FK_TECNICA,
       ROWS.FECHA_CONTROL,
       ROWS.FECHA_REGISTRO,
       ROWS.FECHA_INICIO,
       ROWS.FECHA_FIN,
       ROWS.SINPAG_FK_AGENTE,
       ROWS.SINPAG_FK_FECSINIESTRO,
       ROWS.SINPAG_FK_FECDOC,
       ROWS.SINPAG_FK_SUCURSAL,
       ROWS.SINPAG_FK_CLIENTE,
       ROWS.SINPAG_FK_ASEGURADO,
       ROWS.SINPAG_SINIESTRO_BASE,
       ROWS.SINPAG_SINIESTRO_DEDUCIBLE);
    COMMIT;
  END LOOP;

END;
/
