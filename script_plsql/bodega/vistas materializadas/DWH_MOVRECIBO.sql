--------------------------------------------------------
--  DDL for Materialized View DWH_MOVRECIBO
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_MOVRECIBO" ("SMOVREC", "NRECIBO", "COD_ESTADORECIBO", "COD_ESTADOANTERIOR", "DES_ESTADORECIBO", "DES_ESTADORECIBOANT", "FMOVIMIENTO", "AAAA_FMOVIMIENTO", "MM_FMOVIMIENTO", "DD_FMOVIMIENTO", "FMOVDIA", "AAAA_FMOVDIA", "MM_FMOVDIA", "DD_FMOVDIA", "FMOVIMIFIN", "AAAA_FMOVIMIFIN", "MM_FMOVIMIFIN", "DD_FMOVIMIFIN", "FECHA_CONTABLE", "AAAA_FECHA_CONTABLE", "MM_FECHA_CONTABLE", "DD_FECHA_CONTABLE", "COD_TIPOCOBRO", "DES_TIPOCOBRO", "NORDEN_PARCIAL", "FMOVIMIENTO_TRUNC")
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
  AS SELECT mv.smovrec, mv.nrecibo, mv.cestrec cod_estadorecibo, mv.cestant cod_estadoanterior,
       ff_desvalorfijo(383, 2, mv.cestrec) des_estadorecibo,
       ff_desvalorfijo(383, 2, mv.cestant) des_estadoreciboant, mv.fmovini fmovimiento,
       TO_CHAR(mv.fmovini, 'yyyy') aaaa_fmovimiento, TO_CHAR(mv.fmovini, 'mm') mm_fmovimiento,
       TO_CHAR(mv.fmovini, 'dd') dd_fmovimiento, mv.fmovdia,
       TO_CHAR(mv.fmovdia, 'yyyy') aaaa_fmovdia, TO_CHAR(mv.fmovdia, 'mm') mm_fmovdia,
       TO_CHAR(mv.fmovdia, 'dd') dd_fmovdia, 
       mv.fmovfin fmovimifin,
       TO_CHAR(mv.fmovfin, 'yyyy') aaaa_fmovimifin, TO_CHAR(mv.fmovfin, 'mm') mm_fmovimifin,
       TO_CHAR(mv.fmovfin, 'dd') dd_fmovimifin,
       mv.fefeadm fecha_contable,
       TO_CHAR(mv.fefeadm, 'yyyy') aaaa_fecha_contable,
       TO_CHAR(mv.fefeadm, 'mm') mm_fecha_contable, TO_CHAR(mv.fefeadm,
                                                            'dd') dd_fecha_contable,
       mv.ctipcob cod_tipocobro,
       DECODE(mv.ctipcob,
              0, f_axis_literales(112165, 2),
              1, f_axis_literales(151349, 2),
              f_axis_literales(104963, 2)) des_tipocobro,
       0 norden_parcial, TRUNC(mv.fmovini) fmovimiento_trunc
  FROM movrecibo mv
  ;

  CREATE INDEX "CONF_DWH"."DWHMOVRECIBO_I1" ON "CONF_DWH"."DWH_MOVRECIBO" ("NRECIBO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CONF_DWH" ;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_MOVRECIBO"  IS 'snapshot table for movimientos de recibos, incluidos los 
parciales (20150908).';
