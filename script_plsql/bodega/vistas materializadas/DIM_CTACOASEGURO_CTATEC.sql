--------------------------------------------------------
--  DDL for Materialized View DIM_CTACOASEGURO_CTATEC
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DIM_CTACOASEGURO_CTATEC" ("ES_LIQUIDABLE", "ESTADO", "COMPAÑÍA", "COASEGURADORA", "FECHA_CIERRE", "COD_TIPO_COSASEGURO", "TIPO_COASEGURO", "MONEDA", "SALDO", "SALDO_PESOS")
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 0 INITRANS 2 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CONF_DWH" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND START WITH sysdate+0 NEXT TRUNC(SYSDATE + 1) + 20/24
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE QUERY REWRITE
  AS select es_liquidable, estado, 
TCOMPAPR COMPAÑÍA, TCOMPANI COASEGURADORA, FCIERRE FECHA_CIERRE, 
      ctipcoa cod_tipo_cosaseguro, ttipcoa tipo_coaseguro, tmoneda moneda, isaldo saldo, saldo_pesos  
from      
(
SELECT DISTINCT 
C.CESTADO ESTADO,SPROCES,C.CCOMPAPR, C.CTIPCOA TIPCOA,
       cm.tcompani tcompapr,
       c.ccompani,p.tcompani,
	   case when c.ctipcoa = 1 then LAST_DAY(TRUNC(c.fcierre)) else LAST_DAY(TRUNC(c.fmovimi)) end fcierre,
       c.ctipcoa,ff_desvalorfijo(800109,8, c.ctipcoa) ttipcoa, NVL(c.cmoneda, s.cmoneda) cmoneda,
       m.cmonint tmoneda,SUM(DECODE(c.cestado,4,0,DECODE(cdebhab,1,imovimi,-imovimi))) isaldo, 
       SUM(DECODE(c.cestado,4,0,DECODE(cdebhab,1,imovimi_moncon,-imovimi_moncon))) saldo_pesos,
       CASE WHEN C.CMOVIMI = 99 THEN 1 ELSE 0 END ES_LIQUIDABLE 
FROM CTACOASEGURO C,COMPANIAS P,EMPRESAS E,SEGUROS S,MONEDAS M, PRODUCTOS PD, COMPANIAS CM
WHERE C.CCOMPANI(+) = P.CCOMPANI
 AND cm.ccompani = c.ccompapr
 AND m.cidioma = 8 AND c.imovimi <> 0
 AND e.cempres(+) = c.cempres AND c.ctipcoa = s.ctipcoa
 AND s.ctipcoa > 0 AND c.sseguro = s.sseguro
 AND s.cramo = pd.cramo AND s.cmodali = pd.cmodali 
 AND s.ctipseg = pd.ctipseg AND s.ccolect = pd.ccolect 
 AND m.cmoneda = pd.cdivisa AND NVL(c.cmoneda, pd.cdivisa) = pd.cdivisa 
 AND c.cmovimi = 99 
GROUP BY 
c.cestado, sproces,c.ccompapr, cm.tcompani, p.tcompani, c.ccompani,p.tcompani,
(case when c.ctipcoa = 1 then LAST_DAY(TRUNC(c.fcierre)) else LAST_DAY(TRUNC(c.fmovimi)) end),
C.CTIPCOA,FF_DESVALORFIJO(800109, 8, C.CTIPCOA),NVL(C.CMONEDA, S.CMONEDA),M.CMONINT,
CASE WHEN C.CMOVIMI = 99 THEN 1 ELSE 0 END
UNION
SELECT DISTINCT 
c.cestado estado,sproces,c.ccompapr, c.ctipcoa tipcoa,
       cm.tcompani tcompapr,
       c.ccompani,p.tcompani,
	   case when c.ctipcoa = 1 then LAST_DAY(TRUNC(c.fcierre)) else LAST_DAY(TRUNC(c.fmovimi)) end fcierre,
       c.ctipcoa,ff_desvalorfijo(800109,8, c.ctipcoa) ttipcoa, NVL(c.cmoneda, s.cmoneda) cmoneda,
       m.cmonint tmoneda,SUM(DECODE(c.cestado,4,0,DECODE(cdebhab,1,imovimi,-imovimi))) isaldo, 
       SUM(DECODE(c.cestado,4,0,DECODE(cdebhab,1,imovimi_moncon,-imovimi_moncon))) saldo_pesos,
       CASE WHEN C.CMOVIMI = 99 THEN 1 ELSE 0 END ES_LIQUIDABLE 
FROM ctacoaseguro c,companias p,empresas e,seguros s,monedas m, productos pd , companias cm
WHERE C.CCOMPANI = P.CCOMPANI
 AND cm.ccompani(+) = c.ccompapr
 AND m.cidioma = 8 AND c.imovimi <> 0
 AND e.cempres(+) = c.cempres AND c.ctipcoa = s.ctipcoa
 AND s.ctipcoa > 0 AND c.sseguro = s.sseguro
 AND s.cramo = pd.cramo AND s.cmodali = pd.cmodali 
 AND s.ctipseg = pd.ctipseg AND s.ccolect = pd.ccolect 
 AND m.cmoneda = pd.cdivisa AND NVL(c.cmoneda, pd.cdivisa) = pd.cdivisa 
 AND C.CESTADO = 1
 AND c.cmovimi <> 99 
 and not exists (select 1 from ctacoaseguro cc where cc.ccompani=c.ccompani and cc.ccompapr=c.ccompapr and cc.ctipcoa=c.ctipcoa 
                 and cc.fcierre=c.fcierre and cc.cmovimi=99 and cc.cempres=c.cempres and cc.sseguro=c.sseguro 
                 and cc.cestado = 1)
GROUP BY 
c.cestado, sproces,c.ccompapr, cm.tcompani,p.tcompani, c.ccompani,p.tcompani,
(case when c.ctipcoa = 1 then LAST_DAY(TRUNC(c.fcierre)) else LAST_DAY(TRUNC(c.fmovimi)) end),
c.ctipcoa,ff_desvalorfijo(800109, 8, c.ctipcoa),NVL(c.cmoneda, s.cmoneda),m.cmonint,
CASE WHEN C.CMOVIMI = 99 THEN 1 ELSE 0 END	
);

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DIM_CTACOASEGURO_CTATEC"  IS 'snapshot table for snapshot CONF_DWH.DIM_CTACOASEGURO_CTATEC';
