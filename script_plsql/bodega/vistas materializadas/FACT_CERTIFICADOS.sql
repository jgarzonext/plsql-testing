----- DELETE VISTA ----------
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('FACT_CERTIFICADOS','MATERIALIZED VIEW');  
END;
/

----- CREATE VISTA ----------
  CREATE MATERIALIZED VIEW "CONF_DWH"."FACT_CERTIFICADOS" ("CER_ID", "CER_NUM_POLIZA",
"CER_NUM_ORDEN",
"CER_NUM_CERTIFICADO",
"CER_PRIMA_DIRECTA",
"CER_PRIMA_CEDIDA",
"CER_PRIMA_ACEPTADA",
"CER_TIPO_COASEGURO",
"CER_PORC_COASEGURO",
"CER_GTOS_EXPEDICION",
"CER_PRIMA_EMIT",
"CER_PRIMA_TOT",
"CER_COMISION",
"CER_IND_CLIENTE_NUEVO",
"CER_VALOR_ASEGURADO",
"CER_TRM_EXPED",
"CER_FECHA_DESDE",
"CER_FECHA_HASTA",
"CER_FECHA_EXPEDICION",
"CER_FECHA_CONTABILIZACION",
"CER_IVA",
"CER_TIEMPO_ENTREGA",
"CER_VLR_CONTRATO",
"CER_FK_AUTORIZA",
"CER_SERIEDAD_OFERTA",
"CER_VLR_PROPUESTA",
"CER_UBICACION",
"CER_DEPARTAMENTO",
"CER_CIUDAD",
"CER_SUPERVISOR",
"CER_FK_TIEMPO",
"CER_FK_RIESGO",
"CER_FK_GEOGRAFICA",
"CER_FK_MONEDA",
"CER_FK_TOMADOR",
"CER_FK_ASEGURADO",
"CER_FK_CLIENTE",
"CER_FK_TECNICA",
"CER_FK_INTERMEDIARIO",
"CER_FK_TIPOCERTIFICADO",
"CER_FK_USUARIO",
"CER_FK_RANGOVLRASEGURADO",
"FECHA_CONTROL",
"FECHA_REGISTRO",
"FECHA_INICIO",
"FECHA_FIN", 
"FECHAINICIO_POST", 
"FECHAFIN_POST"
)
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
NOCOMPRESS LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE "CONF_DWH"   NO INMEMORY 
BUILD IMMEDIATE
USING INDEX 
REFRESH COMPLETE ON DEMAND START WITH sysdate+0 NEXT SYSDATE + 1
USING DEFAULT LOCAL ROLLBACK SEGMENT
USING ENFORCED CONSTRAINTS DISABLE QUERY REWRITE
  AS SELECT CER_ID.NEXTVAL@BODEGA CER_ID,
  AA.* 
  FROM (SELECT a.CER_NUM_POLIZA, a.CER_NUM_ORDEN, a.CER_NUM_CERTIFICADO, SUM(a.CER_PRIMA_DIRECTA) CER_PRIMA_DIRECTA, SUM(a.CER_PRIMA_CEDIDA) CER_PRIMA_CEDIDA, SUM(a.CER_PRIMA_ACEPTADA) CER_PRIMA_ACEPTADA,
       a.CER_TIPO_COASEGURO, a.CER_PORC_COASEGURO, SUM(a.CER_GTOS_EXPEDICION) CER_GTOS_EXPEDICION, SUM(a.CER_PRIMA_EMIT)CER_PRIMA_EMIT, SUM(a.CER_PRIMA_TOT) CER_PRIMA_TOT, SUM(a.CER_COMISION) CER_COMISION,
       cast(a.CER_IND_CLIENTE_NUEVO as number) CER_IND_CLIENTE_NUEVO, SUM(a.CER_VALOR_ASEGURADO) CER_VALOR_ASEGURADO, a.CER_TRM_EXPED,  a.CER_FECHA_DESDE, a.CER_FECHA_HASTA, a.CER_FECHA_EXPEDICION,
       a.CER_FECHA_CONTABILIZACION, sum(a.CER_IVA)CER_IVA, a.CER_TIEMPO_ENTREGA, SUM(a.CER_VLR_CONTRATO)CER_VLR_CONTRATO, cast(a.CER_FK_AUTORIZA as varchar2(25))CER_FK_AUTORIZA, a.CER_SERIEDAD_OFERTA,
       SUM(a.CER_VLR_PROPUESTA)CER_VLR_PROPUESTA, a.CER_UBICACION, a.CER_DEPARTAMENTO, a.CER_CIUDAD, a.CER_SUPERVISOR, a.CER_FK_TIEMPO, a.CER_FK_RIESGO,
       a.CER_FK_GEOGRAFICA, a.CER_FK_MONEDA, a.CER_FK_TOMADOR, a.CER_FK_ASEGURADO,a.CER_FK_CLIENTE, a.CER_FK_TECNICA,
       a.CER_FK_INTERMEDIARIO,a.CER_FK_TIPOCERTIFICADO, a.CER_FK_USUARIO,a.CER_FK_RANGOVLRASEGURADO, a.FECHA_CONTROL, a.FECHA_REGISTRO, a.FECHA_INICIO,a.FECHA_FIN, a.FECHAINICIO_POST, a.FECHAFIN_POST
FROM
(SELECT S.CAGENTE,
  s.npoliza CER_NUM_POLIZA,
  m.nmovimi CER_NUM_ORDEN,
  rdm.NCERTDIAN CER_NUM_CERTIFICADO,
  s.sseguro, r.nrecibo,
  vr.iprinet CER_PRIMA_DIRECTA,
  vr.icednet CER_PRIMA_CEDIDA,
  DECODE(S.CTIPCOA,8,vr.iprinet,0) CER_PRIMA_ACEPTADA,
  s.ctipcoa CER_TIPO_COASEGURO, 
  c.ploccoa CER_PORC_COASEGURO,
  NVL(( DECODE(r.ctiprec, 9, -1, 1) * vr.iderreg),0) CER_GTOS_EXPEDICION,
  vr.iprinet CER_PRIMA_EMIT,
  NVL((DECODE(r.ctiprec, 9, -1, 1) * vr.itotalr) ,0)CER_PRIMA_TOT,
  vr.icombru CER_COMISION,
  0 CER_IND_CLIENTE_NUEVO,  
  cap.icapital CER_VALOR_ASEGURADO,
  AXIS.PAC_ECO_TIPOCAMBIO.F_CAMBIO(AXIS.PAC_MONEDAS.F_MONEDA_SEGURO('SEG', S.SSEGURO), 8,S.FEMISIO)  CER_TRM_EXPED,
  S.FEFECTO CER_FECHA_DESDE,
  S.FVENCIM CER_FECHA_HASTA,
  S.FEMISIO CER_FECHA_EXPEDICION,
  CASE WHEN s.fefecto>s.femisio then s.fefecto
       WHEN s.femisio>s.fefecto then s.femisio
       WHEN s.femisio=s.fefecto then s.femisio
       END CER_FECHA_CONTABILIZACION,   
  NVL( DECODE(r.ctiprec, 9, -1, 1) * vr.iips,0) CER_IVA,
  trunc(S.FEMISIO) - trunc(to_date(S.FVENCIM)) CER_TIEMPO_ENTREGA,
  CASE WHEN PS.CPREGUN IN (2883) AND PS.SSEGURO=S.SSEGURO AND PS.NMOVIMI=M.NMOVIMI
       THEN PS.TRESPUE END CER_VLR_CONTRATO,
  1 CER_FK_AUTORIZA,
  CASE WHEN PS.CPREGUN IN (2878) AND PS.SSEGURO=S.SSEGURO AND PS.NMOVIMI=M.NMOVIMI
       THEN PS.TRESPUE END CER_SERIEDAD_OFERTA,
  CASE WHEN PS.CPREGUN IN (2883) AND PS.SSEGURO=S.SSEGURO AND PS.NMOVIMI=M.NMOVIMI
       THEN PS.TRESPUE END CER_VLR_PROPUESTA,
  CASE WHEN PS.CPREGUN IN (2887) AND PS.SSEGURO=S.SSEGURO AND PS.NMOVIMI=M.NMOVIMI
       THEN PS.TRESPUE END CER_UBICACION,
  CASE WHEN PS.CPREGUN IN (2886) AND PS.SSEGURO=S.SSEGURO AND PS.NMOVIMI=M.NMOVIMI
       THEN PS.TRESPUE END CER_DEPARTAMENTO,
  0 CER_CIUDAD,
  CASE WHEN PS.CPREGUN IN (6505) AND PS.SSEGURO=S.SSEGURO AND PS.NMOVIMI=M.NMOVIMI
       THEN PS.TRESPUE END CER_SUPERVISOR, 
  dtp.tie_id CER_FK_TIEMPO,
  ri.nriesgo CER_FK_RIESGO,
  DG.GEO_ID CER_FK_GEOGRAFICA,
  MON.CMONEDA CER_FK_MONEDA,
  T.SPERSON CER_FK_TOMADOR,
  A.SPERSON CER_FK_ASEGURADO,
  2334 CER_FK_CLIENTE,
  dmt.tec_id CER_FK_TECNICA,
  P.SPERSON CER_FK_INTERMEDIARIO,
  1 CER_FK_TIPOCERTIFICADO,
  1 CER_FK_USUARIO,
  1 CER_FK_RANGOVLRASEGURADO,
  AXIS.F_SYSDATE FECHA_CONTROL,
  M.FEFECTO FECHA_REGISTRO,
  TRUNC(AXIS.F_SYSDATE, 'month') FECHA_INICIO,
  TRUNC(LAST_DAY(AXIS.F_SYSDATE)) FECHA_FIN, 
  '01/01/1986' FECHAINICIO_POST,
  '01/01/1986' FECHAFIN_POST
  FROM 
  AXIS.seguros s,AXIS.monedas mon,
  AXIS.movseguro m,AXIS.recibos r, AXIS.vdetrecibos vr, AXIS.coacuadro c, AXIS.rango_dian_movseguro rdm,
  AXIS.TOMADORES T,
  AXIS.ASEGURADOS A,
  AXIS.PER_PERSONAS P,
  AXIS.riesgos ri,
  DIM_GEOGRAFICA@BODEGA DG, 
  AXIS.AGEREDCOM AC, AXIS.homologaproduc hm, AXIS.garanseg gs, dim_tecnica dmt, dim_tiempo dtp,
  (SELECT PS.TRESPUE, PS.CPREGUN, PS.SSEGURO, PS.NMOVIMI 
    FROM AXIS.PREGUNPOLSEG PS, AXIS.PREGUNTAS P
   WHERE PS.CPREGUN IN (2883,2878,2887,2886)  AND PS.CPREGUN=P.CPREGUN AND P.CIDIOMA=8)PS,
  (SELECT sum(g.icapital)icapital, g.sseguro, g.nmovimi
    FROM AXIS.garanseg g
   WHERE g.nmovimi = (SELECT MAX(mm.nmovimi)
                                    FROM AXIS.garanseg mm
                                   WHERE mm.sseguro = g.sseguro
                                     AND mm.nmovimi =g.nmovimi)
  group by g.sseguro, g.nmovimi)CAP
  
  WHERE    s.sseguro      =   m.sseguro
     and   r.sseguro      =   m.sseguro
     and   r.nmovimi      =   m.NMOVIMI
     and   r.nrecibo      =   vr.nrecibo
     and   s.sseguro      =   c.sseguro(+)
     and   m.sseguro      =   rdm.sseguro
     and   m.nmovimi      =   rdm.nmovimi (+)
     and   r.nrecibo      =   vr.nrecibo(+)
     and   cap.sseguro(+) =   m.sseguro
     and   cap.nmovimi    =   m.nmovimi
     and   PS.SSEGURO(+)  =   S.SSEGURO
     AND   MON.CIDIOMA    =     8
     AND   MON.CMONEDA    =     AXIS.PAC_MONEDAS.F_MONEDA_PRODUCTO(s.SPRODUC)
     AND   S.SSEGURO      =     T.SSEGURO(+)
     AND   S.SSEGURO      =     A.SSEGURO(+)
     AND   S.CAGENTE      =   P.CAGENTE(+)
     and   s.sseguro      =   ri.sseguro
     AND DG.GEO_SUCURSAL = SUBSTR(AXIS.PAC_AGENTES.F_GET_CAGELIQ(24, AC.CTIPAGE, S.CAGENTE), 3,5) 
     AND AC.CAGENTE = S.CAGENTE
     AND AC.CTIPAGE IN (2,3)
    AND s.sseguro = gs.sseguro
and hm.sproduc = s.sproduc
and hm.cgarant = gs.cgarant
and hm.cactivi = s.cactivi
and gs.nmovimi = (select max(gs2.nmovimi) from AXIS.garanseg gs2 where gs2.sseguro = gs.sseguro and gs2.cgarant = gs.cgarant)
and hm.codpla = dmt.tec_subproducto
and hm.codram = dmt.tec_ramo
and hm.codigogarantia = dmt.tec_cobertura
and dtp.tie_fecha = trunc(s.femisio)
            )a
GROUP BY a.CER_NUM_POLIZA, a.CER_NUM_ORDEN, a.CER_NUM_CERTIFICADO,
       a.CER_TIPO_COASEGURO, a.CER_PORC_COASEGURO, 
       a.CER_IND_CLIENTE_NUEVO,  a.CER_TRM_EXPED,  a.CER_FECHA_DESDE, a.CER_FECHA_HASTA, a.CER_FECHA_EXPEDICION,
       a.CER_FECHA_CONTABILIZACION, a.CER_TIEMPO_ENTREGA, a.CER_FK_AUTORIZA, a.CER_SERIEDAD_OFERTA,
        a.CER_UBICACION, a.CER_DEPARTAMENTO,  a.CER_SUPERVISOR, a.CER_FK_TIEMPO, a.CER_FK_RIESGO,
       a.CER_FK_GEOGRAFICA, a.CER_FK_MONEDA, a.CER_FK_TOMADOR, a.CER_FK_ASEGURADO,a.CER_FK_CLIENTE, a.CER_FK_TECNICA,
       a.CER_FK_INTERMEDIARIO,a.CER_FK_TIPOCERTIFICADO, a.CER_FK_USUARIO,a.CER_FK_RANGOVLRASEGURADO,
       a.FECHA_CONTROL,  a.FECHA_REGISTRO, a.FECHA_INICIO,a.FECHA_FIN, a.CER_CIUDAD,  a.FECHAINICIO_POST, a.FECHAFIN_POST
)AA       
;
	   
COMMENT ON MATERIALIZED VIEW "CONF_DWH"."FACT_CERTIFICADOS"  IS 'snapshot table for snapshot DWH_CONF.FACT_CERTIFICADOS';
