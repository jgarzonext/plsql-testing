--------------------------------------------------------
--  DDL for Materialized View DIM_CTACOASEGURO_REM
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DIM_CTACOASEGURO_REM" ("SMOVCOA", "POLIZA_COMP_ABRIDORA", "COASEGURADORA", "SUCURSAL", "FECHA_CIERRE", "TIPO_COASEGURO", "ESTADO", "TDESCRIMONEDAS", "SALDO")
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
  AS SELECT SMOVCOA,NPOLCIA POLIZA_COMP_ABRIDORA, TCOMPANI COASEGURADORA,SUCURSAL , FCIERRE FECHA_CIERRE, 
       ttipcoa tipo_coaseguro,  CESTADO ESTADO, tdescrimonedas, imovimi saldo
from
(
 SELECT c.smovcoa smovcoa, c.ccompani ccompani, p.tcompani tcompani, c.ccompapr ccompapr, 
        pac_redcomercial.ff_desagente(pac_agentes.f_get_cageliq(24, 2, CSUCURSAL),8) sucursal,CSUCURSAL,
     c.fcierre fcierre, c.npolcia npolcia, c.tdescri tdescri, c.cmoneda cmoneda, c.imovimi imovimi,
     c.ctipcoa ctipcoa, ff_desvalorfijo(800109, 8, c.ctipcoa) ttipcoa,  m.cmoneda CMONEDA,m.tdescri tdescriMonedas, c.CIMPORT CIMPORT,c.CDEBHAB CDEBHAB,c.CESTADO CESTADO,
     C.TDESCRI TDESCRI,C.TDOCUME TDOCUME
         FROM ctacoaseguro c, companias p, empresas e, monedas m
         WHERE c.ccompani = p.ccompani AND c.cmoneda = m.cmoneda AND m.cmoneda = c.cmoneda 
          AND m.cidioma = 8
          AND c.imovimi <> 0
          AND C.NPOLCIA = NVL(NULL,C.NPOLCIA)
          AND E.CEMPRES(+) = C.CEMPRES
);

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DIM_CTACOASEGURO_REM"  IS 'snapshot table for snapshot CONF_DWH.DIM_CTACOASEGURO_REM';
