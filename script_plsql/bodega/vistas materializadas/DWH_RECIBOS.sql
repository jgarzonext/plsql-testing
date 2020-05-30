--------------------------------------------------------
--  DDL for Materialized View DWH_RECIBOS
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_RECIBOS" ("NRECIBO", "SSEGURO", "COD_OFICINA", "COD_RAMO", "DES_RAMO", "NPOLIZA", "NCERTIF", "NSOLICI", "CPOLCIA", "SPRODUC", "TITULO_PROD", "COD_EMPRESA", "COD_DELEGACION", "NUM_MOVIMI", "NUM_RIESGO", "FEFECTO", "CESTAUX", "COD_ESTADO_RECIBO", "ESTADO_RECIBO", "COD_TIPORECIBO", "DES_TIPORECIBO", "COD_FORMAPAGO", "DES_FORMAPAGO", "COD_TIPBAN", "DES_TIPBAN", "COD_CBANCAR", "PRIMA_TOTAL", "PRIMA_TARIFA", "CONSORCIO", "IMPUESTO", "IRECFRA", "CLEA", "COMISION", "IPS", "LIQUIDO", "PRIMA_DEVENGADA", "COMISION_DEVENGADA", "NANUALI", "FEMISIO", "FVENCIM", "COD_CODBAN", "DES_COBBAN")
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
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
  AS SELECT r.nrecibo, s.sseguro, r.cagente cod_oficina, s.cramo cod_ramo,
       ff_desramo(s.cramo, 2) des_ramo, s.npoliza, s.ncertif, s.nsolici, s.cpolcia, s.sproduc,
       f_desproducto_t(s.cramo, s.cmodali, s.ctipseg, s.ccolect, 2, 2) titulo_prod,
       r.cempres cod_empresa, r.cdelega cod_delegacion, r.nmovimi num_movimi,
       r.nriesgo num_riesgo, r.fefecto, r.cestaux,
       f_cestrec_mv(r.nrecibo, 2, null) cod_estado_recibo,
       ff_desvalorfijo(383, 2, f_cestrec_mv(r.nrecibo,2, null)) estado_recibo,
       r.ctiprec cod_tiporecibo,
       ff_desvalorfijo(8, 2, r.ctiprec) des_tiporecibo, r.cforpag cod_formapago,
       ff_desvalorfijo(17, 2, r.cforpag) des_formapago, 
       r.ctipban cod_tipban,
       ff_desvalorfijo(274, 2, r.ctipban) des_tipban, 
       r.cbancar cod_cbancar,
       vd.itotalr prima_total, vd.iprinet prima_tarifa, vd.iconsor consorcio,
       vd.itotimp impuesto, vd.irecfra irecfra, vd.idgs clea, vd.icombru comision, vd.iips IPS,
       vd.itotpri liquido, vd.ipridev prima_devengada, vd.icomdev comision_devengada,
       r.NANUALI, r.FEMISIO, r.FVENCIM,
       r.CCOBBAN "COD_CODBAN", c.DESCRIPCION "DES_COBBAN"
  FROM seguros s, recibos r, vdetrecibos vd, cobbancario c
 WHERE s.sseguro = r.sseguro
   AND r.nrecibo = vd.nrecibo
   --and r.cestaux = 0
   and c.CCOBBAN(+) = r.CCOBBAN;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_RECIBOS"  IS 'snapshot table for snapshot DWH_RECIBOS (20150908)';
