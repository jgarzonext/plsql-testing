--------------------------------------------------------
--  DDL for View IDENTIFICADORES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."IDENTIFICADORES" ("SPERSON", "CAGENTE", "CAGENTEPROD", "CTIPIDE", "NNUMIDE", "SWIDEPRI", "FEMISIO", "FCADUCA") AS 
  SELECT i.sperson, i.cagente, ff_agenteprod() cagenteprod, i.ctipide, i.nnumide, i.swidepri,
          i.femisio, i.fcaduca
     FROM per_personas p, per_identificador i, personas_publicas pp
    WHERE i.sperson = p.sperson
      AND p.sperson = pp.sperson
      AND p.cagente = i.cagente   --Bug 29166/160004 - 29/11/2013 - AMC
   UNION ALL
   SELECT i.sperson, i.cagente, ff_agenteprod() cagenteprod, i.ctipide, i.nnumide, i.swidepri,
          i.femisio, i.fcaduca
     FROM per_personas per, per_identificador i, per_detper d
    WHERE per.sperson = i.sperson
      AND per.swpubli = 0
      -- La persona es privada y miramos si tenemos acceso a ver estos datos.
      AND per.sperson = d.sperson
      AND d.cagente = i.cagente
      AND d.cagente = ff_agenteprod()
   UNION ALL
   SELECT i.sperson, i.cagente, ff_agenteprod() cagenteprod, i.ctipide, i.nnumide, i.swidepri,
          i.femisio, i.fcaduca
     FROM per_personas per, per_identificador i, per_detper d, agentes_agente aa
    WHERE per.sperson = i.sperson
      AND per.swpubli = 0
      -- La persona es privada y miramos si tenemos acceso a ver estos datos.
      AND per.sperson = d.sperson
      AND d.cagente = i.cagente
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
      AND i.cagente = aa.cagente
;
  GRANT UPDATE ON "AXIS"."IDENTIFICADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IDENTIFICADORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IDENTIFICADORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IDENTIFICADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IDENTIFICADORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IDENTIFICADORES" TO "PROGRAMADORESCSI";
