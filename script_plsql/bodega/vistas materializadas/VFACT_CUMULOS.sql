--------------------------------------------------------
--  DDL for Materialized View VFACT_CUMULOS
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."VFACT_CUMULOS" ("NUM_POLIZA", "NUM_CERTIFICADO", "NUM_ORDEN", "NUM_COBERTURA", "VALOR_ASEGURADO", "PRIMA_REASEG", "FECHA_DESDE", "FECHA_HASTA", "FECHA_COLOCACION", "CLASE_CONTRATO1", "CONTRATO1", "PORCENTAJE1", "VALOR_RESEG1", "CLASE_CONTRATO2", "CONTRATO2", "PORCENTAJE2", "VALOR_RESEG2", "CLASE_CONTRATO3", "CONTRATO3", "PORCENTAJE3", "VALOR_RESEG3", "CONTRATO4", "PORCENTAJE4", "VALOR_RESEG4", "CONTRATO5", "PORCENTAJE5", "VALOR_RESEG5", "CUMULO_TOTAL", "CUM_CLASE_CONTRATOFAC", "CUM_PORCENTAJEFAC", "CUM_VALOR_RESEGFAC", "CUM_FK_TIEMPO", "CUM_FK_GEOGRAFICA", "CUM_FK_MONEDA", "CUM_FK_TECNICO", "CUM_FK_RANGOVLRASEGURADO", "CUM_FK_PERSONA", "FECHA_REGISTRO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN", "PAQUETE", "SUCREA", "LIMITE_ROJO")
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 0 INITRANS 2 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CONF_DWH" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE QUERY REWRITE
  AS SELECT 
       Q1.NUM_POLIZA,
       Q1.NUM_CERTIFICADO,
       Q1.NUM_ORDEN,
       Q1.NUM_COBERTURA,
       Q1.VALOR_ASEGURADO,
       Q1.PRIMA_REASEG,
       Q1.FECHA_DESDE,
       Q1.FECHA_HASTA,
       Q1.FECHA_COLOCACION,
       Q1.CLASE_CONTRATO1,
       Q1.CONTRATO1,
       ROUND (DECODE(Q1.CUMULO_TOTAL,0,0,((Q1.VALOR_RESEG1*100)/Q1.CUMULO_TOTAL)),2)PORCENTAJE1,
       Q1.VALOR_RESEG1,
       Q1.CLASE_CONTRATO2,
       Q1.CONTRATO2,
       ROUND(DECODE(Q1.CUMULO_TOTAL,0,0,((Q1.VALOR_RESEG2*100)/Q1.CUMULO_TOTAL)),2)PORCENTAJE2,
       Q1.VALOR_RESEG2,
       Q1.CLASE_CONTRATO3,
       Q1.CONTRATO3,
       ROUND(DECODE(Q1.CUMULO_TOTAL,0,0,((Q1.VALOR_RESEG3*100)/Q1.CUMULO_TOTAL)),2)PORCENTAJE3,
       Q1.VALOR_RESEG3,
       Q1.CONTRATO4,
       ROUND(DECODE(Q1.CUMULO_TOTAL,0,0,((Q1.VALOR_RESEG4*100)/Q1.CUMULO_TOTAL)),2)PORCENTAJE4,
       Q1.VALOR_RESEG4,
       Q1.CONTRATO5,
       ROUND(DECODE(Q1.CUMULO_TOTAL,0,0,((Q1.VALOR_RESEG5*100)/Q1.CUMULO_TOTAL)),2)PORCENTAJE5,
       Q1.VALOR_RESEG5,
       Q1.CUMULO_TOTAL,
        Q1.CUM_CLASE_CONTRATOFAC,
        Q1.CUM_PORCENTAJEFAC,
        Q1.CUM_VALOR_RESEGFAC,
        Q1.CUM_FK_TIEMPO,
        Q1.CUM_FK_GEOGRAFICA,
        Q1.CUM_FK_MONEDA,
        Q1.CUM_FK_TECNICO,
        Q1.CUM_FK_RANGOVLRASEGURADO,
        Q1.CUM_FK_PERSONA,
        Q1.FECHA_REGISTRO, 
        Q1.FECHA_CONTROL,
        Q1.FECHA_INICIAL,
        Q1.FECHA_FIN,
        Q1.PAQUETE,
        Q1.SUCREA,
        Q1.LIMITE_ROJO
        FROM
