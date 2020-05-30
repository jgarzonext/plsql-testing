----- DELETE VISTA ----------
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('FACT_MULTIPLE_INTERMEDIARIO','MATERIALIZED VIEW');  
END;
/

----- CREATE VISTA ----------
  CREATE MATERIALIZED VIEW "CONF_DWH"."FACT_MULTIPLE_INTERMEDIARIO" ("MULT_INTER_ID", "MULT_INTER_SUCUR", "MULT_INTER_CODPLA", "MULT_INTER_CERTIF", 
  "MULT_INTER_PRINCIPAL", "MULT_INTER_CODIGO", "MULT_INTER_PARTICIPACION", "MULT_INTER_COMISION", "MULT_INTER_VALOR_PARTIC",
  "MULT_INTER_VALOR_COMISION", "FECHA_CONTROL", "FECHA_REGISTRO", "FECHA_INICIO", "FECHA_FIN", "FK_TIEMPO")
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
  AS select MULT_INTER_ID.NEXTVAL@BODEGA MULT_INTER_ID, aa.*
  from (select a.MULT_INTER_SUCUR,
               a.MULT_INTER_CODPLA,
               --a.NPOLIZA,
               a.MULT_INTER_CERTIF,
               A.MULT_INTER_PRINCIPAL,
               A.MULT_INTER_CODIGO,
               a.MULT_INTER_PARTICIPACION,
               a.MULT_INTER_COMISION,
               nvl(sum(a.MULT_INTER_VALOR_PARTIC), 0) MULT_INTER_VALOR_PARTIC,
               nvl(sum(a.MULT_INTER_VALOR_COMISION), 0) MULT_INTER_VALOR_COMISION,
               a.FECHA_REGISTRO,
               a.FECHA_CONTROL,
               a.FECHA_INICIO,
               a.FECHA_FIN,
               a.FK_TIEMPO
          from (SELECT DG.GEO_ID MULT_INTER_SUCUR,
                       s.SPRODUC MULT_INTER_CODPLA,
                       S.NPOLIZA,
                       rdm.NCERTDIAN MULT_INTER_CERTIF,
                       A.ISLIDER MULT_INTER_PRINCIPAL,
                       A.CAGENTE MULT_INTER_CODIGO,
                       a.PPARTICI MULT_INTER_PARTICIPACION,
                       cp.PCOMISI MULT_INTER_COMISION,
                       v.iprinet MULT_INTER_VALOR_PARTIC,
                       v.icombru MULT_INTER_VALOR_COMISION,
                       axis.F_SYSDATE FECHA_CONTROL,
                       axis.F_SYSDATE FECHA_REGISTRO,
                       to_date('01/01/1986') FECHA_INICIO,
                       axis.F_SYSDATE FECHA_FIN,
                       DTM.TIE_ID FK_TIEMPO
                  FROM axis.age_corretaje A, axis.SEGUROS S, axis.MOVSEGURO m, axis.RANGO_DIAN_MOVSEGURO rdm, axis.VDETRECIBOS v,
                       (SELECT r.nrecibo, r.sseguro, r.nmovimi
                         FROM axis.recibos r
                         WHERE NMOVIMI = (SELECT MAX(NMOVIMI)
                                            FROM axis.recibos
                                           WHERE SSEGURO = R.SSEGURO
                                           GROUP BY SSEGURO)) r,
                       axis.agentes ag,
                       axis.comisionprod cp, 
                       DIM_GEOGRAFICA@BODEGA DG, 
                       axis.AGEREDCOM AC, 
                       DIM_TIEMPO@BODEGA DTM
                 WHERE S.SSEGURO = A.SSEGURO
                   AND m.sseguro = S.SSEGURO
                   AND S.CAGENTE = A.CAGENTE(+)
                   AND m.sseguro = rdm.sseguro(+)
                   AND m.nmovimi = rdm.nmovimi(+)
                   AND m.sseguro = r.sseguro(+)
                   AND m.nmovimi = r.nmovimi(+)
                   AND v.nrecibo(+) = r.nrecibo
                   AND A.CAGENTE = AG.CAGENTE
                   AND cp.sproduc = s.sproduc
                   AND cp.ccomisi = ag.ccomisi
                   AND DG.GEO_SUCURSAL = SUBSTR(axis.PAC_AGENTES.F_GET_CAGELIQ(24, AC.CTIPAGE, A.CAGENTE), 3,5) 
                   AND AC.CAGENTE = A.CAGENTE
                   AND S.FEMISIO = DTM.TIE_FECHA
                   AND AC.CTIPAGE IN (2,3)
                group by DG.GEO_ID,
                S.NPOLIZA,
                          cp.PCOMISI,
                          s.sseguro,
                          s.SPRODUC,
                          rdm.NCERTDIAN,
                          A.ISLIDER,
                          A.CAGENTE,
                          a.PPARTICI,
                          a.PCOMISI,
                          v.icombru,
                          iprinet, DTM.TIE_ID) a
        
         group by a.MULT_INTER_SUCUR,
                  a.MULT_INTER_CODPLA,
                  a.NPOLIZA,
                  a.MULT_INTER_CERTIF,
                  A.MULT_INTER_PRINCIPAL,
                  A.MULT_INTER_CODIGO,
                  a.MULT_INTER_PARTICIPACION,
                  a.MULT_INTER_COMISION,
                  a.FECHA_REGISTRO,
                  a.FECHA_CONTROL,
                  a.FECHA_INICIO,
                  a.FECHA_FIN,
                  a.FK_TIEMPO) aa;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."FACT_MULTIPLE_INTERMEDIARIO"  IS 'snapshot table for snapshot DWH_CONF.FACT_MULTIPLE_INTERMEDIARIO';
