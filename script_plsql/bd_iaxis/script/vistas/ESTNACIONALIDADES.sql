--------------------------------------------------------
--  DDL for View ESTNACIONALIDADES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."ESTNACIONALIDADES" ("SPERSON", "CAGENTE", "CAGENTEPROD", "CPAIS", "CDEFECTO") AS 
  SELECT n.sperson, n.cagente, ff_agenteprod() cagenteprod, n.cpais, n.cdefecto
     FROM estper_personas p, estper_nacionalidades n, estpersonas_publicas pp
    WHERE n.sperson = p.sperson
      AND p.sperson = pp.sperson
      AND p.cagente = n.cagente   --Bug 29166/160004 - 29/11/2013 - AMC
   UNION ALL
   SELECT n.sperson, n.cagente, ff_agenteprod() cagenteprod, n.cpais, n.cdefecto
     FROM estper_personas per, estper_nacionalidades n, estper_detper d
    WHERE per.sperson = n.sperson
      AND per.swpubli =
                       0   -- La persona es privada y miramos si tenemos acceso a ver estos datos.
      AND per.sperson = d.sperson
      AND d.cagente = n.cagente
      AND d.cagente = ff_agenteprod()
   UNION ALL
   SELECT n.sperson, n.cagente, ff_agenteprod() cagenteprod, n.cpais, n.cdefecto
     FROM estper_personas per, estper_nacionalidades n, estper_detper d, agentes_agente aa
    WHERE per.sperson = n.sperson
      AND per.swpubli =
                       0   -- La persona es privada y miramos si tenemos acceso a ver estos datos.
      AND per.sperson = d.sperson
      AND d.cagente = n.cagente
      AND d.cagente != ff_agenteprod()
      AND NOT EXISTS(SELECT 1
                       FROM estper_detper dd
                      WHERE dd.sperson = per.sperson
                        AND dd.cagente = ff_agenteprod())
      AND d.fmovimi = (SELECT MAX(fmovimi)
                         FROM estper_detper dd
                        WHERE dd.sperson = d.sperson
                          AND dd.cagente = aa.cagente)
      --Si hay mas de un detalle cogemos el más nuevo
      AND n.cagente = aa.cagente
;
  GRANT UPDATE ON "AXIS"."ESTNACIONALIDADES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTNACIONALIDADES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTNACIONALIDADES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTNACIONALIDADES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTNACIONALIDADES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTNACIONALIDADES" TO "PROGRAMADORESCSI";
