--------------------------------------------------------
--  DDL for Materialized View VFAC_CRUCE_DOCUMENTOS
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."VFAC_CRUCE_DOCUMENTOS" ("FCDOC_ID", "FCDOC_NUM_POLIZA", "FCDOC_NUM_CERTIFICADO", "FCDOC_NUMDOC", "FCDOC_NROCTA", "SSEGURO", "FEFECTO", "COD_TIPORECIBO", "DES_TIPORECIBO", "FCDOC_TOT_DOC", "FCDOC_VALGASTOS", "FCDOC_VPRIMA", "CONSORCIO", "IMPUESTO", "CLEA", "COMISION", "IRPF", "LIQUIDO", "PRIMA_DEVENGADA", "COMISION_DEVENGADA", "FECHA_REGISTRO", "ESTADO", "START_ESTADO", "END_ESTADO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN")
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
  AS SELECT ' ' FCDOC_ID,
      s.npoliza FCDOC_NUM_POLIZA,
      rdm.NCERTDIAN FCDOC_NUM_CERTIFICADO,
      r.nrecibo FCDOC_NUMDOC,
      r.ncuotar FCDOC_NROCTA,
      s.sseguro,
      r.fefecto,
      r.ctiprec cod_tiporecibo,
      ff_desvalorfijo(8, 2, r.ctiprec) des_tiporecibo,
      NVL((SELECT SUM(DECODE(r.ctiprec, 9, -1, 1) * vr.itotalr)
                FROM  vdetrecibos vr
               WHERE r.nrecibo = vr.nrecibo),
             0) FCDOC_TOT_DOC,
      NVL((SELECT SUM(DECODE(r.ctiprec, 9, -1, 1) * vr.iderreg)
                FROM vdetrecibos vr
               WHERE r.nrecibo = vr.nrecibo),
             0) FCDOC_VALGASTOS,
             
      vd.iprinet FCDOC_VPRIMA,
      
      vd.iconsor consorcio,
      vd.itotimp impuesto,
      vd.idgs clea,
      vd.icombru comision,
      vd.iips irpf,
      vd.itotpri liquido,
      vd.ipridev prima_devengada,
      vd.icomdev comision_devengada,
      s.femisio FECHA_REGISTRO,
      'ACTIVO' ESTADO,
      TO_DATE('01/01/1986') START_ESTADO,
      ' ' END_ESTADO,
      F_SYSDATE FECHA_CONTROL,
      TRUNC(F_SYSDATE, 'month') FECHA_INICIAL,
      TRUNC(LAST_DAY(F_SYSDATE)) FECHA_FIN
FROM seguros s, recibos r, vdetrecibos vd, rango_dian_movseguro rdm--, movseguro m
WHERE s.sseguro = r.sseguro
      AND r.nrecibo = vd.nrecibo
      and s.sseguro = rdm.SSEGURO(+)
     -- and rdm.NMOVIMI = M.NMOVIMI (+)
      --and rdm.sseguro = m.SSEGURO 
      --and s.sseguro = m.SSEGURO;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."VFAC_CRUCE_DOCUMENTOS"  IS 'snapshot table for snapshot CONF_DWH.VFAC_CRUCE_DOCUMENTOS';
