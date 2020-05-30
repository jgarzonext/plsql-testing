--------------------------------------------------------
--  DDL for Materialized View VDIM_GEOGRAFICA
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."VDIM_GEOGRAFICA" ("COMPAÑIA", "COMPAÑIA_SIGLA", "COMPAÑIA_DESC", "PADRE_COMPAÑIA", "REGION", "REGION_DESC", "SUCURSAL", "SUCURSAL_DESC", "AGENCIA", "AGENCIA_DESC", "CIUDAD", "CIUDAD_DESC", "FECHA_REGISTRO", "ESTADO", "START_ESTADO", "END_ESTADO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN")
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 0 INITRANS 2 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CONF_DWH" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE QUERY REWRITE
  AS SELECT DISTINCT 
       A.COMPAÑIA,
       ' 'COMPAÑIA_SIGLA, 
       A.COMPAÑIA_DESC, 
       A.PADRE_COMPAÑIA,
       B.REGION, B.REGION_DESC, 
       C.SUCURSAL,C.SUCURSAL_DESC, 
       D.AGENCIA, D.AGENCIA_DESC, 
       D.CIUDAD,
       D.CIUDAD_DESC,
       f_sysdate FECHA_REGISTRO, 
       'ACTIVO' ESTADO,
       to_date('01/01/1986') START_ESTADO,
       ' ' END_ESTADO,
       f_sysdate FECHA_CONTROL,
       TRUNC(f_sysdate, 'month') FECHA_INICIAL,
       trunc(last_day(sysdate)) FECHA_FIN


FROM
(SELECT CEMPRES COMPAÑIA,cpadre padre_compañia, NOM_DECLARANTE COMPAÑIA_DESC FROM
(SELECT r.cempres,r.cagente,r.cpadre,a.sperson,DPA1.TNOMBRE1 || ' ' || DPA1.TNOMBRE2 ||  ' ' || DPA1.TAPELLI1 || ' ' || DPA1.TAPELLI2 NOM_DECLARANTE,r.ctipage
                          FROM redcomercial r,agentes a,
                                 per_detper dpa1
                            where r.cagente=a.cagente
                            and a.sperson=dpa1.sperson
                         and r.fmovfin IS NULL
                        START WITH r.ctipage=3 AND	                                   
                                   r.cempres=24
                        CONNECT BY (r.cagente=PRIOR r.cpadre  OR
                                                  r.cagente=PRIOR r.cenlace) AND
                                   r.cempres=PRIOR 24 AND
                                                 r.fmovfin IS NULL )A     
WHERE CTIPAGE=0)A,

(SELECT NOM_DECLARANTE REGION_DESC,cpadre age_compania, pac_agentes.f_get_cageliq(24, CTIPAGE, cagente) REGION FROM
(SELECT r.cempres,r.cagente,r.cpadre,a.sperson,DPA1.TNOMBRE1 || ' ' || DPA1.TNOMBRE2 ||  ' ' || DPA1.TAPELLI1 || ' ' || DPA1.TAPELLI2 NOM_DECLARANTE,r.ctipage
                          FROM redcomercial r,agentes a,
                                 per_detper dpa1
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

(SELECT NOM_DECLARANTE SUCURSAL_DESC, cpadre age_region, pac_agentes.f_get_cageliq(24, ctipage, cagente) SUCURSAL  FROM
(SELECT r.cempres,r.cagente,r.cpadre,a.sperson,DPA1.TNOMBRE1 || ' ' || DPA1.TNOMBRE2 ||  ' ' || DPA1.TAPELLI1 || ' ' || DPA1.TAPELLI2 NOM_DECLARANTE,r.ctipage
                          FROM redcomercial r,agentes a,
                                 per_detper dpa1
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
SELECT pac_agentes.f_get_cageliq(24, CTIPAGE, cagente) AGENCIA, cpadre age_sucursal, NOM_DECLARANTE AGENCIA_DESC, CIUDAD,nvl(pac_isqlfor.f_poblacion(SPERSON, 1), ' ') CIUDAD_DESC  FROM
(SELECT r.cempres,r.cagente,r.cpadre,a.sperson,DPA1.TNOMBRE1 || ' ' || DPA1.TNOMBRE2 ||  ' ' || DPA1.TAPELLI1 || ' ' || DPA1.TAPELLI2 NOM_DECLARANTE,r.ctipage, pd.cprovin CIUDAD
                          FROM redcomercial r,agentes a,
                                 per_detper dpa1,
                                 per_direcciones pd
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
where 
c.age_region=b.region
AND d.age_sucursal(+)=c.sucursal
;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."VDIM_GEOGRAFICA"  IS 'snapshot table for snapshot CONF_DWH.VDIM_GEOGRAFICA';
