----- DELETE VISTA ----------
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('DIM_CONTRATO_REA','MATERIALIZED VIEW');  
END;
/

----- CREATE VISTA ----------
CREATE MATERIALIZED VIEW "CONF_DWH"."DIM_CONTRATO_REA" ("CONTRATO_ID", "CODIGO", "CODIGO_CON", "NOMBRE_CONTRATO", "FECHA_CONTROL")
ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
NOCOMPRESS LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE "CONF_DWH"   NO INMEMORY 
BUILD IMMEDIATE
USING INDEX 
REFRESH COMPLETE ON DEMAND START WITH SYSDATE+0 NEXT SYSDATE + 1
USING DEFAULT LOCAL ROLLBACK SEGMENT
USING ENFORCED CONSTRAINTS DISABLE QUERY REWRITE
AS SELECT ROWNUM CONTRATO_ID, 
C.SCONTRA CODIGO, 
C.CTIPREA CODIGO_CON, 
C.TDESCRIPCION NOMBRE_CONTRATO, 
AXIS.F_SYSDATE FECHA_CONTROL
FROM AXIS.CODICONTRATOS C ;

COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DIM_CONTRATO_REA"  IS 'snapshot table for snapshot DWH_CONF.DIM_CONTRATO_REA';
