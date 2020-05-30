----- DELETE VISTA ----------	
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('FACT_CONSORCIO','MATERIALIZED VIEW');  
END;
/

----- CREATE VISTA ----------
CREATE MATERIALIZED VIEW "CONF_DWH"."FACT_CONSORCIO" ("CONS_ID", "CONS_SUCUR", "CONS_CODPLA", "CONS_CERTIF", "CONS_PRINCIPAL", "CONS_CODIGO", "CONS_PARTICIPACION", "CONS_COMISION", "CONS_VALOR_PARTIC", "CONS_VALOR_COMISION", "FECHA_CONTROL", "FECHA_REGISTRO", "FECHA_INICIO", "FECHA_FIN" )
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
AS SELECT CONS_ID.NEXTVAL@BODEGA CONS_ID,  
DG.GEO_ID CONS_SUCUR, 
S.SPRODUC CONS_CODPLA, 
RDM.NCERTDIAN CONS_CERTIF,
RDM.NCERTDIAN CONS_PRINCIPAL,
PR.SPERSON_REL CONS_CODIGO, 
PR.PPARTICIPACION CONS_PARTICIPACION, 
0 CONS_COMISION, 
(CAP.ICAPITAL*PR.PPARTICIPACION)/100 CONS_VALOR_PARTIC,
0 CONS_VALOR_COMISION, 
AXIS.F_SYSDATE FECHA_CONTROL,
AXIS.F_SYSDATE FECHA_REGISTRO, 
TRUNC(AXIS.F_SYSDATE, 'MONTH') FECHA_INICIO,
TRUNC(LAST_DAY(SYSDATE)) FECHA_FIN
FROM AXIS.PER_PERSONAS_REL PR, AXIS.TOMADORES T, AXIS.SEGUROS S, AXIS.RANGO_DIAN_MOVSEGURO RDM, AXIS.MOVSEGURO M, DIM_GEOGRAFICA@BODEGA DG,  
(SELECT SUM(G.ICAPITAL)ICAPITAL, G.SSEGURO, G.NMOVIMI
    FROM AXIS.GARANSEG G
   WHERE G.NMOVIMI = (SELECT MAX(MM.NMOVIMI)
             FROM AXIS.GARANSEG MM
            WHERE MM.SSEGURO = G.SSEGURO)
  GROUP BY G.SSEGURO, G.NMOVIMI)CAP
WHERE PR.SPERSON = T.SPERSON
AND PR.CAGRUPA = T.CAGRUPA
AND S.SSEGURO = T.SSEGURO
AND CAP.SSEGURO = S.SSEGURO
AND M.SSEGURO = RDM.SSEGURO
AND M.NMOVIMI = RDM.NMOVIMI(+)
AND S.SSEGURO = M.SSEGURO
AND DG.GEO_SUCURSAL = SUBSTR(AXIS.PAC_AGENTES.F_GET_CAGELIQ(24, 2, S.CAGENTE), 3,5) 
;


COMMENT ON MATERIALIZED VIEW "CONF_DWH"."FACT_CONSORCIO"  IS 'snapshot table for snapshot DWH_CONF.FACT_CONSORCIO';