(SELECT A.NUM_POLIZA,
       A.NUM_CERTIFICADO,
       A.NUM_ORDEN,
       A.NUM_COBERTURA,
       SUM(A.VALOR_ASEGURADO)VALOR_ASEGURADO,
       SUM(A.PRIMA_REASEG)PRIMA_REASEG,
       A.FECHA_DESDE,
       A.FECHA_HASTA,
       A.FECHA_COLOCACION,
       A.CLASE_CONTRATO1,
       A.CONTRATO1,
       SUM(A.VALOR_RESEG1) VALOR_RESEG1,
       A.CLASE_CONTRATO2,
       A.CONTRATO2,
       SUM(A.VALOR_RESEG2) VALOR_RESEG2,
       A.CLASE_CONTRATO3,
       A.CONTRATO3,
       SUM(A.VALOR_RESEG3) VALOR_RESEG3,
       A.CONTRATO4,
       SUM(A.VALOR_RESEG4) VALOR_RESEG4,
       A.CONTRATO5,
       SUM(A.VALOR_RESEG5) VALOR_RESEG5,
       SUM(A.CUMULO_TOTAL) CUMULO_TOTAL,
        A.CUM_CLASE_CONTRATOFAC,
        A.CUM_PORCENTAJEFAC,
        A.CUM_VALOR_RESEGFAC,
        A.CUM_FK_TIEMPO,
        A.CUM_FK_GEOGRAFICA,
        A.CUM_FK_MONEDA,
        A.CUM_FK_PERSONA,
        A.CUM_FK_TECNICO,
        A.CUM_FK_RANGOVLRASEGURADO,
        A.FECHA_REGISTRO, 
        A.FECHA_CONTROL,
        A.FECHA_INICIAL,
        A.FECHA_FIN,
        A.PAQUETE,
        A.SUCREA,
        A.LIMITE_ROJO
       FROM
(


SELECT DISTINCT 
S.SSEGURO,
  S.NPOLIZA NUM_POLIZA,
  RDM.NCERTDIAN NUM_CERTIFICADO,
  M.NMOVIMI NUM_ORDEN,
  G.CGARANT NUM_COBERTURA,
	G.ICAPITAL VALOR_ASEGURADO,
	G.IPRIDEV PRIMA_REASEG,
	G.FINIEFE FECHA_DESDE,
	G.FFINEFE FECHA_HASTA,
	' ' FECHA_COLOCACION,
  ' ' CLASE_CONTRATO1,

 CTO1.CONTRATO1,  
	' ' PORCENTAJE1,
  DECODE(CES.CTRAMO, 1, NVL((PAC_ECO_TIPOCAMBIO.F_IMPORTE_CAMBIO(MON.CMONINT, 'COP', TO_DATE(SYSDATE), DCE.ICAPCES)), 0), 0) + DECODE(CES.CTRAMO, 0, 
                        DECODE(NVL(CTRAMPA, 0), 1, NVL((PAC_ECO_TIPOCAMBIO.F_IMPORTE_CAMBIO(MON.CMONINT, 'COP', TO_DATE(SYSDATE), DCE.ICAPCES)), 0), 0), 0) VALOR_RESEG1,
  ' ' CLASE_CONTRATO2,
  CTO2.CONTRATO2,
	' ' PORCENTAJE2,
  DECODE(CES.CTRAMO, 2, NVL((PAC_ECO_TIPOCAMBIO.F_IMPORTE_CAMBIO(MON.CMONINT, 'COP', TO_DATE(SYSDATE), DCE.ICAPCES)), 0), 0) + DECODE(CES.CTRAMO, 0,
                        DECODE(NVL(CTRAMPA, 0), 2,  NVL((PAC_ECO_TIPOCAMBIO.F_IMPORTE_CAMBIO(MON.CMONINT, 'COP', TO_DATE(SYSDATE), DCE.ICAPCES)), 0), 0), 0) VALOR_RESEG2,
  ' ' CLASE_CONTRATO3,
  CTO3.CONTRATO3,
	' ' PORCENTAJE3,
  DECODE(CES.CTRAMO, 3, NVL((PAC_ECO_TIPOCAMBIO.F_IMPORTE_CAMBIO(MON.CMONINT, 'COP', TO_DATE(SYSDATE), DCE.ICAPCES)), 0), 0) + DECODE(CES.CTRAMO, 0,
                        DECODE(NVL(CTRAMPA, 0), 3, NVL((PAC_ECO_TIPOCAMBIO.F_IMPORTE_CAMBIO(MON.CMONINT, 'COP', TO_DATE(SYSDATE), DCE.ICAPCES)), 0), 0), 0) VALOR_RESEG3,
  CTO4.CONTRATO4,
	' ' PORCENTAJE4,
  DECODE(CES.CTRAMO, 4, NVL((PAC_ECO_TIPOCAMBIO.F_IMPORTE_CAMBIO(MON.CMONINT, 'COP', TO_DATE(SYSDATE), DCE.ICAPCES)), 0), 0) + DECODE(CES.CTRAMO, 0,
                        DECODE(NVL(CTRAMPA, 0), 4, NVL((PAC_ECO_TIPOCAMBIO.F_IMPORTE_CAMBIO(MON.CMONINT, 'COP', TO_DATE(SYSDATE), DCE.ICAPCES)), 0), 0), 0) VALOR_RESEG4,
  CTO5.CONTRATO5,
	' ' PORCENTAJE5,
  DECODE(CES.CTRAMO, 5, NVL((PAC_ECO_TIPOCAMBIO.F_IMPORTE_CAMBIO(MON.CMONINT, 'COP', TO_DATE(SYSDATE), DCE.ICAPCES)), 0), 0) + DECODE(CES.CTRAMO, 0,
                        DECODE(NVL(CTRAMPA, 0), 4, NVL((PAC_ECO_TIPOCAMBIO.F_IMPORTE_CAMBIO(MON.CMONINT, 'COP', TO_DATE(SYSDATE), DCE.ICAPCES)), 0), 0), 0) VALOR_RESEG5,
  NVL((PAC_ECO_TIPOCAMBIO.F_IMPORTE_CAMBIO(MON.CMONINT, 'COP', TO_DATE
                        (SYSDATE), DCE.ICAPCES)), 0) CUMULO_TOTAL,


	' ' CUM_CLASE_CONTRATOFAC,
	' ' CUM_PORCENTAJEFAC,
	' ' CUM_VALOR_RESEGFAC,
	f_sysdate CUM_FK_TIEMPO,
	pac_agentes.f_get_cageliq(24, 2, S.cagente)CUM_FK_GEOGRAFICA,
	MON.CMONEDA CUM_FK_MONEDA,
  ' ' CUM_FK_TECNICO,
  A.SPERSON CUM_FK_RANGOVLRASEGURADO,
	T.SPERSON CUM_FK_PERSONA,	
	F_SYSDATE FECHA_REGISTRO, 
	F_SYSDATE FECHA_CONTROL,
	TRUNC(F_SYSDATE, 'month') FECHA_INICIAL,
	TRUNC(LAST_DAY(F_SYSDATE)) FECHA_FIN,
	' ' PAQUETE,
	' ' SUCREA,
	' ' LIMITE_ROJO
  FROM SEGUROS S, CUMULOS p,  garanseg g, REARIESGOS R, CESIONESREA CES,
       MONEDAS MON, DET_CESIONESREA DCE,  GARANGEN GGE,PER_PERSONAS PE,
       RANGO_DIAN_MOVSEGURO rdm, MOVSEGURO M,TOMADORES T,ASEGURADOS A,

        (SELECT DISTINCT CT.TCONTRA CONTRATO1, CES.CTRAMO, CES.SSEGURO, CT.NVERSIO
        FROM CONTRATOS CT, CESIONESREA CES
        WHERE CT.SCONTRA=CES.SCONTRA  AND CES.CTRAMO=1 AND CT.NVERSIO=(SELECT MIN(NVERSIO)FROM CONTRATOS
                                                                                        WHERE SSEGURO=CES.SSEGURO))CTO1,
        (SELECT DISTINCT CT.TCONTRA CONTRATO2, CES.CTRAMO, CES.SSEGURO, CT.NVERSIO
        FROM CONTRATOS CT, CESIONESREA CES
        WHERE CT.SCONTRA=CES.SCONTRA  AND CES.CTRAMO=2 AND CT.NVERSIO=(SELECT MIN(NVERSIO)FROM CONTRATOS
                                                                                        WHERE SSEGURO=CES.SSEGURO))CTO2,
        (SELECT DISTINCT CT.TCONTRA CONTRATO3, CES.CTRAMO, CES.SSEGURO, CT.NVERSIO
        FROM CONTRATOS CT, CESIONESREA CES
        WHERE CT.SCONTRA=CES.SCONTRA  AND CES.CTRAMO=3 AND CT.NVERSIO=(SELECT MIN(NVERSIO)FROM CONTRATOS
                                                                                        WHERE SSEGURO=CES.SSEGURO))CTO3,
        (SELECT DISTINCT CT.TCONTRA CONTRATO4, CES.CTRAMO, CES.SSEGURO, CT.NVERSIO
        FROM CONTRATOS CT, CESIONESREA CES
        WHERE CT.SCONTRA=CES.SCONTRA  AND CES.CTRAMO=4 AND CT.NVERSIO=(SELECT MIN(NVERSIO)FROM CONTRATOS
                                                                                        WHERE SSEGURO=CES.SSEGURO))CTO4,
        (SELECT DISTINCT CT.TCONTRA CONTRATO5, CES.CTRAMO, CES.SSEGURO, CT.NVERSIO
        FROM CONTRATOS CT, CESIONESREA CES
        WHERE CT.SCONTRA=CES.SCONTRA  AND CES.CTRAMO=5 AND CT.NVERSIO=(SELECT MIN(NVERSIO)FROM CONTRATOS
                                                                                        WHERE SSEGURO=CES.SSEGURO))CTO5


  WHERE P.SCUMULO     =     R.SCUMULO
    AND S.SSEGURO     =     R.SSEGURO
    and G.SSEGURO     =     S.SSEGURO
    --
    and g.nmovimi     =     m.nmovimi
    --
    and S.SSEGURO     =     CES.SSEGURO
    AND MON.CIDIOMA   =     8
    AND MON.CMONEDA   =     PAC_MONEDAS.F_MONEDA_PRODUCTO(s.SPRODUC)
    AND CES.FEFECTO  <=     TO_DATE(SYSDATE)
    AND CES.FVENCIM   >     TO_DATE(SYSDATE)
    AND (CES.FANULAC  >     TO_DATE(SYSDATE)   OR CES.FANULAC  IS NULL)
    AND (CES.FREGULA  >     TO_DATE(SYSDATE)   OR CES.FREGULA  IS NULL)
    AND CES.CGENERA         IN (1, 3, 4, 5, 9, 10, 20, 40, 41)
    AND DCE.SCESREA   =     CES.SCESREA
    AND DCE.SSEGURO   =     S.SSEGURO
    AND NVL(DCE.CDEPURA,'N') = 'N'
    AND DCE.CGARANT   =     GGE.CGARANT
    --
    and g.cgarant     =     gge.cgarant
    --
    AND S.SSEGURO     =     T.SSEGURO(+)
    AND S.SSEGURO     =     A.SSEGURO(+)
    --
    AND PE.SPERSON    =     DCE.SPERSON
    AND S.SSEGURO     =     M.SSEGURO
    AND M.SSEGURO     =     RDM.SSEGURO(+)
    AND M.NMOVIMI     =     RDM.NMOVIMI (+)
    --
    AND CTO1.SSEGURO(+)=    S.SSEGURO
    AND CTO2.SSEGURO(+)=    S.SSEGURO
    AND CTO3.SSEGURO(+)=    S.SSEGURO
    AND CTO4.SSEGURO(+)=    S.SSEGURO
    AND CTO5.SSEGURO(+)=    S.SSEGURO






)A

 GROUP BY  A.NUM_POLIZA,
       A.NUM_CERTIFICADO,
       A.NUM_ORDEN,
       A.NUM_COBERTURA,
       A.FECHA_DESDE,
       A.FECHA_HASTA,
       A.FECHA_COLOCACION,
       A.CLASE_CONTRATO1,
       A.CONTRATO1,
       A.CLASE_CONTRATO2,
       A.CONTRATO2,
       A.CLASE_CONTRATO3,
       A.CONTRATO3,
       A.CONTRATO4,
       A.CONTRATO5,
         A.CUM_CLASE_CONTRATOFAC,
        A.CUM_PORCENTAJEFAC,
        A.CUM_VALOR_RESEGFAC,
        A.CUM_FK_TIEMPO,
        A.CUM_FK_GEOGRAFICA,
        A.CUM_FK_MONEDA,
        A.CUM_FK_PERSONA,
        A.CUM_FK_TECNICO,
        A.CUM_FK_RANGOVLRASEGURADO,
        A.FECHA_REGISTRO, 
        A.FECHA_CONTROL,
        A.FECHA_INICIAL,
        A.FECHA_FIN,
        A.PAQUETE,
        A.SUCREA,
        A.LIMITE_ROJO )Q1;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."VFACT_CUMULOS"  IS 'snapshot table for snapshot CONF_DWH.VFACT_CUMULOS';