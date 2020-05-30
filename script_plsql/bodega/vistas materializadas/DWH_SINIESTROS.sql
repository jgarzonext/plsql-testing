--------------------------------------------------------
--  DDL for Materialized View DWH_SINIESTROS
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_SINIESTROS" ("POLIZA", "SINIESTRO", "RIESGO", "PERSONA_RIESGO", "COD_ESTADO", "DESC_ESTADO", "AAAA_FSINIES", "MM_FSINIES", "DD_FSINIES", "AAAA_FNOTIFI", "MM_FNOTIFI", "DD_FNOTIFI", "AAAA_FALTA", "MM_FALTA", "DD_FALTA", "TRAMITADOR", "DESC_SIN", "COD_CAUSA", "DESC_CAUSA", "COD_MOTIVO", "DESC_MOTIVO", "SSEGURO", "FESTSIN", "FEC_FALTA")
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
  AS SELECT s.npoliza poliza, SIN.nsinies siniestro, SIN.nriesgo riesgo, r.sperson persona_riesgo,
       a.cestsin cod_estado, ff_desvalorfijo(6, 2, a.cestsin) desc_estado,
       TO_CHAR(SIN.fsinies, 'yyyy') aaaa_fsinies, TO_CHAR(SIN.fsinies, 'mm') mm_fsinies,
       TO_CHAR(SIN.fsinies, 'dd') dd_fsinies, TO_CHAR(SIN.fnotifi, 'yyyy') aaaa_fnotifi,
       TO_CHAR(SIN.fnotifi, 'mm') mm_fnotifi, TO_CHAR(SIN.fsinies, 'dd') dd_fnotifi,
       TO_CHAR(SIN.falta, 'yyyy') aaaa_falta, TO_CHAR(SIN.falta, 'mm') mm_falta,
       TO_CHAR(SIN.falta, 'dd') dd_falta, SIN.cusualt tramitador, SIN.tsinies desc_sin,
       SIN.ccausin cod_causa, cau.tcausin desc_causa, SIN.cmotsin cod_motivo,
       d.tmotsin desc_motivo, sin.SSEGURO, a.FESTSIN, sin.falta FEC_FALTA
  FROM sin_siniestro SIN, seguros s, riesgos r, sin_descausa cau, sin_desmotcau d,
       sin_movsiniestro a
 WHERE SIN.sseguro = s.sseguro
   AND r.sseguro = s.sseguro
   AND r.nriesgo = SIN.nriesgo
   AND SIN.ccausin = cau.ccausin(+)
   AND cau.cidioma(+) = 2
   AND d.cmotsin(+) = SIN.cmotsin
   AND d.cidioma(+) = 2
   AND d.ccausin(+) = SIN.ccausin
   AND a.nsinies = SIN.nsinies
   AND a.nmovsin IN(SELECT MAX(x.nmovsin)
                      FROM sin_movsiniestro x
                     WHERE x.nsinies = a.nsinies) ;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_SINIESTROS"  IS 'snapshot table for snapshot DWH_SINIESTROS (20150908)';
