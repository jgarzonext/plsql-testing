--------------------------------------------------------
--  DDL for Materialized View DWH_RECGARANRIES
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_RECGARANRIES" ("NRECIBO", "COD_GARANTIA", "DES_GARANTIA", "NUM_RIESGO", "PRIMA_TOTAL", "PRIMA_TARIFA", "CONSORCIO", "IMPUESTO", "CLEA", "COMISION", "IRPF", "RECFRAC", "LIQUIDO", "PRIMA_DEVEN", "COM_DEVEN", "CONCEP00", "CONCEP47", "CONCEP48", "CONCEP49")
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
  AS SELECT   d.nrecibo, d.cgarant cod_garantia, ff_desgarantia(d.cgarant, 2) des_garantia,
         d.nriesgo num_riesgo, 
         (SUM(DECODE(d.cconcep, 00, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 01, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 08, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 02, d.iconcep, 0)) + 
         SUM(DECODE(d.cconcep, 03, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 04, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 06, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 07, d.iconcep, 0)) + 
         SUM(DECODE(d.cconcep, 14, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 05, d.iconcep, 0))) prima_total,
         (SUM(DECODE(d.cconcep, 00, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 01, d.iconcep, 0))) prima_tarifa,
         (SUM(DECODE(d.cconcep, 02, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 03, d.iconcep, 0))) consorcio,
         (SUM(DECODE(d.cconcep, 04, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 06, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 07, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 14, d.iconcep, 0))) impuesto,       
         SUM(DECODE(d.cconcep, 05, d.iconcep, 0)) clea,
         (SUM(DECODE(d.cconcep, 11, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 17, d.iconcep, 0))) comision,
         SUM(DECODE(d.cconcep, 12, d.iconcep, 0))irpf,
         SUM(DECODE(d.cconcep, 08, d.iconcep, 0)) recfrac,
         (SUM(DECODE(d.cconcep, 00, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 01, d.iconcep, 0)) + SUM(DECODE(d.cconcep, 08, d.iconcep, 0)) - SUM(DECODE(d.cconcep, 02, d.iconcep, 0)) - 
         SUM(DECODE(d.cconcep, 03, d.iconcep, 0)) - SUM(DECODE(d.cconcep, 04, d.iconcep, 0)) - SUM(DECODE(d.cconcep, 06, d.iconcep, 0)) - SUM(DECODE(d.cconcep, 07, d.iconcep, 0)) - 
         SUM(DECODE(d.cconcep, 14, d.iconcep, 0)) - SUM(DECODE(d.cconcep, 05, d.iconcep, 0))- SUM(DECODE(d.cconcep, 11, d.iconcep, 0)) - SUM(DECODE(d.cconcep, 12, d.iconcep, 0))) liquido,
         SUM(DECODE(d.cconcep, 21, d.iconcep, 0)) prima_deven,
         SUM(DECODE(d.cconcep, 15, d.iconcep, 0)) com_deven,
         SUM(DECODE(d.cconcep, 00, d.iconcep, 0)) concep00,
         SUM(DECODE(d.cconcep, 47, d.iconcep, 0)) concep47,
         SUM(DECODE(d.cconcep, 48, d.iconcep, 0)) concep48,
         SUM(DECODE(d.cconcep, 49, d.iconcep, 0)) concep49
    FROM detrecibos d
GROUP BY d.nrecibo, d.cgarant, d.nriesgo
;

  CREATE INDEX "CONF_DWH"."DWHRECGARANRIES_I1" ON "CONF_DWH"."DWH_RECGARANRIES" ("NRECIBO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CONF_DWH" ;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_RECGARANRIES"  IS 'snapshot table for snapshot DWH_RECGARANRIES (20150908)';
