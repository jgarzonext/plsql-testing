--------------------------------------------------------
--  DDL for View CCC
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."CCC" ("SPERSON", "CAGENTE", "CTIPBAN", "CBANCAR", "FBAJA", "CDEFECTO", "CUSUMOV", "FUSUMOV", "CNORDBAN") AS 
  SELECT   c.sperson, c.cagente, c.ctipban, c.cbancar, c.fbaja, c.cdefecto, c.cusumov,
            c.fusumov, c.cnordban
       FROM per_ccc c, per_detper d, per_personas per, agentes_agente aa
      WHERE per.sperson = d.sperson
        AND c.sperson = d.sperson
        AND c.cagente = d.cagente
        AND per.swpubli = 0
        AND d.cagente != ff_agente_cpervisio(ff_agenteprod(), f_sysdate)
        AND NOT EXISTS(SELECT 1
                         FROM per_detper dd
                        WHERE dd.sperson = per.sperson
                          AND dd.cagente = ff_agente_cpervisio(ff_agenteprod(), f_sysdate))
        AND d.fmovimi = (SELECT MAX(fmovimi)
                           FROM per_detper dd
                          WHERE dd.sperson = d.sperson
                            AND dd.cagente = aa.cagente)
        AND d.cagente = aa.cagente
   UNION ALL
   SELECT   c.sperson, c.cagente, c.ctipban, c.cbancar, c.fbaja, c.cdefecto, c.cusumov,
            c.fusumov, c.cnordban
       FROM per_ccc c, per_detper d, per_personas per
      WHERE per.sperson = d.sperson
        AND c.sperson = d.sperson
        AND c.cagente = d.cagente
        AND per.swpubli = 0
        AND d.cagente = ff_agente_cpervisio(ff_agenteprod(), f_sysdate)
   UNION ALL
   SELECT   c.sperson, c.cagente, c.ctipban, c.cbancar, c.fbaja, c.cdefecto, c.cusumov,
            c.fusumov, c.cnordban
       FROM per_ccc c, per_detper d, per_personas per, personas_publicas pp
      WHERE per.sperson = d.sperson
        AND per.cagente = d.cagente   --Bug 29166/160004 - 29/11/2013 - AMC
        AND c.sperson = d.sperson
        AND c.cagente = d.cagente
        AND per.sperson = pp.sperson
   ORDER BY 6 DESC
;
  GRANT UPDATE ON "AXIS"."CCC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CCC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CCC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CCC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CCC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CCC" TO "PROGRAMADORESCSI";
