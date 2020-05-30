--------------------------------------------------------
--  DDL for Materialized View DWH_TRASPASOS
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_TRASPASOS" ("POLIZA", "DESC_PROD", "COD_TIPO_TRASP", "DESC_TIPO_TRASP", "TRASPASO", "REF_TRAS_234", "IMP_TRASP", "AAAA_FANTIGI", "MM_FANTIGI", "DD_FANTIGI", "PART_POS_2006", "PART_ANT_2007", "APORT_ASEG", "APORT_PROMOT", "COD_PLA_EXT", "DESC_PLA_EXT", "COD_COMPANI", "CIF_COMPANI", "FTRASPASO", "APORT_EJER")
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
  AS SELECT s.npoliza poliza,
       f_desproducto_t(s.cramo, s.cmodali, s.ctipseg, s.ccolect, 1, 2) desc_prod,
       tra.cinout cod_tipo_trasp, ff_desvalorfijo(679, 2, tra.cinout) desc_tipo_trasp,
       tra.stras traspaso, tra.srefc234 ref_tras_234, NVL(tra.iimporte, 0) imp_trasp,
       TO_CHAR(tra.fantigi, 'yyyy') aaaa_fantigi, TO_CHAR(tra.fantigi, 'mm') mm_fantigi,
       TO_CHAR(tra.fantigi, 'dd') dd_fantigi, NVL(tra.nparpos2006, 0) part_pos_2006,
       NVL(tra.nparant2007, 0) part_ant_2007, NVL(tra.imappaano, 0) aport_aseg,
       NVL(tra.imapprano, 0) aport_promot, pn.coddgs cod_pla_ext, tra.tcodpla desc_pla_ext,
       ag.coddgs cod_compani, per.nnumide cif_compani, tra.fvalor ftraspaso,
       NVL(tra.iimpanu, 0) aport_ejer
  FROM trasplainout tra, seguros s, companias c, per_personas per, planpensiones pn,
       aseguradoras ag
 WHERE tra.sseguro = s.sseguro(+)
   AND tra.ccompani = c.ccompani(+)
   AND c.sperson = per.sperson(+)
   AND tra.ccodpla = pn.ccodpla(+)
   AND tra.ccodaseg = ag.ccodaseg(+) ;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_TRASPASOS"  IS 'snapshot table for snapshot DWH_TRASPASOS (20150908)';
