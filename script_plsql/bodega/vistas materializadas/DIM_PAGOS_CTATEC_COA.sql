--------------------------------------------------------
--  DDL for Materialized View DIM_PAGOS_CTATEC_COA
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DIM_PAGOS_CTATEC_COA" ("SPAGCOA", "COASEGURADORA", "ESTADO", "FLIQUIDA", "CTIPOPAG", "IIMPORTE", "IIMPORTE_MONCON")
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 0 INITRANS 2 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CONF_DWH" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND START WITH sysdate+0 NEXT TRUNC(SYSDATE + 1) + 20/24
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE QUERY REWRITE
  AS select spagcoa, tcompani coaseguradora, decode(cestado,0,'Pendiente',1,'Pagado',2,'Retenido') estado, 
fliquida,decode(ctipopag,1,'Debe',2,'Haber') ctipopag,iimporte, iimporte_moncon
FROM PAGOS_CTATEC_COA P, COMPANIAS C
where p.ccompani = c.ccompani;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DIM_PAGOS_CTATEC_COA"  IS 'snapshot table for snapshot CONF_DWH.DIM_PAGOS_CTATEC_COA';
