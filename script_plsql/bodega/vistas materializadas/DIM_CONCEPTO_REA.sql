----- DELETE VISTA ----------
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('DIM_CONCEPTO_REA','MATERIALIZED VIEW');  
END;
/

----- CREATE VISTA ----------
CREATE MATERIALIZED VIEW "CONF_DWH"."DIM_CONCEPTO_REA" ("CONCEPTO_ID", "CODIGO", "NOMBRE_CONCEPTO", "NAT_CONCEP", "FECHA_CONTROL")
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
AS SELECT ROWNUM CONCEPTO_ID,
D.CATRIBU CODIGO,
D.TATRIBU NOMBRE_CONCEPTO,
' ' NAT_CONCEP,
AXIS.F_SYSDATE FECHA_CONTROL
FROM AXIS.DETVALORES D
WHERE D.CVALOR = 60 
AND D.CIDIOMA = 8;

COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DIM_CONCEPTO_REA"  IS 'SNAPSHOT TABLE FOR SNAPSHOT DWH_CONF.DIM_CONCEPTO_REA';
