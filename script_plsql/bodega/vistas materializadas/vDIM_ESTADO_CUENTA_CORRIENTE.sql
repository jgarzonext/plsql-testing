--------------------------------------------------------
--  DDL for Materialized View vDIM_ESTADO_CUENTA_CORRIENTE
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."vDIM_ESTADO_CUENTA_CORRIENTE" ("ECC_ID", "ECC_EST_CNTA_CORRIENTE", "ECC_EST_CNTA_CORRIENTE_DESC", "FECHA_REGISTRO", "ESTADO", "START_ESTADO", "END_ESTADO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN")
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
  AS SELECT ' ' ECC_ID,
	D.CATRIBU ECC_EST_CNTA_CORRIENTE,
	D.TATRIBU ECC_EST_CNTA_CORRIENTE_DESC,
	F_SYSDATE FECHA_REGISTRO,
	'ACTIVO' ESTADO,
	TO_DATE('01/01/1986') START_ESTADO,
	' ' END_ESTADO,
	F_SYSDATE FECHA_CONTROL,
	TRUNC(F_SYSDATE, 'month') FECHA_INICIAL,
	TRUNC(LAST_DAY(F_SYSDATE)) FECHA_FIN
FROM detvalores D
WHERE D.cvalor = 18 --800049
	AND D.cidioma = 8;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."vDIM_ESTADO_CUENTA_CORRIENTE"  IS 'snapshot table for snapshot CONF_DWH.vDIM_ESTADO_CUENTA_CORRIENTE';