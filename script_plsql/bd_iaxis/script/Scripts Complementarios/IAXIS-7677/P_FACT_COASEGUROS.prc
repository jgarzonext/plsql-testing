CREATE OR REPLACE PROCEDURE P_FACT_COASEGUROS(PI_FINICIO IN DATE,
                                              PI_FFIN    IN DATE) IS
  CURSOR RESULT(P_FINICIO DATE, P_FFIN DATE) IS
    SELECT DISTINCT (SELECT HOMCON.VALOR
                       FROM AXIS.HOMOLOGAR_MOVCONTABLE HOMCON
                      WHERE HOMCON.CTIPREC =
                            (SELECT MCON.CTIPREC
                               FROM AXIS.MOVCONTASAP MCON
                              WHERE MCON.SSEGURO = SEG.SSEGURO
                                AND MCON.NMOVIMI = MOVS.NMOVIMI
                                AND MCON.NRECIBO = REC.NRECIBO
                                AND ROWNUM = 1)) TIPO_MOVIMIENTO,
                    REC.NRECIBO NUM_RECIBO,
                    SEG.NPOLIZA NUM_POLIZA,
                    (SELECT RD.NCERTDIAN
                       FROM AXIS.RANGO_DIAN_MOVSEGURO RD
                      WHERE RD.SSEGURO = SEG.SSEGURO
                        AND RD.NMOVIMI = MOVS.NMOVIMI
                        AND ROWNUM = 1) NUM_CERTIFICADO,
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
                    END TIPO_CERTIFICADO,
                    REC.FEMISIO FECHA_EXPEDICION,
                    REC.FEFECTO FECHA_INICIO,
                    REC.FVENCIM FECHA_FIN,
                    VMON.ITOTPRI VALOR_PRIMA_RECIBO,
                    VMON.ITOTIMP VALOR_IVA_RECIBO,
                    VMON.ITOTREC VALOR_GASTOS_EXP_RECIBO,
                    '' VALOR_ASEGURADO_POLIZA, /* ALWAYS NULL */
                    HOM.CODRAM COD_RAMO,
                    HOM.TTITULO RAMO_DESC,
                    AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                            SEG.CAGENTE,
                                                            NULL,
                                                            NULL) SUCUR,
                    AXIS.PAC_REDCOMERCIAL.FF_DESAGENTE(AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                                                                   SEG.CAGENTE,
                                                                                                   NULL,
                                                                                                   NULL),
                                                           8,
                                                           8) SUCUR_DESC,
                    CASE
                      WHEN SEG.CTIPCOA = 0 THEN
                       1
                      WHEN SEG.CTIPCOA IN (1, 2) THEN
                       2
                      WHEN SEG.CTIPCOA IN (8, 9) THEN
                       3
                    END COD_TIPO_COASEGURO,
                    AXIS.FF_DESVALORFIJO(59, 8, SEG.CTIPCOA) DESC_TIPO_COASEGURO,
                    (SELECT PP1.NNUMIDE
                       FROM AXIS.AGENTES AGE, AXIS.PER_PERSONAS PP1
                      WHERE PP1.SPERSON = AGE.SPERSON
                        AND AGE.CAGENTE = SEG.CAGENTE
                        AND ROWNUM = 1) NIT_INTERMEDIARIO,
                    (SELECT DECODE(PPA.CTIPPER,
                                   1,
                                   PDA.TNOMBRE1 || ' ' || PDA.TNOMBRE2 || ' ' ||
                                   PDA.TAPELLI1 || ' ' || PDA.TAPELLI2,
                                   PDA.TAPELLI1)
                       FROM AXIS.PER_PERSONAS PPA,
                            AXIS.AGENTES      A,
                            AXIS.PER_DETPER   PDA
                      WHERE PDA.SPERSON = PPA.SPERSON
                        AND PPA.SPERSON = A.SPERSON
                        AND A.CAGENTE = SEG.CAGENTE
                        AND ROWNUM = 1) NOMB_INTERMEDIARIO,
                    CASE
                      WHEN SEG.CTIPCOM = 0 THEN
                       (SELECT C.PCOMISI
                          FROM AXIS.COMISIONPROD C, AXIS.AGENTES A
                         WHERE C.CCOMISI = A.CCOMISI
                           AND A.CAGENTE = SEG.CAGENTE
                           AND C.SPRODUC = SEG.SPRODUC
                           AND C.FINIVIG =
                               (SELECT MAX(FINIVIG)
                                  FROM AXIS.COMISIONVIG V
                                 WHERE V.CCOMISI = A.CCOMISI))
                      WHEN SEG.CTIPCOM IN (90, 92) THEN
                       (SELECT DISTINCT PCOMISI
                          FROM AXIS.COMISIONSEGU
                         WHERE SSEGURO = SEG.SSEGURO
                           AND NMOVIMI = MOVC.NMOVIMI)
                    /* AND ROWNUM = 1)*/
                      WHEN SEG.CTIPCOM = 99 THEN
                       0
                    END PORCENTAJE_COMISION_POLIZA,
                    CASE
                      WHEN AXIS.PAC_CONTAB_CONF.F_SSEGURO_CORETAJE(REC.NRECIBO) = 0 THEN
                       (SELECT SUM(COMR.ICOMBRU_MONCIA)
                          FROM AXIS.COMRECIBO COMR
                         WHERE REC.NRECIBO = COMR.NRECIBO
                           AND COMR.CAGENTE = SEG.CAGENTE)
                      ELSE
                       (SELECT SUM(COMR.ICOMBRU_MONCIA)
                          FROM AXIS.COMRECIBO COMR
                         WHERE REC.NRECIBO = COMR.NRECIBO
                        --AND COMR.NMOVIMI = MOVC.NMOVIMI
                        )
                    END VALOR_COMISION_INTERMEDIARIO, /* ALWAYS NULL */
                    (SELECT PP1.NNUMIDE
                       FROM AXIS.PER_PERSONAS PP1
                      WHERE PP1.SPERSON = TOM.SPERSON
                        AND ROWNUM = 1) NIT_TOMADOR,
                    (SELECT DECODE(PPA.CTIPPER,
                                   1,
                                   PDA.TNOMBRE1 || ' ' || PDA.TNOMBRE2 || ' ' ||
                                   PDA.TAPELLI1 || ' ' || PDA.TAPELLI2,
                                   PDA.TAPELLI1)
                       FROM AXIS.PER_PERSONAS PPA,
                            AXIS.PER_DETPER   PDA
                      WHERE PDA.SPERSON = PPA.SPERSON
                        AND PPA.SPERSON = TOM.SPERSON
                        AND ROWNUM = 1) NOMB_TOMADOR,
                    (SELECT PP1.NNUMIDE
                       FROM AXIS.ASEGURADOS   ASE,
                            AXIS.PER_PERSONAS PP1
                      WHERE PP1.SPERSON = ASE.SPERSON
                        AND ASE.SSEGURO = SEG.SSEGURO
                        AND ROWNUM = 1) NIT_ASEGURADO,
                    (SELECT DECODE(PPA.CTIPPER,
                                   1,
                                   PDA.TNOMBRE1 || ' ' || PDA.TNOMBRE2 || ' ' ||
                                   PDA.TAPELLI1 || ' ' || PDA.TAPELLI2,
                                   PDA.TAPELLI1)
                       FROM AXIS.PER_PERSONAS PPA,
                            AXIS.PER_DETPER   PDA,
                            AXIS.ASEGURADOS   ASE
                      WHERE PDA.SPERSON = PPA.SPERSON
                        AND PPA.SPERSON = ASE.SPERSON
                        AND ASE.SSEGURO = SEG.SSEGURO
                        AND ROWNUM = 1) NOMB_ASEGURADO,
                    (SELECT C.PLOCCOA
                       FROM AXIS.COACUADRO C
                      WHERE C.SSEGURO = SEG.SSEGURO
                        AND C.NCUACOA = MOVS.NMOVIMI) PORC_PARTICIP_LOCAL_COACED, /*PORCENTAJE_PARTICIPACION_LOCAL,*/
                    NULL PORC_PRIMA_CONFIANZA_COACEP, /*PORCENTAJE_PRIMA_CONFIANZA,*/
                    AXIS.PAC_COA.F_IMPCOA_CCOMP(SEG.SSEGURO,
                                                    COACE.CCOMPAN,
                                                    SYSDATE,
                                                    VMON.ICEDNET) VR_PRIMA_CEDIDA, /*VALOR_PRIMA_CONFIANZA,*/
                    COACE.PCESCOA PORC_COACEDIDO,
                    (SELECT PP1.NNUMIDE
                       FROM AXIS.PER_PERSONAS PP1
                      WHERE PP1.SPERSON = COMP.SPERSON
                        AND ROWNUM = 1) NIT_COASEGURADORA,
                    COMP.TCOMPANI NOMBRE_COASEGURADORA
    
      FROM AXIS.SEGUROS            SEG,
           AXIS.RECIBOS            REC,
           AXIS.VDETRECIBOS_MONPOL VMON,
           AXIS.HOMOLOGAPRODUC     HOM,
           AXIS.GARANSEG           GAR,
           AXIS.TOMADORES          TOM,
           AXIS.MOVSEGURO          MOVS,
           AXIS.COACEDIDO          COACE,
           AXIS.COMPANIAS          COMP,
           AXIS.MOVCONTASAP        MOVC,
           AXIS.AGE_CORRETAJE      AGEC
    
     WHERE MOVC.NMOVIMI = MOVS.NMOVIMI
       AND MOVC.SSEGURO = SEG.SSEGURO
       AND MOVC.NRECIBO = REC.NRECIBO
       AND COMP.CCOMPANI = COACE.CCOMPAN
       AND COACE.SSEGURO = SEG.SSEGURO
       AND COACE.NCUACOA = MOVS.NMOVIMI
       AND HOM.SPRODUC = SEG.SPRODUC
       AND HOM.CGARANT = GAR.CGARANT
       AND HOM.CACTIVI = SEG.CACTIVI
       AND GAR.SSEGURO = SEG.SSEGURO
       AND GAR.NMOVIMI = MOVS.NMOVIMI
       AND VMON.NRECIBO = REC.NRECIBO
       AND MOVS.SSEGURO = SEG.SSEGURO
       AND REC.SSEGURO = SEG.SSEGURO
       AND TOM.SSEGURO = SEG.SSEGURO
       AND SEG.SSEGURO = AGEC.SSEGURO(+)
       AND MOVC.NMOVIMI = AGEC.NMOVIMI(+)
       AND SEG.CTIPCOA IN (1, 2)
       AND SEG.FEFECTO BETWEEN P_FINICIO AND P_FFIN
    /*AND SEG.FEFECTO BETWEEN TO_DATE('01/11/2019', 'DD/MM/YYYY') AND
    TO_DATE('19/12/2019', 'DD/MM/YYYY')*/
    /*AND REC.NRECIBO = '900029977'*/
    -- ORDER BY SEG.NPOLIZA, MOVS.NMOVIMI
    
    UNION
    
    SELECT DISTINCT (SELECT HOMCON.VALOR
                       FROM AXIS.HOMOLOGAR_MOVCONTABLE HOMCON
                      WHERE HOMCON.CTIPREC =
                            (SELECT MCON.CTIPREC
                               FROM AXIS.MOVCONTASAP MCON
                              WHERE MCON.SSEGURO = SEG.SSEGURO
                                AND MCON.NMOVIMI = MOVS.NMOVIMI
                                AND MCON.NRECIBO = REC.NRECIBO
                                AND ROWNUM = 1)) TIPO_MOVIMIENTO,
                    REC.NRECIBO NUM_RECIBO,
                    SEG.NPOLIZA NUM_POLIZA,
                    (SELECT RD.NCERTDIAN
                       FROM AXIS.RANGO_DIAN_MOVSEGURO RD
                      WHERE RD.SSEGURO = SEG.SSEGURO
                        AND RD.NMOVIMI = MOVS.NMOVIMI
                        AND ROWNUM = 1) NUM_CERTIFICADO,
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
                    END TIPO_CERTIFICADO,
                    REC.FEMISIO FECHA_EXPEDICION,
                    REC.FEFECTO FECHA_INICIO,
                    REC.FVENCIM FECHA_FIN,
                    VMON.IPRINET VALOR_PRIMA_RECIBO,
                    VMON.ITOTIMP VALOR_IVA_RECIBO,
                    VMON.IDTOTEC VALOR_GASTOS_EXP_RECIBO,
                    '' VALOR_ASEGURADO_POLIZA, /* ALWAYS NULL */
                    HOM.CODRAM COD_RAMO,
                    HOM.TTITULO RAMO_DESC,
                    AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                            SEG.CAGENTE,
                                                            NULL,
                                                            NULL) SUCUR,
                    AXIS.PAC_REDCOMERCIAL.FF_DESAGENTE(AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                                                                   SEG.CAGENTE,
                                                                                                   NULL,
                                                                                                   NULL),
                                                           8,
                                                           8) SUCUR_DESC,
                    CASE
                      WHEN SEG.CTIPCOA = 0 THEN
                       1
                      WHEN SEG.CTIPCOA IN (1, 2) THEN
                       2
                      WHEN SEG.CTIPCOA IN (8, 9) THEN
                       3
                    END COD_TIPO_COASEGURO,
                    AXIS.FF_DESVALORFIJO(59, 8, SEG.CTIPCOA) DESC_TIPO_COASEGURO,
                    (SELECT PP1.NNUMIDE
                       FROM AXIS.AGENTES AGE, AXIS.PER_PERSONAS PP1
                      WHERE PP1.SPERSON = AGE.SPERSON
                        AND AGE.CAGENTE = SEG.CAGENTE
                        AND ROWNUM = 1) NIT_INTERMEDIARIO,
                    (SELECT DECODE(PPA.CTIPPER,
                                   1,
                                   PDA.TNOMBRE1 || ' ' || PDA.TNOMBRE2 || ' ' ||
                                   PDA.TAPELLI1 || ' ' || PDA.TAPELLI2,
                                   PDA.TAPELLI1)
                       FROM AXIS.PER_PERSONAS PPA,
                            AXIS.AGENTES      A,
                            AXIS.PER_DETPER   PDA
                      WHERE PDA.SPERSON = PPA.SPERSON
                        AND PPA.SPERSON = A.SPERSON
                        AND A.CAGENTE = SEG.CAGENTE
                        AND ROWNUM = 1) NOMB_INTERMEDIARIO,
                    CASE
                      WHEN SEG.CTIPCOM = 0 THEN
                       (SELECT C.PCOMISI
                          FROM AXIS.COMISIONPROD C, AXIS.AGENTES A
                         WHERE C.CCOMISI = A.CCOMISI
                           AND A.CAGENTE = SEG.CAGENTE
                           AND C.SPRODUC = SEG.SPRODUC
                           AND C.FINIVIG =
                               (SELECT MAX(FINIVIG)
                                  FROM AXIS.COMISIONVIG V
                                 WHERE V.CCOMISI = A.CCOMISI))
                      WHEN SEG.CTIPCOM IN (90, 92) THEN
                       (SELECT DISTINCT PCOMISI
                          FROM AXIS.COMISIONSEGU
                         WHERE SSEGURO = SEG.SSEGURO
                           AND NMOVIMI = MOVC.NMOVIMI)
                    /* AND ROWNUM = 1)*/
                      WHEN SEG.CTIPCOM = 99 THEN
                       0
                    END PORCENTAJE_COMISION_POLIZA,
                    CASE
                      WHEN AXIS.PAC_CONTAB_CONF.F_SSEGURO_CORETAJE(REC.NRECIBO) = 0 THEN
                       (SELECT SUM(COMR.ICOMBRU_MONCIA)
                          FROM AXIS.COMRECIBO COMR
                         WHERE REC.NRECIBO = COMR.NRECIBO
                           AND COMR.CAGENTE = SEG.CAGENTE)
                      ELSE
                       (SELECT SUM(COMR.ICOMBRU_MONCIA)
                          FROM AXIS.COMRECIBO COMR
                         WHERE REC.NRECIBO = COMR.NRECIBO
                        --AND COMR.NMOVIMI = MOVC.NMOVIMI
                        )
                    END VALOR_COMISION_INTERMEDIARIO, /* ALWAYS NULL */
                    (SELECT PP1.NNUMIDE
                       FROM AXIS.PER_PERSONAS PP1
                      WHERE PP1.SPERSON = TOM.SPERSON
                        AND ROWNUM = 1) NIT_TOMADOR,
                    (SELECT DECODE(PPA.CTIPPER,
                                   1,
                                   PDA.TNOMBRE1 || ' ' || PDA.TNOMBRE2 || ' ' ||
                                   PDA.TAPELLI1 || ' ' || PDA.TAPELLI2,
                                   PDA.TAPELLI1)
                       FROM AXIS.PER_PERSONAS PPA,
                            AXIS.PER_DETPER   PDA
                      WHERE PDA.SPERSON = PPA.SPERSON
                        AND PPA.SPERSON = TOM.SPERSON
                        AND ROWNUM = 1) NOMB_TOMADOR,
                    (SELECT PP1.NNUMIDE
                       FROM AXIS.ASEGURADOS   ASE,
                            AXIS.PER_PERSONAS PP1
                      WHERE PP1.SPERSON = ASE.SPERSON
                        AND ASE.SSEGURO = SEG.SSEGURO
                        AND ROWNUM = 1) NIT_ASEGURADO,
                    (SELECT DECODE(PPA.CTIPPER,
                                   1,
                                   PDA.TNOMBRE1 || ' ' || PDA.TNOMBRE2 || ' ' ||
                                   PDA.TAPELLI1 || ' ' || PDA.TAPELLI2,
                                   PDA.TAPELLI1)
                       FROM AXIS.PER_PERSONAS PPA,
                            AXIS.PER_DETPER   PDA,
                            AXIS.ASEGURADOS   ASE
                      WHERE PDA.SPERSON = PPA.SPERSON
                        AND PPA.SPERSON = ASE.SPERSON
                        AND ASE.SSEGURO = SEG.SSEGURO
                        AND ROWNUM = 1) NOMB_ASEGURADO,
                    NULL PORC_PARTICIP_LOCAL_COACED, /*PORCENTAJE_PARTICIPACION_LOCAL*/
                    COACU.PLOCCOA PORC_PRIMA_CONFIANZA_COACEP, /*PORCENTAJE_PRIMA_CONFIANZA,*/
                    VMON.IPRINET VR_PRIMA_CEDIDA, /*VALOR_PRIMA_CONFIANZA,*/
                    NULL PORC_COACEDIDO, /* ALWAYS NULL */
                    (SELECT PP1.NNUMIDE
                       FROM AXIS.PER_PERSONAS PP1
                      WHERE PP1.SPERSON = COMP.SPERSON
                        AND ROWNUM = 1) NIT_COASEGURADORA,
                    COMP.TCOMPANI NOMBRE_COASEGURADORA
    
      FROM AXIS.SEGUROS            SEG,
           AXIS.RECIBOS            REC,
           AXIS.VDETRECIBOS_MONPOL VMON,
           AXIS.HOMOLOGAPRODUC     HOM,
           AXIS.GARANSEG           GAR,
           AXIS.TOMADORES          TOM,
           AXIS.MOVSEGURO          MOVS,
           AXIS.COACUADRO          COACU,
           AXIS.COMPANIAS          COMP,
           AXIS.MOVCONTASAP        MOVC,
           AXIS.AGE_CORRETAJE      AGEC
    
     WHERE MOVC.NMOVIMI = MOVS.NMOVIMI
       AND MOVC.SSEGURO = SEG.SSEGURO
       AND MOVC.NRECIBO = REC.NRECIBO
       AND COMP.CCOMPANI = COACU.CCOMPAN
       AND COACU.SSEGURO = SEG.SSEGURO
       AND COACU.NCUACOA = MOVS.NMOVIMI
       AND HOM.SPRODUC = SEG.SPRODUC
       AND HOM.CGARANT = GAR.CGARANT
       AND HOM.CACTIVI = SEG.CACTIVI
       AND GAR.SSEGURO = SEG.SSEGURO
       AND GAR.NMOVIMI = MOVS.NMOVIMI
       AND VMON.NRECIBO = REC.NRECIBO
       AND MOVS.SSEGURO = SEG.SSEGURO
       AND REC.SSEGURO = SEG.SSEGURO
       AND TOM.SSEGURO = SEG.SSEGURO
       AND SEG.SSEGURO = AGEC.SSEGURO(+)
       AND MOVC.NMOVIMI = AGEC.NMOVIMI(+)
       AND SEG.CTIPCOA IN (8, 9)
          /*   AND SEG.FEFECTO BETWEEN TO_DATE('01/10/2019', 'DD/MM/YYYY') AND
          TO_DATE('19/12/2019', 'DD/MM/YYYY')*/
       AND SEG.FEFECTO BETWEEN P_FINICIO AND P_FFIN;
