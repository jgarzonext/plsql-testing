----- DELETE VISTA ----------
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('DIM_GEOGRAFICA','MATERIALIZED VIEW');  
END;
/

----- CREATE VISTA ----------
  CREATE MATERIALIZED VIEW "CONF_DWH"."DIM_GEOGRAFICA" ("GEO_ID", "GEO_COMPANNIA", "GEO_COMPANNIA_SIGLA", "GEO_COMPANNIA_DESC", "GEO_REGION", "GEO_REGION_DESC", 
   "GEO_CIUDAD", "GEO_CIUDAD_DESC",  "GEO_SUCURSAL", "GEO_SUCURSAL_DESC", "GEO_SUCURSAL_TAM", "GEO_AGENCIA", "GEO_AGENCIA_DESC", "FECHA_REGISTRO", "ESTADO", "START_ESTADO", 
  "END_ESTADO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN")
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
  AS select GEO_ID.NEXTVAL@BODEGA GEO_ID, 
AA.GEO_COMPANNIA,
AA.GEO_COMPANNIA_SIGLA, 
AA.GEO_COMPANNIA_DESC, 
AA.GEO_REGION, 
AA.GEO_REGION_DESC, 
AA.GEO_CIUDAD,
AA.GEO_CIUDAD_DESC,
AA.GEO_SUCURSAL,
AA.GEO_SUCURSAL_DESC, 
AA.GEO_SUCURSAL_TAM,
AA.GEO_AGENCIA, 
AA.GEO_AGENCIA_DESC,  
AA.FECHA_REGISTRO, 
AA.ESTADO,
AA.START_ESTADO,
AA.END_ESTADO,
AA.FECHA_CONTROL,
AA.FECHA_INICIAL,
AA.FECHA_FIN
from (SELECT distinct
       A.GEO_COMPANNIA,
       ' 'GEO_COMPANNIA_SIGLA, 
       A.GEO_COMPANNIA_DESC, 
       B.GEO_REGION, 
       B.GEO_REGION_DESC, 
       D.GEO_CIUDAD,
       D.GEO_CIUDAD_DESC,
       C.GEO_SUCURSAL,
       C.GEO_SUCURSAL_DESC, 
       A.GEO_SUCURSAL_TAM,
       D.GEO_AGENCIA, 
       D.GEO_AGENCIA_DESC,        
       AXIS.F_SYSDATE FECHA_REGISTRO, 
       'ACTIVO' ESTADO,
       to_date('01/01/1986') START_ESTADO,
       AXIS.F_SYSDATE END_ESTADO,
       AXIS.F_SYSDATE FECHA_CONTROL,
       TRUNC(AXIS.F_SYSDATE, 'month') FECHA_INICIAL,
       trunc(last_day(sysdate)) FECHA_FIN
  

FROM
(SELECT CEMPRES GEO_COMPANNIA,cpadre padre_compañia, GEO_SUCURSAL_TAM, NOM_DECLARANTE GEO_COMPANNIA_DESC FROM
(SELECT r.cempres,r.cagente,r.cpadre,dv.descrip GEO_SUCURSAL_TAM, a.sperson,DPA1.TNOMBRE1 || ' ' || DPA1.TNOMBRE2 ||  ' ' || DPA1.TAPELLI1 || ' ' || DPA1.TAPELLI2 NOM_DECLARANTE,r.ctipage
                          FROM AXIS.redcomercial r,AXIS.agentes a, AXIS.DESNIVELAGE dv,
                                 AXIS.per_detper dpa1
                            where r.cagente=a.cagente
                            and a.sperson=dpa1.sperson
                             AND r.ctipage = dv.ctipage 
                             AND dv.cidioma = 8
                             AND dv.cempres=r.cempres
                         and r.fmovfin IS NULL
                        START WITH r.ctipage=3 AND	                                   
                                   r.cempres=24
                        CONNECT BY (r.cagente=PRIOR r.cpadre  OR
                                                  r.cagente=PRIOR r.cenlace) AND
                                   r.cempres=PRIOR 24 AND
                                                 r.fmovfin IS NULL )A     
WHERE CTIPAGE=0)A,

(SELECT NOM_DECLARANTE GEO_REGION_DESC,cpadre age_compania, AXIS.pac_agentes.f_get_cageliq(24, CTIPAGE, cagente) GEO_REGION FROM
(SELECT r.cempres,r.cagente,r.cpadre,a.sperson,DPA1.TNOMBRE1 || ' ' || DPA1.TNOMBRE2 ||  ' ' || DPA1.TAPELLI1 || ' ' || DPA1.TAPELLI2 NOM_DECLARANTE,r.ctipage
                          FROM AXIS.redcomercial r,AXIS.agentes a,
                                 AXIS.per_detper dpa1
                            where r.cagente=a.cagente
                            and a.sperson=dpa1.sperson
                         and r.fmovfin IS NULL
                        START WITH r.ctipage=1 AND                                     
                                   r.cempres=24
                        CONNECT BY (r.cagente=PRIOR r.cpadre  OR
                                                  r.cagente=PRIOR r.cenlace) AND
                                   r.cempres=PRIOR 24 AND
                                                 r.fmovfin IS NULL )A    

WHERE CTIPAGE=1)B,

(SELECT NOM_DECLARANTE GEO_SUCURSAL_DESC, cpadre age_region, AXIS.pac_agentes.f_get_cageliq(24, ctipage, cagente) GEO_SUCURSAL  FROM
(SELECT r.cempres,r.cagente,r.cpadre,a.sperson,DPA1.TNOMBRE1 || ' ' || DPA1.TNOMBRE2 ||  ' ' || DPA1.TAPELLI1 || ' ' || DPA1.TAPELLI2 NOM_DECLARANTE,r.ctipage
                          FROM AXIS.redcomercial r,AXIS.agentes a,
                                 AXIS.per_detper dpa1
                            where r.cagente=a.cagente
                            and a.sperson=dpa1.sperson
                         and r.fmovfin IS NULL
                        START WITH r.ctipage=2 AND                                     
                                   r.cempres=24
                        CONNECT BY (r.cagente=PRIOR r.cpadre  OR
                                                  r.cagente=PRIOR r.cenlace) AND
                                   r.cempres=PRIOR 24 AND
                                                 r.fmovfin IS NULL )A    

WHERE CTIPAGE=2)C,

(                                     
SELECT AXIS.pac_agentes.f_get_cageliq(24, CTIPAGE, cagente) GEO_AGENCIA, cpadre age_sucursal, NOM_DECLARANTE GEO_AGENCIA_DESC, GEO_CIUDAD,nvl(AXIS.pac_isqlfor.f_poblacion(SPERSON, 1), ' ') GEO_CIUDAD_DESC  FROM
(SELECT r.cempres,r.cagente,r.cpadre,a.sperson,DPA1.TNOMBRE1 || ' ' || DPA1.TNOMBRE2 ||  ' ' || DPA1.TAPELLI1 || ' ' || DPA1.TAPELLI2 NOM_DECLARANTE,r.ctipage, pd.cprovin GEO_CIUDAD
                          FROM AXIS.redcomercial r,AXIS.agentes a,
                                 AXIS.per_detper dpa1,
                                 AXIS.per_direcciones pd
                            where r.cagente=a.cagente
                            and a.sperson=dpa1.sperson
                            and a.sperson=pd.sperson
                         and r.fmovfin IS NULL
                        START WITH r.ctipage=3 AND                                     
                                   r.cempres=24
                        CONNECT BY (r.cagente=PRIOR r.cpadre  OR
                                                  r.cagente=PRIOR r.cenlace) AND
                                   r.cempres=PRIOR 24 AND
                                                 r.fmovfin IS NULL )A    

WHERE CTIPAGE=3)D
where c.age_region=b.GEO_REGION
AND d.age_sucursal(+)=c.GEO_SUCURSAL
order by GEO_REGION, GEO_SUCURSAL, GEO_AGENCIA) AA
;

COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DIM_GEOGRAFICA"  IS 'snapshot table for snapshot DWH_CONF.DIM_GEOGRAFICA';