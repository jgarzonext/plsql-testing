--------------------------------------------------------
--  DDL for View ESTPERSONAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."ESTPERSONAS" ("SPERSON", "NNUMIDE", "NORDIDE", "CTIPIDE", "CSEXPER", "FNACIMI", "CESTPER", "FJUBILA", "CUSUARI", "FMOVIMI", "CMUTUALISTA", "FDEFUNC", "SNIP", "CAGENTE", "CAGENTEPROD", "CIDIOMA", "TAPELLI1", "TAPELLI2", "TAPELLI", "TNOMBRE", "TSIGLAS", "CPROFES", "TBUSCAR", "CESTCIV", "CPAIS", "CBANCAR", "CTIPBAN", "SSEGURO", "SPEREAL", "SWPUBLI", "CTIPPER", "NNUMNIF", "CPERTIP", "TIDENTI", "NNIFDUP", "NNIFREP", "CESTADO", "FINFORM", "NEMPLEADO", "NNUMSOE", "TNOMTOT", "TPEROBS", "CNIFREP", "PDTOINT", "CCARGOS", "TPERMIS", "PRODUCTE", "NSOCIO", "NHIJOS", "CLABORAL", "CVIP", "SPERCON", "FANTIGUE", "CTRATO", "NUM_CONTRA", "TNOMBRE1", "TNOMBRE2", "TDIGITOIDE", "COCUPACION") AS 
  SELECT per.sperson, per.nnumide, per.nordide, per.ctipide, per.csexper, per.fnacimi,
          per.cestper, per.fjubila, per.cusuari, per.fmovimi, per.cmutualista, per.fdefunc,
          per.snip, d.cagente, ff_agenteprod() cagenteprod, d.cidioma, d.tapelli1, d.tapelli2,
          --Bug 29738/166355 - 14/02/2014 - AMC
          d.tapelli1 || ' ' || d.tapelli2 tapelli,
          --Bug 29738/166355 - 14/02/2014 - AMC
                                                  SUBSTR(d.tnombre, 0, 20) tnombre,
                                                                                   -- Se deberá quitar el substr cuando se prepare base de datos
                                                                                   d.tsiglas,
                                                                                   --Bug 29738/166355 - 14/02/2014 - AMC
          -- Se deberá quitar el substr cuando se prepare base de datos
          d.cprofes, d.tbuscar, d.cestciv, d.cpais, c.cbancar, c.ctipban, per.sseguro,
          per.spereal, per.swpubli, per.ctipper,
