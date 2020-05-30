----- DELETE VISTA ----------
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('DIM_CONCEPTO','MATERIALIZED VIEW');  
END;
/

----- CREATE VISTA ----------
  CREATE MATERIALIZED VIEW "CONF_DWH"."DIM_CONCEPTO" ("CNCP_ID", "CNCP_CONCEPTO", "CNCP_CONCEPTO_DESC", "FECHA_REGISTRO", "ESTADO", "START_ESTADO", "END_ESTADO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN")
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
  AS SELECT SEQ_DIM_CONCEPTO_CNCP_ID.NEXTVAL@BODEGA CNCP_ID,
C.CCONCTA CNCP_CONCEPTO,
C.TCONCTA CNCP_CONCEPTO_DESC,
AXIS.F_SYSDATE FECHA_REGISTRO,
'ACTIVO' ESTADO,
TO_DATE('01/01/1986') START_ESTADO,
AXIS.F_SYSDATE END_ESTADO,
AXIS.F_SYSDATE FECHA_CONTROL,
TRUNC(AXIS.F_SYSDATE, 'month') FECHA_INICIAL,
 TRUNC(LAST_DAY(AXIS.F_SYSDATE)) FECHA_FIN
FROM AXIS.CONCEPTOS C
WHERE C.CIDIOMA = 8;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DIM_CONCEPTO"  IS 'snapshot table for snapshot DWH_CONF.DIM_CONCEPTO';