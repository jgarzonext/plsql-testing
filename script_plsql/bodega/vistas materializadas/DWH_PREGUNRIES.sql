--------------------------------------------------------
--  DDL for Materialized View DWH_PREGUNRIES
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_PREGUNRIES" ("SSEGURO", "NUM_MOVIMI", "NUM_RIESGO", "SPERSON_RIESGO", "COD_DOMICILIO_RIESGO", "COD_PREGUNTA", "TEXTO_PREGUNTA", "COD_RESPUESTA", "TEXTO_RESPUESTA")
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
  AS SELECT p.sseguro, p.nmovimi num_movimi, p.nriesgo num_riesgo, r.sperson sperson_riesgo,
       r.cdomici cod_domicilio_riesgo, p.cpregun cod_pregunta, pr.tpregun texto_pregunta,
       p.crespue cod_respuesta, rp.trespue texto_respuesta
  FROM pregunseg p, riesgos r, preguntas pr, respuestas rp
 WHERE r.nriesgo = p.nriesgo
   AND r.sseguro = p.sseguro
   AND p.cpregun = pr.cpregun
   AND p.crespue = rp.crespue
   AND p.cpregun = rp.cpregun
   AND pr.cidioma = rp.cidioma
   AND rp.cidioma = 2 ;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_PREGUNRIES"  IS 'snapshot table for snapshot DWH_PREGUNRIES (20150908)';
