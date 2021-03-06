----- DELETE VISTA ----------
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('DIM_VINCULO','MATERIALIZED VIEW');  
END;
/

----- CREATE VISTA ----------
CREATE MATERIALIZED VIEW "CONF_DWH"."DIM_VINCULO" ("VIN_ID", "VIN_CODIGO", "VIN_NOMBRE", "FECHA_REGISTRO", "ESTADO", "START_ESTADO", "END_ESTADO", "FECHA_CONTROL", "VIN_TIPO_PERSONA")
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
AS SELECT SEQ_OUT_VINCULO_VIN_ID.NEXTVAL@BODEGA VIN_ID,
P1.VIN_CODIGO,
P1.VIN_NOMBRE,
P1.FECHA_REGISTRO,
P1.ESTADO,
P1.START_ESTADO,
P1.END_ESTADO,
P1.FECHA_CONTROL,
P1.VIN_TIPO_PERSONA
FROM (
SELECT P.SPERSON VIN_CODIGO, 'TOMADOR' VIN_NOMBRE, AXIS.F_SYSDATE FECHA_REGISTRO, 
       'ACTIVO' ESTADO,
       AXIS.F_SYSDATE START_ESTADO,
       AXIS.F_SYSDATE END_ESTADO,
       AXIS.F_SYSDATE FECHA_CONTROL,
       'TOMADOR' VIN_TIPO_PERSONA
FROM AXIS.PER_PERSONAS P, AXIS.TOMADORES T
 WHERE P.SPERSON = T.SPERSON
 UNION all
SELECT P.SPERSON VIN_CODIGO, 'ASEGURADO' VIN_NOMBRE, AXIS.F_SYSDATE FECHA_REGISTRO, 
       'ACTIVO' ESTADO,
       AXIS.F_SYSDATE START_ESTADO,
       AXIS.F_SYSDATE END_ESTADO,
       AXIS.F_SYSDATE FECHA_CONTROL,
       'ASEGURADO' VIN_TIPO_PERSONA
       FROM AXIS.PER_PERSONAS P, AXIS.ASEGURADOS A
 WHERE P.SPERSON = A.SPERSON
  UNION all
SELECT P.SPERSON VIN_CODIGO, 'AGENTE' VIN_NOMBRE, AXIS.F_SYSDATE FECHA_REGISTRO, 
       'ACTIVO' ESTADO,
       AXIS.F_SYSDATE START_ESTADO,
       AXIS.F_SYSDATE END_ESTADO,
       AXIS.F_SYSDATE FECHA_CONTROL,
       'AGENTE' VIN_TIPO_PERSONA
       FROM AXIS.PER_PERSONAS P, AXIS.AGENTES AG
 WHERE P.SPERSON = AG.SPERSON
 )P1;

COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DIM_VINCULO"  IS 'snapshot table for snapshot DWH_CONF.DIM_VINCULO';
