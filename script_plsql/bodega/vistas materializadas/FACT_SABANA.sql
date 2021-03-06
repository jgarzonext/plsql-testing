----- DELETE VISTA ----------	
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('FACT_SABANA','MATERIALIZED VIEW');  
END;
/

----- CREATE VISTA ----------
CREATE MATERIALIZED VIEW "CONF_DWH"."FACT_SABANA" ("TIE_ID", "PER_PERSONA", "CUM_VALOR_ASEGURADO", "CUM_PRIMA_REASEG", "CANT_POL", "FECHA_REGISTRO", "ESTADO", "START_ESTADO", "END_ESTADO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN" )
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
AS SELECT 0 TIE_ID,  
T.SPERSON PER_PERSONA,
AXIS.PAC_CUMULOS_CONF.F_CUM_TOTAL_TOM(P.NNUMIDE, TO_DATE(TO_CHAR(SYSDATE,'DDMMYYYY'),'DDMMYYYY')) CUM_VALOR_ASEGURADO,
S.IPRIANU CUM_PRIMA_REASEG,
SP.CANTPOL CANT_POL, 
AXIS.F_SYSDATE FECHA_REGISTRO, 
'ACTIVO' ESTADO,
AXIS.F_SYSDATE START_ESTADO,
AXIS.F_SYSDATE END_ESTADO,
AXIS.F_SYSDATE FECHA_CONTROL,
TRUNC(AXIS.F_SYSDATE, 'MONTH') FECHA_INICIAL,
TRUNC(LAST_DAY(SYSDATE)) FECHA_FIN
FROM AXIS.SEGUROS S, AXIS.TOMADORES T, AXIS.PER_PERSONAS P, 
(SELECT T.SPERSON SPERSON, COUNT(T.SSEGURO) CANTPOL FROM AXIS.TOMADORES T
GROUP BY T.SPERSON) SP
WHERE S.SSEGURO = T.SSEGURO
AND P.SPERSON = T.SPERSON
AND T.SPERSON = SP.SPERSON
GROUP BY T.SPERSON, 
AXIS.PAC_CUMULOS_CONF.F_CUM_TOTAL_TOM(P.NNUMIDE, TO_DATE(TO_CHAR(SYSDATE,'DDMMYYYY'),'DDMMYYYY')), 
S.IPRIANU, SP.CANTPOL
;

COMMENT ON MATERIALIZED VIEW "CONF_DWH"."FACT_SABANA"  IS 'SNAPSHOT TABLE FOR SNAPSHOT DWH_CONF.FACT_SABANA';
