----- DELETE VISTA ----------
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('DIM_PERSONA_VINCULACION','MATERIALIZED VIEW');  
END;
/

----- CREATE VISTA ----------
CREATE MATERIALIZED VIEW "CONF_DWH"."DIM_PERSONA_VINCULACION" ("PERVIN_ID", "PERVIN_CODIGO", "PERVIN_PERSONA", "PERVIN_INSTANCIA", "FECHA_REGISTRO","ESTADO",
"START_ESTADO", "END_ESTADO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN")
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
AS SELECT PERVIN_ID.NEXTVAL@BODEGA PERVIN_ID,
P1.PERVIN_CODIGO,
P1.PERVIN_PERSONA,
P1.PERVIN_INSTANCIA,
P1.FECHA_REGISTRO,
P1.ESTADO,
P1.START_ESTADO,
P1.END_ESTADO,
P1.FECHA_CONTROL,
P1.FECHA_INICIAL,
P1.FECHA_FIN
FROM (
SELECT P.SPERSON PERVIN_CODIGO, P.NNUMIDE PERVIN_PERSONA, 1 PERVIN_INSTANCIA, AXIS.F_SYSDATE FECHA_REGISTRO, 
       'ACTIVO' ESTADO,
       AXIS.F_SYSDATE START_ESTADO,
       AXIS.F_SYSDATE END_ESTADO,
       AXIS.F_SYSDATE FECHA_CONTROL,
       TRUNC(AXIS.F_SYSDATE, 'MONTH') FECHA_INICIAL,
       TRUNC(LAST_DAY(SYSDATE)) FECHA_FIN
FROM AXIS.PER_PERSONAS P, AXIS.TOMADORES T
 WHERE P.SPERSON = T.SPERSON
 UNION all
SELECT P.SPERSON PERVIN_CODIGO, P.NNUMIDE PERVIN_PERSONA, 2 PERVIN_INSTANCIA,  AXIS.F_SYSDATE FECHA_REGISTRO, 
       'ACTIVO' ESTADO,
       AXIS.F_SYSDATE START_ESTADO,
       AXIS.F_SYSDATE END_ESTADO,
       AXIS.F_SYSDATE FECHA_CONTROL,
       TRUNC(AXIS.F_SYSDATE, 'MONTH') FECHA_INICIAL,
       TRUNC(LAST_DAY(SYSDATE)) FECHA_FIN
       FROM AXIS.PER_PERSONAS P, AXIS.ASEGURADOS A
 WHERE P.SPERSON = A.SPERSON
  UNION all
SELECT P.SPERSON PERVIN_CODIGO, P.NNUMIDE PERVIN_PERSONA, 3 PERVIN_INSTANCIA, AXIS.F_SYSDATE FECHA_REGISTRO, 
       'ACTIVO' ESTADO,
       AXIS.F_SYSDATE START_ESTADO,
       AXIS.F_SYSDATE END_ESTADO,
       AXIS.F_SYSDATE FECHA_CONTROL,
       TRUNC(AXIS.F_SYSDATE, 'MONTH') FECHA_INICIAL,
       TRUNC(LAST_DAY(SYSDATE)) FECHA_FIN
       FROM AXIS.PER_PERSONAS P, AXIS.AGENTES AG
 WHERE P.SPERSON = AG.SPERSON
 )P1;

COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DIM_PERSONA_VINCULACION"  IS 'SNAPSHOT TABLE FOR SNAPSHOT DWH_CONF.DIM_PERSONA_VINCULACION';