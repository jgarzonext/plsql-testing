CREATE OR REPLACE PROCEDURE P_DET_SALDOS(PI_FINICIO IN DATE,
                                         PI_FFIN    IN DATE) IS

  CURSOR RESULT(P_FINICIO DATE, P_FFIN DATE) IS
    SELECT DISTINCT (AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                             SEG.CAGENTE,
                                                             NULL,
                                                             NULL)) SUCUR,
                    (SELECT PP1.NNUMIDE
                       FROM AXIS.PER_PERSONAS PP1
                      WHERE PP1.SPERSON = TOM.SPERSON
                        AND ROWNUM = 1) NITC,
                    (SELECT PP1.NNUMIDE
                       FROM AXIS.AGENTES AGE, AXIS.PER_PERSONAS PP1
                      WHERE PP1.SPERSON = AGE.SPERSON
                        AND AGE.CAGENTE = AG.CAGENTE
                        AND ROWNUM = 1) NITAGE,
                    SEG.NPOLIZA POLIZA,
                    (SELECT RD.NCERTDIAN
                       FROM AXIS.RANGO_DIAN_MOVSEGURO RD
                      WHERE RD.SSEGURO = SEG.SSEGURO
                        AND RD.NMOVIMI = MOVS.NMOVIMI
                        AND ROWNUM = 1) CERTIF,
                    SEG.FEFECTO FECINI,
                    SEG.FVENCIM FECTER,
                    SEG.FEMISIO FECEXP,
                    VMON.IPRINET PRIMA,
                    VMON.ITOTIMP IVA,
                    VMON.ITOTREC GASTOS,
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
                        AND A.CAGENTE = AG.CAGENTE
                        AND ROWNUM = 1) NOMAGE,
                    (SELECT DECODE(PPA.CTIPPER,
                                   1,
                                   PDA.TNOMBRE1 || ' ' || PDA.TNOMBRE2 || ' ' ||
                                   PDA.TAPELLI1 || ' ' || PDA.TAPELLI2,
                                   PDA.TAPELLI1)
                       FROM AXIS.PER_PERSONAS PPA,
                            AXIS.PER_DETPER   PDA
                      WHERE PDA.SPERSON = PPA.SPERSON
                        AND PPA.SPERSON = TOM.SPERSON
                        AND ROWNUM = 1) NOMCLI,
                    AXIS.PAC_ISQLFOR.F_DIRECCION(TOM.SPERSON,
                                                     NVL(TOM.CDOMICI, 1)) DIRECCION,
                    AXIS.PAC_ISQLFOR.F_PER_CONTACTOS(TOM.SPERSON, 1) TELEFONO,
                    AXIS.PAC_ISQLFOR.F_POBLACION(TOM.SPERSON,
                                                     NVL(TOM.CDOMICI, 1)) CIUDAD,
                    SYSDATE FECHACORTE,
                    (TRUNC(SYSDATE) - SEG.FEFECTO) + 1 MADUREZ,
                    HOM.CODRAM RAMO,
                    '1' TIP_ID_ASEG,
                    CASE
                      WHEN HOM.CODRAM = '01' THEN
                       '000005'
                      WHEN HOM.CODRAM = '02' THEN
                       '000006'
                      WHEN HOM.CODRAM = '03' THEN
                       '000012'
                    END CODRAM,
                    CASE
                      WHEN ROUND((SYSDATE - SEG.FEFECTO + 1), 2) BETWEEN 0 AND 45 THEN
                       'A'
                      WHEN ROUND((SYSDATE - SEG.FEFECTO + 1), 2) BETWEEN 46 AND 75 THEN
                       'B'
                      WHEN ROUND((SYSDATE - SEG.FEFECTO + 1), 2) BETWEEN 76 AND 90 THEN
                       'C'
                      WHEN ROUND((SYSDATE - SEG.FEFECTO + 1), 2) BETWEEN 91 AND 120 THEN
                       'D'
                      ELSE
                       'E'
                    END CALIFICACION,
                    '0' PROBABILIDAD,
                    '' EDAD,
                    (SELECT PP1.NNUMIDE
                       FROM AXIS.PER_PERSONAS PP1
                      WHERE PP1.SPERSON = TOM.SPERSON
                        AND ROWNUM = 1) CODIGO,
                    CASE
                      WHEN MOVS.CMOVSEG = 0 THEN
                       'N'
                      WHEN MOVS.CMOVSEG NOT IN (0, 3, 52, 53, 2) THEN
                       'M'
                      WHEN MOVS.CMOVSEG IN (3, 52) THEN
                       'A'
                      WHEN MOVS.CMOVSEG = 53 THEN
                       'C'
                      WHEN MOVS.CMOVSEG = 2 THEN
                       'R'
                    END TIPCER,
                    DECODE(TOM.CAGRUPA, NULL, 'NO', 'SI') CONSORCIO,
                    DECODE(AXIS.PAC_MONEDAS.F_MONEDA_PRODUCTO(SEG.SPRODUC),
                           8,
                           1,
                           6,
                           2,
                           1,
                           8) MONEDA,
                    CASE
                      WHEN AXIS.PAC_MONEDAS.F_MONEDA_PRODUCTO(SEG.SPRODUC) = 8 THEN
                       0
                      WHEN AXIS.PAC_MONEDAS.F_MONEDA_PRODUCTO(SEG.SPRODUC) = 6 THEN
                       AXIS.PAC_ECO_TIPOCAMBIO.F_CAMBIO('USD',
                                                            'COP',
                                                            MOVR.FCONTAB)
                      WHEN AXIS.PAC_MONEDAS.F_MONEDA_PRODUCTO(SEG.SPRODUC) = 1 THEN
                       AXIS.PAC_ECO_TIPOCAMBIO.F_CAMBIO('EUR',
                                                            'COP',
                                                            MOVR.FCONTAB)
                    END TRM,
                    DECODE(AXIS.PAC_MONEDAS.F_MONEDA_PRODUCTO(SEG.SPRODUC),
                           8,
                           '',
                           6,
                           ROUND((VMON.IPRINET /
                                 AXIS.PAC_ECO_TIPOCAMBIO.F_CAMBIO(DECODE((AXIS.PAC_MONEDAS.F_MONEDA_PRODUCTO(SEG.SPRODUC)),
                                                                              8,
                                                                              'COP',
                                                                              6,
                                                                              'USD',
                                                                              1,
                                                                              'EUR'),
                                                                       'COP',
                                                                       MOVR.FCONTAB)),
                                 2),
                           1,
                           ROUND((VMON.IPRINET /
                                 AXIS.PAC_ECO_TIPOCAMBIO.F_CAMBIO(DECODE((AXIS.PAC_MONEDAS.F_MONEDA_PRODUCTO(SEG.SPRODUC)),
                                                                              8,
                                                                              'COP',
                                                                              6,
                                                                              'USD',
                                                                              1,
                                                                              'EUR'),
                                                                       'COP',
                                                                       MOVR.FCONTAB)),
                                 2)) PRIMA_ME,
                    /*AG.PCOMISI*/
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
                           AND ROWNUM = 1)
                      WHEN SEG.CTIPCOM = 99 THEN
                       0
                    END POR_COM,
                    AG.PPARTICI PART_INT,
                    /*(SELECT SUM(COMR.ICOMBRU_MONCIA)
                     FROM AXIS.COMRECIBO COMR
                    WHERE COMR.NRECIBO = REC.NRECIBO
                      AND COMR.CAGENTE = AG.CAGENTE
                      AND COMR.NMOVIMI = MOVS.NMOVIMI
                      )*/
                    NULL VLR_COMI,
                    (SELECT PP1.NNUMIDE
                       FROM AXIS.AGENTES AGE, AXIS.PER_PERSONAS PP1
                      WHERE PP1.SPERSON = AGE.SPERSON
                        AND AGE.CAGENTE = AG.CAGENTE
                        AND ROWNUM = 1) COD_INT,
                    AXIS.PAC_ISQLFOR.F_DIRECCION((SELECT A.SPERSON
                                                       FROM AXIS.AGENTES A
                                                      WHERE A.CAGENTE =
                                                            AG.CAGENTE),
                                                     NVL((SELECT A.CDOMICI
                                                           FROM AXIS.AGENTES A
                                                          WHERE A.CAGENTE =
                                                                AG.CAGENTE),
                                                         1)) DIR_AGE,
                    AXIS.PAC_ISQLFOR.F_PER_CONTACTOS((SELECT A.SPERSON
                                                           FROM AXIS.AGENTES A
                                                          WHERE A.CAGENTE =
                                                                AG.CAGENTE),
                                                         1) TEL_AGE,
                    AXIS.PAC_ISQLFOR.F_POBLACION((SELECT A.SPERSON
                                                       FROM AXIS.AGENTES A
                                                      WHERE A.CAGENTE =
                                                            AG.CAGENTE),
                                                     NVL((SELECT A.CDOMICI
                                                           FROM AXIS.AGENTES A
                                                          WHERE A.CAGENTE =
                                                                AG.CAGENTE),
                                                         1)) CIUDAD_AGE,
                    (SELECT A.CLAVEINTER
                       FROM AXIS.AGENTES A
                      WHERE A.CAGENTE = AG.CAGENTE) CLAVE,
                    AXIS.PAC_REDCOMERCIAL.FF_DESAGENTE(AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                                                                   AG.CAGENTE,
                                                                                                   NULL,
                                                                                                   NULL),
                                                           8,
                                                           8) NOMSUC,
                    'SI' PROCESADO,
                    HOM.CODPLA CODPLA,
                    CASE
                      WHEN SEG.CTIPCOA = 0 THEN
                       1
                      WHEN SEG.CTIPCOA IN (1, 2) THEN
                       2
                      WHEN SEG.CTIPCOA IN (8, 9) THEN
                       3
                    END DIRECTO,
                    SEG.CTIPCOB TIPO_CART,
                    '' SERVIEFE,
                    '' CONSTANCIA,
                    CASE
                      WHEN REC.CGESCAR = 2 THEN
                       'SI'
                      ELSE
                       'NO'
                    END GESTION,
                    REC.NRECIBO PREIMP,
                    '' NROCTA
    
      FROM AXIS.SEGUROS            SEG,
           AXIS.TOMADORES          TOM,
           AXIS.VDETRECIBOS_MONPOL VMON,
           AXIS.RECIBOS            REC,
           AXIS.MOVSEGURO          MOVS,
           AXIS.HOMOLOGAPRODUC     HOM,
           AXIS.GARANSEG           GAR,
           AXIS.MOVRECIBO          MOVR,
           AXIS.AGE_CORRETAJE      AG
    
     WHERE HOM.SPRODUC = SEG.SPRODUC
       AND HOM.CGARANT = GAR.CGARANT
       AND HOM.CACTIVI = SEG.CACTIVI
       AND GAR.SSEGURO = SEG.SSEGURO
       AND MOVS.SSEGURO = SEG.SSEGURO
       AND VMON.NRECIBO = REC.NRECIBO
       AND MOVR.CMOTMOV = MOVS.CMOTMOV
       AND SEG.SSEGURO = TOM.SSEGURO
       AND MOVR.NRECIBO = REC.NRECIBO
       AND AG.SSEGURO = SEG.SSEGURO
       AND AG.NMOVIMI = MOVS.NMOVIMI
       AND MOVS.NMOVIMI = REC.NMOVIMI
          -- AND MOVR.CESTREC = 0
       AND AG.ISLIDER = 1
       AND REC.SSEGURO = SEG.SSEGURO
          /*  AND SEG.FEFECTO BETWEEN TO_DATE('28/11/2019', 'DD/MM/YYYY') AND
          TO_DATE('18/12/2019', 'DD/MM/YYYY')*/
       AND SEG.FEFECTO BETWEEN P_FINICIO AND P_FFIN
     ORDER BY SEG.NPOLIZA, TIPCER;

