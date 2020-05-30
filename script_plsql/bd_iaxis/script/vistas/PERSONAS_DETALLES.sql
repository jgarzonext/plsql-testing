--------------------------------------------------------
--  DDL for View PERSONAS_DETALLES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."PERSONAS_DETALLES" ("SPERSON", "CAGENTE", "TAGENTE", "NNUMIDE", "NORDIDE", "CTIPIDE", "CSEXPER", "FNACIMI", "CESTPER", "FJUBILA", "CTIPPER", "CUSUARI", "FMOVIMI", "CMUTUALISTA", "FDEFUNC", "SNIP", "CIDIOMA", "TAPELLI1", "TAPELLI2", "TAPELLI", "TNOMBRE", "TSIGLAS", "CPROFES", "TBUSCAR", "CESTCIV", "CPAIS", "CBANCAR", "CTIPBAN", "SWPUBLI", "TNOMBRE1", "TNOMBRE2", "TDIGITOIDE", "COCUPACION") AS 
  SELECT per.sperson, d.cagente, ff_desagente(d.cagente) tagente, per.nnumide, per.nordide,
          per.ctipide, per.csexper, per.fnacimi, per.cestper, per.fjubila, per.ctipper,
          per.cusuari, per.fmovimi, per.cmutualista, per.fdefunc, per.snip, d.cidioma,
          d.tapelli1, d.tapelli2, d.tapelli1 || ' ' || d.tapelli2 tapelli, d.tnombre,
          d.tsiglas, d.cprofes, d.tbuscar, d.cestciv, d.cpais, c.cbancar, c.ctipban,
          per.swpubli, d.tnombre1, d.tnombre2, per.tdigitoide,
          d.cocupacion   -- Bug 25456/133727 - 16/01/2013 - AMC
     FROM per_personas per, per_detper d, per_ccc c, personas_publicas pp
    WHERE per.sperson = d.sperson
      AND c.sperson(+) = d.sperson
      AND c.cagente(+) = d.cagente
      AND c.cdefecto(+) = 1   -- cuenta bacaria por defecto
      AND per.sperson = pp.sperson   -- La persona es pública y la puede ver todo el mundo
      AND per.cagente = d.cagente   --Bug 29166/160004 - 29/11/2013 - AMC
   UNION ALL
   SELECT per.sperson, d.cagente, ff_desagente(d.cagente) tagente, per.nnumide, per.nordide,
          per.ctipide, per.csexper, per.fnacimi, per.cestper, per.fjubila, per.ctipper,
          per.cusuari, per.fmovimi, per.cmutualista, per.fdefunc, per.snip, d.cidioma,
          d.tapelli1, d.tapelli2, d.tapelli1 || ' ' || d.tapelli2 tapelli, d.tnombre,
          d.tsiglas, d.cprofes, d.tbuscar, d.cestciv, d.cpais, c.cbancar, c.ctipban,
          per.swpubli, d.tnombre1, d.tnombre2, per.tdigitoide,
          d.cocupacion   -- Bug 25456/133727 - 16/01/2013 - AMC
     FROM per_personas per, per_detper d, per_ccc c
    WHERE per.sperson = d.sperson
      AND c.sperson(+) = d.sperson
      AND c.cagente(+) = d.cagente
      AND c.cdefecto(+) = 1   -- cuenta bacaria por defecto
      AND per.swpubli = 0
      AND d.cagente IN(SELECT cagente
                         FROM agentes_agente)
;
  GRANT UPDATE ON "AXIS"."PERSONAS_DETALLES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PERSONAS_DETALLES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PERSONAS_DETALLES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PERSONAS_DETALLES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PERSONAS_DETALLES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PERSONAS_DETALLES" TO "PROGRAMADORESCSI";