BEGIN

  DELETE FROM FACT_COASEGUROS_DUMMY;
  COMMIT;

  FOR ROWS IN RESULT(PI_FINICIO, PI_FFIN) LOOP
  
    INSERT INTO FACT_COASEGUROS_DUMMY
      (COASEG_ID,
       TIPO_MOVIMIENTO,
       NUM_RECIBO,
       NUM_POLIZA,
       NUM_CERTIFICADO,
       TIPO_CERTIFICADO,
       FECHA_EXPEDICION,
       FECHA_INICIO,
       FECHA_FIN,
       VALOR_PRIMA_RECIBO,
       VALOR_IVA_RECIBO,
       VALOR_GASTOS_EXP_RECIBO,
       VALOR_ASEGURADO_POLIZA,
       COD_RAMO,
       RAMO_DESC,
       SUCUR,
       SUCUR_DESC,
       COD_TIPO_COASEGURO,
       DESC_TIPO_COASEGURO,
       NIT_INTERMEDIARIO,
       NOMB_INTERMEDIARIO,
       PORCENTAJE_COMISION_POLIZA,
       VALOR_COMISION_INTERMEDIARIO,
       NIT_TOMADOR,
       NOMB_TOMADOR,
       NIT_ASEGURADO,
       NOMB_ASEGURADO,
       PORC_PARTICIP_LOCAL_COACED,
       PORC_PRIMA_CONFIANZA_COACEP,
       VR_PRIMA_CEDIDA,
       PORC_COACEDIDO,
       NIT_COASEGURADORA,
       NOMBRE_COASEGURADORA)
    VALUES
      (COASEG_ID.NEXTVAL,
       ROWS.TIPO_MOVIMIENTO,
       ROWS.NUM_RECIBO,
       ROWS.NUM_POLIZA,
       ROWS.NUM_CERTIFICADO,
       ROWS.TIPO_CERTIFICADO,
       ROWS.FECHA_EXPEDICION,
       ROWS.FECHA_INICIO,
       ROWS.FECHA_FIN,
       ROWS.VALOR_PRIMA_RECIBO,
       ROWS.VALOR_IVA_RECIBO,
       ROWS.VALOR_GASTOS_EXP_RECIBO,
       ROWS.VALOR_ASEGURADO_POLIZA,
       ROWS.COD_RAMO,
       ROWS.RAMO_DESC,
       ROWS.SUCUR,
       ROWS.SUCUR_DESC,
       ROWS.COD_TIPO_COASEGURO,
       ROWS.DESC_TIPO_COASEGURO,
       ROWS.NIT_INTERMEDIARIO,
       ROWS.NOMB_INTERMEDIARIO,
       ROWS.PORCENTAJE_COMISION_POLIZA,
       ROWS.VALOR_COMISION_INTERMEDIARIO,
       ROWS.NIT_TOMADOR,
       ROWS.NOMB_TOMADOR,
       ROWS.NIT_ASEGURADO,
       ROWS.NOMB_ASEGURADO,
       ROWS.PORC_PARTICIP_LOCAL_COACED,
       ROWS.PORC_PRIMA_CONFIANZA_COACEP,
       ROWS.VR_PRIMA_CEDIDA,
       ROWS.PORC_COACEDIDO,
       ROWS.NIT_COASEGURADORA,
       ROWS.NOMBRE_COASEGURADORA);
  END LOOP;
  COMMIT;

END P_FACT_COASEGUROS;
/