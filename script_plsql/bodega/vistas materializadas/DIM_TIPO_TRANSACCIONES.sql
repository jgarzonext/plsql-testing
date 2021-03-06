----- DELETE VISTA ----------
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('DIM_TIPO_TRANSACCIONES','MATERIALIZED VIEW');  
END;
/

----- CREATE VISTA ----------
CREATE MATERIALIZED VIEW "CONF_DWH"."DIM_TIPO_TRANSACCIONES" ("TIPO_TRAN_ID", "COD_TRAN", "NOMBRE_TIPO_TRAN", "DESC_TIPO_TRAN", "FECHA_REGISTRO",
 "ESTADO", "START_ESTADO", "END_ESTADO", "FECHA_CONTROL")
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
AS SELECT ROWNUM TIPO_TRAN_ID,
D.Catribu COD_TRAN,
D.TATRIBU NOMBRE_TIPO_TRAN,
D.TATRIBU DESC_TIPO_TRAN,
AXIS.F_SYSDATE FECHA_REGISTRO,
'ACTIVO' ESTADO,
TO_DATE('01/01/1986') START_ESTADO,
AXIS.F_SYSDATE END_ESTADO,
AXIS.F_SYSDATE FECHA_CONTROL
FROM AXIS.DETVALORES D
WHERE D.CVALOR = 1026 
AND D.CIDIOMA = 8;

COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DIM_TIPO_TRANSACCIONES"  IS 'SNAPSHOT TABLE FOR SNAPSHOT DWH_CONF.DIM_TIPO_TRANSACCIONES';