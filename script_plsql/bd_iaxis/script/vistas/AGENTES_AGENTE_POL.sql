--------------------------------------------------------
--  DDL for View AGENTES_AGENTE_POL
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."AGENTES_AGENTE_POL" ("CAGENTE", "CEMPRES") AS 
  SELECT a.cagente, a.cempres
     FROM ageredcom a, redcomercial r
    WHERE a.fmovfin IS NULL
      AND r.fmovfin IS NULL
      AND r.cagente = pac_user.ff_get_cagente(f_user)
      AND(a.c00 = r.cpolvisio
          OR a.c01 = r.cpolvisio
          OR a.c02 = r.cpolvisio
          OR a.c03 = r.cpolvisio
          OR a.c04 = r.cpolvisio
          OR a.c05 = r.cpolvisio
          OR a.c06 = r.cpolvisio
          OR a.c07 = r.cpolvisio
          OR a.c08 = r.cpolvisio
          OR a.c09 = r.cpolvisio
          OR a.c10 = r.cpolvisio
          OR a.c11 = r.cpolvisio
          OR a.c12 = r.cpolvisio)
;
  GRANT UPDATE ON "AXIS"."AGENTES_AGENTE_POL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENTES_AGENTE_POL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGENTES_AGENTE_POL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGENTES_AGENTE_POL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENTES_AGENTE_POL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGENTES_AGENTE_POL" TO "PROGRAMADORESCSI";
