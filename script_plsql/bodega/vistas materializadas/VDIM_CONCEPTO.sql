--------------------------------------------------------
--  DDL for Materialized View VDIM_CONCEPTO
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."VDIM_CONCEPTO" ("CNCP_ID", "CNCP_CONCEPTO", "CNCP_CONCEPTO_DESC", "FECHA_REGISTRO", "ESTADO", "START_ESTADO", "END_ESTADO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN")
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
  AS SELECT ' ' CNCP_ID,
	C.CCONCTA CNCP_CONCEPTO,
	C.TCONCTA CNCP_CONCEPTO_DESC,
	F_SYSDATE FECHA_REGISTRO,
	'ACTIVO' ESTADO,
	TO_DATE('01/01/1986') START_ESTADO,
	' ' END_ESTADO,
	F_SYSDATE FECHA_CONTROL,
	TRUNC(F_SYSDATE, 'month') FECHA_INICIAL,
	TRUNC(LAST_DAY(F_SYSDATE)) FECHA_FIN
FROM CONCEPTOS C
WHERE C.CIDIOMA = 8;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."VDIM_CONCEPTO"  IS 'snapshot table for snapshot CONF_DWH.VDIM_CONCEPTO';
