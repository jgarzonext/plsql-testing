--------------------------------------------------------
--  DDL for View AGENTES_AGENTE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."AGENTES_AGENTE" ("CAGENTE", "CEMPRES") AS 
  SELECT a.cagente, a.cempres
     FROM ageredcom a, redcomercial r
    WHERE a.fmovfin IS NULL
      AND r.fmovfin IS NULL
      AND r.cagente = NVL(ff_agenteprod(), pac_user.ff_get_cagente(f_user))
      AND(a.c00 = r.cpervisio
          OR a.c01 = r.cpervisio
          OR a.c02 = r.cpervisio
          OR a.c03 = r.cpervisio
          OR a.c04 = r.cpervisio
          OR a.c05 = r.cpervisio
          OR a.c06 = r.cpervisio
          OR a.c07 = r.cpervisio
          OR a.c08 = r.cpervisio
          OR a.c09 = r.cpervisio
          OR a.c10 = r.cpervisio
          OR a.c11 = r.cpervisio
          OR a.c12 = r.cpervisio)
;
  GRANT UPDATE ON "AXIS"."AGENTES_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENTES_AGENTE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGENTES_AGENTE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGENTES_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENTES_AGENTE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGENTES_AGENTE" TO "PROGRAMADORESCSI";