BEGIN

  DELETE FROM DET_SALDOS_DUMMY;
  COMMIT;

  FOR ROWS IN RESULT(PI_FINICIO, PI_FFIN) LOOP
  
    INSERT INTO DET_SALDOS_DUMMY
      (SALDO_ID,
       SUCUR,
       NITC,
       NITAGE,
       POLIZA,
       CERTIF,
       FECINI,
       FECTER,
       FECEXP,
       PRIMA,
       IVA,
       GASTOS,
       NOMAGE,
       DIRECCION,
       TELEFONO,
       CIUDAD,
       FECHACORTE,
       MADUREZ,
       RAMO,
       TIP_ID_ASEG,
       CODRAM,
       CALIFICACION,
       PROBABILIDAD,
       EDAD,
       CODIGO,
       TIPCER,
       CONSORCIO,
       MONEDA,
       TRM,
       PRIMA_ME,
       POR_COM,
       PART_INT,
       VLR_COMI,
       COD_INT,
       DIR_AGE,
       TEL_AGE,
       CIUDAD_AGE,
       CLAVE,
       NOMSUC,
       PROCESADO,
       CODPLA,
       DIRECTO,
       TIPO_CART,
       SERVIEFE,
       CONSTANCIA,
       GESTION,
       PREIMP,
       NROCTA)
    VALUES
      (SALDO_ID.NEXTVAL,
       ROWS.SUCUR,
       ROWS.NITC,
       ROWS.NITAGE,
       ROWS.POLIZA,
       ROWS.CERTIF,
       ROWS.FECINI,
       ROWS.FECTER,
       ROWS.FECEXP,
       ROWS.PRIMA,
       ROWS.IVA,
       ROWS.GASTOS,
       ROWS.NOMAGE,
       ROWS.DIRECCION,
       ROWS.TELEFONO,
       ROWS.CIUDAD,
       ROWS.FECHACORTE,
       ROWS.MADUREZ,
       ROWS.RAMO,
       ROWS.TIP_ID_ASEG,
       ROWS.CODRAM,
       ROWS.CALIFICACION,
       ROWS.PROBABILIDAD,
       ROWS.EDAD,
       ROWS.CODIGO,
       ROWS.TIPCER,
       ROWS.CONSORCIO,
       ROWS.MONEDA,
       ROWS.TRM,
       ROWS.PRIMA_ME,
       ROWS.POR_COM,
       ROWS.PART_INT,
       ROWS.VLR_COMI,
       ROWS.COD_INT,
       ROWS.DIR_AGE,
       ROWS.TEL_AGE,
       ROWS.CIUDAD_AGE,
       ROWS.CLAVE,
       ROWS.NOMSUC,
       ROWS.PROCESADO,
       ROWS.CODPLA,
       ROWS.DIRECTO,
       ROWS.TIPO_CART,
       ROWS.SERVIEFE,
       ROWS.CONSTANCIA,
       ROWS.GESTION,
       ROWS.PREIMP,
       ROWS.NROCTA);
  
  END LOOP;

  COMMIT;

END P_DET_SALDOS;
/
