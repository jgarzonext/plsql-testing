----- DELETE VISTA ----------
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('FACT_POLIZA','MATERIALIZED VIEW');  
END;
/
----- CREATE VISTA ----------
  CREATE MATERIALIZED VIEW "CONF_DWH"."FACT_POLIZA" ("FPOL_ID", "FPOL_NUM_POLIZA", "FPOL_NUM_CERTIFICADO", "FPOL_NUM_CERTIFICADO_ANT", "FPOL_VAL_PRIMA", 
  "FPOL_FK_SUCURSAL", "FPOL_FK_FECHA_INI", "FPOL_FK_FECHA_TER", "FPOL_FK_FECHA_EXP", "FPOL_FK_FECHA_CREA", "FPOL_FK_USUARIO", 
  "FPOL_FK_TIPO_CERTIFICADO", "FPOL_FK_ESTADO_VIGENCIA_POLIZA", "FECHA_REGISTRO", "ESTADO", "START_ESTADO", "END_ESTADO", "FECHA_CONTROL", 
  "FECHA_INICIAL", "FECHA_FIN", "FPOL_VASEG", "FPOL_VALIVA", "FPOL_FK_CLIENTE", "FPOL_NOM_AMPARO", "FPOL_CODPLA", "FPOL_MOTIVOCAN", "FPOL_FK_TECNICA", 
  "FPOL_ORDEN", "FPOL_CODCLA", "FPOL_COB_FECFIN", "FPOL_FK_ASEGURADO", "FPOL_FK_AGENTE")
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
  AS select SEQ_FAC_POL_FPOL_ID.NEXTVAL@BODEGA FPOL_ID,
s.npoliza FPOL_NUM_POLIZA,
rdm.NCERTDIAN FPOL_NUM_CERTIFICADO,
' ' FPOL_NUM_CERTIFICADO_ANT,
s.IPRIANU FPOL_VAL_PRIMA,
s.cagente FPOL_FK_SUCURSAL,
s.fefecto FPOL_FK_FECHA_INI,
s.fanulac FPOL_FK_FECHA_TER,
s.femisio FPOL_FK_FECHA_EXP,
s.femisio FPOL_FK_FECHA_CREA,
s.cagente FPOL_FK_USUARIO,
s.ctipseg FPOL_FK_TIPO_CERTIFICADO,
devp.evpol_id FPOL_FK_ESTADO_VIGENCIA_POLIZA,
AXIS.F_SYSDATE FECHA_REGISTRO,
'ACTIVO' ESTADO,
to_date('01/01/1986') START_ESTADO,
AXIS.F_SYSDATE END_ESTADO,
AXIS.F_SYSDATE FECHA_CONTROL,
TRUNC(AXIS.F_SYSDATE, 'month') FECHA_INICIAL,
trunc(last_day(sysdate))FECHA_FIN,
GARAN.icapital FPOL_VASEG, 
'0' FPOL_VALIVA, 
a.sperson FPOL_FK_CLIENTE, 
t.ttitulo FPOL_NOM_AMPARO, 
s.sproduc FPOL_CODPLA,
0 FPOL_MOTIVOCAN,
0 FPOL_FK_TECNICA,
0 FPOL_ORDEN,
' ' FPOL_CODCLA,
0 FPOL_COB_FECFIN,
a.sperson FPOL_FK_ASEGURADO,
s.cagente FPOL_FK_AGENTE
FROM AXIS.seguros s, AXIS.asegurados a, AXIS.productos p, AXIS.titulopro t, AXIS.rango_dian_movseguro rdm, AXIS.movseguro m, DIM_ESTADO_VIGENCIA_POLIZA devp, 
(SELECT G.IPRIANU, G.CGARANT, G.SSEGURO, G.NORDEN, G.ICAPITAL, G.NMOVIMI, G.FINIEFE, G.FFINEFE
       FROM AXIS.GARANSEG G
       WHERE NMOVIMI=(SELECT MAX(NMOVIMI) FROM AXIS.GARANSEG
                        WHERE SSEGURO=G.SSEGURO
                          AND CGARANT=G.CGARANT
                        GROUP BY SSEGURO, CGARANT))GARAN
where a.sseguro = s.sseguro 
AND garan.sseguro = S.SSEGURO
and a.norden = 1
and p.SPRODUC = s.SPRODUC
and p.CRAMO = t.CRAMO
and p.CMODALI = t.CMODALI
and p.CTIPSEG = t.CTIPSEG
and p.CCOLECT = t.CCOLECT
and t.cidioma = 8
and m.sseguro = rdm.sseguro
and m.nmovimi = rdm.nmovimi 
and s.sseguro = m.sseguro
and devp.EVPOL_EST_VIG_POLIZA = s.CSITUAC
;

COMMENT ON MATERIALIZED VIEW "CONF_DWH"."FACT_POLIZA"  IS 'snapshot table for snapshot DWH_CONF.FACT_POLIZA';
