--------------------------------------------------------
--  DDL for View NACIONALIDADES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."NACIONALIDADES" ("SPERSON", "CAGENTE", "CAGENTEPROD", "CPAIS", "CDEFECTO") AS 
  SELECT n.sperson, n.cagente, ff_agenteprod() cagenteprod, n.cpais, n.cdefecto
     FROM per_personas p, per_nacionalidades n, personas_publicas pp
    WHERE n.sperson = p.sperson
      AND p.sperson = pp.sperson
      AND p.cagente = n.cagente   --Bug 29166/160004 - 29/11/2013 - AMC
   UNION ALL
   SELECT n.sperson, n.cagente, ff_agenteprod() cagenteprod, n.cpais, n.cdefecto
     FROM per_personas per, per_nacionalidades n, per_detper d
    WHERE per.sperson = n.sperson
      AND per.swpubli = 0
      -- La persona es privada y miramos si tenemos acceso a ver estos datos.
      AND per.sperson = d.sperson
      AND d.cagente = n.cagente
      AND d.cagente = ff_agenteprod()
   UNION ALL
   SELECT n.sperson, n.cagente, ff_agenteprod() cagenteprod, n.cpais, n.cdefecto
     FROM per_personas per, per_nacionalidades n, per_detper d, agentes_agente aa
    WHERE per.sperson = n.sperson
      AND per.swpubli = 0
      -- La persona es privada y miramos si tenemos acceso a ver estos datos.
      AND per.sperson = d.sperson
      AND d.cagente = n.cagente
      AND d.cagente != ff_agenteprod()
      AND NOT EXISTS(SELECT 1
                       FROM per_detper dd
                      WHERE dd.sperson = per.sperson
                        AND dd.cagente = ff_agenteprod())
      AND d.fmovimi = (SELECT MAX(fmovimi)
                         FROM per_detper dd
                        WHERE dd.sperson = d.sperson
                          AND dd.cagente = aa.cagente)
      --Si hay mas de un detalle cogemos el más nuevo
      AND n.cagente = aa.cagente
;
  GRANT UPDATE ON "AXIS"."NACIONALIDADES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."NACIONALIDADES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."NACIONALIDADES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."NACIONALIDADES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."NACIONALIDADES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."NACIONALIDADES" TO "PROGRAMADORESCSI";
