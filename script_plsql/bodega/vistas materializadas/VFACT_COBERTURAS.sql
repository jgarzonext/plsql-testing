--------------------------------------------------------
--  DDL for Materialized View VFACT_COBERTURAS
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."VFACT_COBERTURAS" ("NUM_POLIZA", "NUM_CERTIFICADO", "NUM_ORDEN", "NUM_COBERTURA", "PRIMA_EMITIDA", "COB_PRIMA_DIRECTA", "COB_PRIMA_CEDIDA", "CER_PRIMA_ACEPTADA", "VALOR_ASEGURADO", "VALOR_COMISIONES", "VALOR_PAGO", "VALOR_RECU", "VALOR_DEDU", "FECHA_DESDE", "FECHA_HASTA", "COB_FK_TIEMPO", "COB_FK_GEOGRAFICA", "COB_FK_MONEDA", "COB_FK_PERSONA", "COB_FK_TECNICO", "CER_FK_RANGOVLRASEGURADO", "FECHA_REGISTRO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN")
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
  AS select a.num_poliza, a.num_certificado, a.num_orden, a.num_cobertura, nvl(sum(a.prima_emitida),0) prima_emitida, 
  nvl(sum(a.cob_prima_directa),0)cob_prima_directa, nvl(sum(a.cob_prima_cedida),0)cob_prima_cedida,
  nvl(sum(DECODE(a.CTIPCOA,8,a.prima_emitida,0)),0) CER_PRIMA_ACEPTADA,  a.valor_asegurado,
  nvl(sum(a.valor_comisiones),0)valor_comisiones, nvl(a.VALOR_PAGO,0)valor_pago,  nvl(a.VALOR_RECU,0)valor_recu, 
  nvl(a.VALOR_DEDU,0)valor_dedu, a.FECHA_DESDE,a.FECHA_HASTA,
  a.COB_FK_TIEMPO, a.COB_FK_GEOGRAFICA,a.COB_FK_MONEDA, a.COB_FK_PERSONA, a.COB_FK_TECNICO,
  a.CER_FK_RANGOVLRASEGURADO, a.FECHA_REGISTRO, a.FECHA_CONTROL,a.FECHA_INICIAL,
  a.FECHA_FIN from
  
(SELECT distinct
  s.npoliza NUM_POLIZA,
  rdm.NCERTDIAN NUM_CERTIFICADO,
  m.nmovimi NUM_ORDEN,
   GARAN.CGARANT NUM_COBERTURA,
  
  CASE WHEN dr.CCONCEP=0 AND dr.nrecibo = r.nrecibo AND dr.cgarant=GARAN.cgarant
       THEN dr.ICONCEP END PRIMA_EMITIDA,
   CASE WHEN dr.CCONCEP=0 AND dr.nrecibo = r.nrecibo AND dr.cgarant=GARAN.cgarant
       THEN dr.ICONCEP END COB_PRIMA_DIRECTA,
  CASE WHEN dr.CCONCEP=50 AND dr.nrecibo = r.nrecibo AND dr.cgarant=GARAN.cgarant
       THEN dr.ICONCEP END COB_PRIMA_CEDIDA,
  s.ctipcoa,
   GARAN.icapital VALOR_ASEGURADO,
  CASE WHEN dr.CCONCEP=11 AND dr.nrecibo = r.nrecibo AND dr.cgarant=GARAN.cgarant
       THEN dr.ICONCEP END VALOR_COMISIONES,
  
  CASE WHEN pago.sseguro=s.sseguro AND pago.cgarant = garan.cgarant
  THEN pago.valor_pago END VALOR_PAGO,

  '' VALOR_RECU,
  '' VALOR_DEDU,
  GARAN.FINIEFE FECHA_DESDE,
  GARAN.FFINEFE FECHA_HASTA,
  ' ' COB_FK_TIEMPO,
  pac_agentes.f_get_cageliq(24, 2, S.cagente) COB_FK_GEOGRAFICA,
  MON.CMONEDA COB_FK_MONEDA,
  T.SPERSON COB_FK_PERSONA,
  ' ' COB_FK_TECNICO,
  A.SPERSON CER_FK_RANGOVLRASEGURADO,
  F_SYSDATE FECHA_REGISTRO, 
  F_SYSDATE FECHA_CONTROL,
  TRUNC(F_SYSDATE, 'month') FECHA_INICIAL,
  TRUNC(LAST_DAY(SYSDATE)) FECHA_FIN


  FROM seguros s, recibos r,  movseguro m,rango_dian_movseguro rdm, monedas mon,
  (SELECT G.IPRIANU, G.CGARANT, G.SSEGURO, G.NORDEN, G.ICAPITAL, G.NMOVIMI, G.FINIEFE, G.FFINEFE
       FROM GARANSEG G
       WHERE NMOVIMI=(SELECT MAX(NMOVIMI) FROM GARANSEG
                        WHERE SSEGURO=G.SSEGURO
                          AND CGARANT=G.CGARANT
                        GROUP BY SSEGURO, CGARANT))GARAN,
  detrecibos dr,
  TOMADORES T,
  ASEGURADOS A,
   (select sum(stpg.isinret) valor_pago, si.sseguro, stpg.cgarant
      from sin_siniestro si, sin_tramita_pago stp, sin_tramita_movpago stm, sin_tramita_pago_gar stpg 
      where si.nsinies = stp.nsinies
         and stp.sidepag = stm.sidepag
         and stm.cestpag = 1
         and stp.sidepag = stpg.sidepag
        group by si.sseguro, stpg.cgarant
    )PAGO
  WHERE s.sseguro     =   r.sseguro
    AND garan.sseguro =   S.SSEGURO
    AND s.sseguro     =   m.sseguro
    AND r.nmovimi     =   m.NMOVIMI
    and m.sseguro     =   rdm.sseguro(+)
    and m.nmovimi     =   rdm.nmovimi (+)
    AND dr.nrecibo(+) =   r.nrecibo
    AND MON.CIDIOMA   =     8
    AND MON.CMONEDA   =     PAC_MONEDAS.F_MONEDA_PRODUCTO(s.SPRODUC)
    AND S.SSEGURO     =     T.SSEGURO(+)
    AND S.SSEGURO     =     A.SSEGURO(+)
    and pago.sseguro(+) = s.sseguro
    )a
    
    group by a.num_poliza, a.num_certificado, a.num_orden, a.num_cobertura, a.valor_asegurado,
  a.VALOR_PAGO, a.VALOR_RECU, a.VALOR_DEDU,a.FECHA_DESDE,a.FECHA_HASTA,
  a.COB_FK_TIEMPO, a.COB_FK_GEOGRAFICA,a.COB_FK_MONEDA, a.COB_FK_PERSONA, a.COB_FK_TECNICO,
  a.CER_FK_RANGOVLRASEGURADO, a.FECHA_REGISTRO, a.FECHA_CONTROL,a.FECHA_INICIAL,
  a.FECHA_FIN;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."VFACT_COBERTURAS"  IS 'snapshot table for snapshot CONF_DWH.VFACT_COBERTURAS';
