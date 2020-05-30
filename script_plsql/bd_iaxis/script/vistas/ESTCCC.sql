--------------------------------------------------------
--  DDL for View ESTCCC
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."ESTCCC" ("SPERSON", "CAGENTE", "CTIPBAN", "CBANCAR", "FBAJA", "CDEFECTO", "CUSUMOV", "FUSUMOV", "CNORDBAN", "CVALIDA", "CPAGSIN", "FVENCIM", "TSEGURI", "FALTA", "CUSUALTA") AS 
  SELECT   c.sperson, c.cagente, c.ctipban, c.cbancar, c.fbaja, c.cdefecto, c.cusumov,
            c.fusumov, c.cnordban, c.cvalida, c.cpagsin, c.fvencim, c.tseguri, c.falta,
            c.cusualta
       FROM estper_ccc c, estper_personas per, estper_detper d, agentes_agente aa
      WHERE per.sperson = d.sperson
        AND c.sperson = d.sperson
        AND c.cagente = d.cagente
        AND per.swpubli =
                       0   -- La persona es privada y miramos si tenemos acceso a ver estos datos.
        AND d.cagente != ff_agente_cpervisio(ff_agenteprod(), f_sysdate)
        AND NOT EXISTS(SELECT 1
                         FROM estper_detper dd
                        WHERE dd.sperson = per.sperson
                          AND dd.cagente = ff_agente_cpervisio(ff_agenteprod(), f_sysdate))
        AND d.fmovimi = (SELECT MAX(fmovimi)
                           FROM estper_detper dd
                          WHERE dd.sperson = d.sperson
                            AND dd.cagente = aa.cagente)
        --Si hay mas de un detalle cogemos el más nuevo
        AND d.cagente = aa.cagente
   UNION ALL
   SELECT   c.sperson, c.cagente, c.ctipban, c.cbancar, c.fbaja, c.cdefecto, c.cusumov,
            c.fusumov, c.cnordban, c.cvalida, c.cpagsin, c.fvencim, c.tseguri, c.falta,
            c.cusualta
       FROM estper_ccc c, estper_personas per, estper_detper d
      WHERE per.sperson = d.sperson
        AND c.sperson = d.sperson
        AND c.cagente = d.cagente
        AND per.swpubli =
                       0   -- La persona es privada y miramos si tenemos acceso a ver estos datos.
        AND d.cagente = ff_agente_cpervisio(ff_agenteprod(), f_sysdate)
   UNION ALL
   SELECT   c.sperson, c.cagente, c.ctipban, c.cbancar, c.fbaja, c.cdefecto, c.cusumov,
            c.fusumov, c.cnordban, c.cvalida, c.cpagsin, c.fvencim, c.tseguri, c.falta,
            c.cusualta
       FROM estper_ccc c, estper_personas per, estper_detper d, estpersonas_publicas pp
      WHERE per.sperson = d.sperson
        AND c.sperson = d.sperson
        AND c.cagente = d.cagente
        AND per.sperson = pp.sperson
        AND d.cagente = per.cagente   --Bug 29166/160004 - 29/11/2013 - AMC
   ORDER BY 6 DESC
;
  GRANT UPDATE ON "AXIS"."ESTCCC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTCCC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTCCC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTCCC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTCCC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTCCC" TO "PROGRAMADORESCSI";