-- Los siguientes campos están obsolotes, se deberán quitar cuando desaparezcan completamente los forms ...  En base de datos no se deben utilizar.
                                                per.nnumide nnumnif, per.ctipper cpertip,
          per.ctipide tidenti, per.nordide nnifdup, per.nordide nnifrep, per.cestper cestado,
          per.fmovimi finform, NULL nempleado, NULL nnumsoe, NULL tnomtot, NULL tperobs,
          NULL cnifrep, NULL pdtoint, NULL ccargos, NULL tpermis, NULL producte, NULL nsocio,
          NULL nhijos, NULL claboral, NULL cvip, NULL spercon, NULL fantigue, NULL ctrato,
          NULL num_contra, d.tnombre1, d.tnombre2, per.tdigitoide, d.cocupacion
     FROM estper_personas per, estper_detper d, estper_ccc c, estpersonas_publicas pp
    WHERE per.sperson = d.sperson
      AND c.sperson(+) = d.sperson
      AND c.cagente(+) = d.cagente
      AND c.cdefecto(+) = 1   -- cuenta bacaria por defecto
      AND per.sperson = pp.sperson   -- La persona es pública y la puede ver todo el mundo
      AND per.cagente = d.cagente   --Bug 29166/160004 - 29/11/2013 - AMC
   UNION ALL
   SELECT per.sperson, per.nnumide, per.nordide, per.ctipide, per.csexper, per.fnacimi,
          per.cestper, per.fjubila, per.cusuari, per.fmovimi, per.cmutualista, per.fdefunc,
          per.snip, d.cagente, ff_agenteprod() cagenteprod, d.cidioma, d.tapelli1, d.tapelli2,
          --Bug 29738/166355 - 14/02/2014 - AMC
          d.tapelli1 || ' ' || d.tapelli2 tapelli,
          --Bug 29738/166355 - 14/02/2014 - AMC
                                                  -- Se deberá quitar el substr cuando se prepare base de datos
                                                  SUBSTR(d.tnombre, 0, 20) tnombre,   -- Se deberá quitar el substr cuando se prepare base de datos
                                                                                   d.tsiglas,   -- Se deberá quitar el substr cuando se prepare base de datos
                                                                                                --Bug 29738/166355 - 14/02/2014 - AMC
          d.cprofes, d.tbuscar, d.cestciv, d.cpais, c.cbancar, c.ctipban, per.sseguro,
          per.spereal, per.swpubli, per.ctipper,
                                                -- Los siguientes campos están obsolotes, se deberán quitar cuando desaparezcan completamente los forms.
                                                -- En base de datos no se deben utilizar.
                                                per.nnumide nnumnif, per.ctipide cpertip,
          per.ctipide tidenti, per.nordide nnifdup, per.nordide nnifrep, per.cestper cestado,
          per.fmovimi finform, NULL nempleado, NULL nnumsoe, NULL tnomtot, NULL tperobs,
          NULL cnifrep, NULL pdtoint, NULL ccargos, NULL tpermis, NULL producte, NULL nsocio,
          NULL nhijos, NULL claboral, NULL cvip, NULL spercon, NULL fantigue, NULL ctrato,
          NULL num_contra, d.tnombre1, d.tnombre2, per.tdigitoide, d.cocupacion
     FROM estper_personas per, estper_detper d, estper_ccc c, agentes_agente aa
    WHERE per.sperson = d.sperson
      AND c.sperson(+) = d.sperson
      AND c.cagente(+) = d.cagente
      AND c.cdefecto(+) = 1   -- cuenta bacaria por defecto
      AND per.swpubli = 0   -- La persona es privada y miramos si tenemos acceso a ver estos datos.
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
      AND d.cagente = aa.cagente
   UNION ALL
   SELECT per.sperson, per.nnumide, per.nordide, per.ctipide, per.csexper, per.fnacimi,
          per.cestper, per.fjubila, per.cusuari, per.fmovimi, per.cmutualista, per.fdefunc,
          per.snip, d.cagente, ff_agenteprod() cagenteprod, d.cidioma, d.tapelli1, d.tapelli2,
          --Bug 29738/166355 - 14/02/2014 - AMC
          d.tapelli1 || ' ' || d.tapelli2 tapelli,
          --Bug 29738/166355 - 14/02/2014 - AMC
                                                  -- Se deberá quitar el substr cuando se prepare base de datos
                                                  SUBSTR(d.tnombre, 0, 20) tnombre,   -- Se deberá quitar el substr cuando se prepare base de datos
                                                                                   d.tsiglas,   -- Se deberá quitar el substr cuando se prepare base de datos
          --Bug 29738/166355 - 14/02/2014 - AMC
          d.cprofes, d.tbuscar, d.cestciv, d.cpais, c.cbancar, c.ctipban, per.sseguro,
          per.spereal, per.swpubli, per.ctipper,
                                                -- Los siguientes campos están obsolotes, se deberán quitar cuando desaparezcan completamente los forms.
                                                -- En base de datos no se deben utilizar.
                                                per.nnumide nnumnif, per.ctipide cpertip,
          per.ctipide tidenti, per.nordide nnifdup, per.nordide nnifrep, per.cestper cestado,
          per.fmovimi finform, NULL nempleado, NULL nnumsoe, NULL tnomtot, NULL tperobs,
          NULL cnifrep, NULL pdtoint, NULL ccargos, NULL tpermis, NULL producte, NULL nsocio,
          NULL nhijos, NULL claboral, NULL cvip, NULL spercon, NULL fantigue, NULL ctrato,
          NULL num_contra, d.tnombre1, d.tnombre2, per.tdigitoide, d.cocupacion
     FROM estper_personas per, estper_detper d, estper_ccc c
    WHERE per.sperson = d.sperson
      AND c.sperson(+) = d.sperson
      AND c.cagente(+) = d.cagente
      AND c.cdefecto(+) = 1   -- cuenta bacaria por defecto
      AND per.swpubli = 0
      AND d.cagente = ff_agenteprod()
;
  GRANT UPDATE ON "AXIS"."ESTPERSONAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPERSONAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTPERSONAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTPERSONAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPERSONAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTPERSONAS" TO "PROGRAMADORESCSI";
