----- DELETE VISTA ----------
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('DIM_USUARIO','MATERIALIZED VIEW');  
END;
/

----- CREATE VISTA ----------
  CREATE MATERIALIZED VIEW "CONF_DWH"."DIM_USUARIO" ("USU_ID", "USU_GRUPO", "USU_USUARIO", "USU_USUARIO_DESC", "FECHA_REGISTRO", "ESTADO", "START_ESTADO", 
   "END_ESTADO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN","SUCUR", "CLASE", "CODIGOPERSONA")
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
  AS SELECT USU_ID.NEXTVAL@BODEGA USU_ID, 
     U.CDELEGA USU_GRUPO,
       U.CUSUARI USU_USUARIO,
       U.TUSUNOM USU_USUARIO_DESC,
       AXIS.F_SYSDATE FECHA_REGISTRO,
       'ACTIVO' ESTADO,
       TO_DATE('01/01/1986') START_ESTADO,
       AXIS.F_SYSDATE END_ESTADO, 
       AXIS.F_SYSDATE FECHA_CONTROL,
       TRUNC(AXIS.F_SYSDATE, 'MONTH') FECHA_INICIAL,
       TRUNC(LAST_DAY(SYSDATE)) FECHA_FIN,
       DG.GEO_ID SUCUR, 
       A.CTIPAGE CLASE,
       U.SPERSON CODIGOPERSONA
 FROM AXIS.USUARIOS U, AXIS.AGENTES_COMP AC, AXIS.AGEREDCOM A, DIM_GEOGRAFICA@BODEGA DG
WHERE U.CUSUARI = AC.CUSUARI 
AND AC.CAGENTE = A.CAGENTE
AND A.CTIPAGE IN (2,3)
AND DG.GEO_SUCURSAL = SUBSTR(AXIS.PAC_AGENTES.F_GET_CAGELIQ(24, A.CTIPAGE, A.CAGENTE), 3,5) 
;

COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DIM_USUARIO"  IS 'SNAPSHOT TABLE FOR SNAPSHOT DWH_CONF.DIM_USUARIO';
  