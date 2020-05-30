--------------------------------------------------------
--  DDL for View PERSONAS_AGENTE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."PERSONAS_AGENTE" ("SPERSON", "NNUMIDE", "NORDIDE", "CTIPIDE", "CSEXPER", "FNACIMI", "CESTPER", "FJUBILA", "CUSUARI", "FMOVIMI", "CMUTUALISTA", "FDEFUNC", "SNIP", "CAGENTE", "CAGENTEPROD", "CIDIOMA", "TAPELLI1", "TAPELLI2", "TAPELLI", "TNOMBRE", "TSIGLAS", "CPROFES", "TBUSCAR", "CESTCIV", "CPAIS", "CBANCAR", "CTIPBAN", "SWPUBLI", "CTIPPER", "NNUMNIF", "CPERTIP", "TIDENTI", "NNIFDUP", "NNIFREP", "CESTADO", "FINFORM", "NEMPLEADO", "NNUMSOE", "TNOMTOT", "TPEROBS", "CNIFREP", "PDTOINT", "CCARGOS", "TPERMIS", "PRODUCTE", "NSOCIO", "NHIJOS", "CLABORAL", "CVIP", "SPERCON", "FANTIGUE", "CTRATO", "NUM_CONTRA") AS 
  SELECT   per.sperson,
            per.nnumide,
            per.nordide,
            per.ctipide,
            per.csexper,
            per.fnacimi,
            per.cestper,
            per.fjubila,
            per.cusuari,
            per.fmovimi,
            per.cmutualista,
            per.fdefunc,
            per.snip,
            d.cagente,
            ff_agenteprod () cagenteprod,
            d.cidioma,
            tapelli1,
            tapelli2,
            d.tapelli1 || ' ' || d.tapelli2 tapelli,
            tnombre,
            tsiglas,
            d.cprofes,
            d.tbuscar,
            d.cestciv,
            d.cpais,
            c.cbancar,
            c.ctipban,
            per.swpubli,
            per.ctipper,
            -- Los siguientes campos están obsolotes, se deberán quitar cuando desaparezcan completamente los forms. -- En base de datos no se deben utilizar.
            per.nnumide nnumnif,
            per.ctipper cpertip,
            per.ctipide tidenti,
            per.nordide nnifdup,
            per.nordide nnifrep,
            per.cestper cestado,
            per.fmovimi finform,
            NULL nempleado,
            NULL nnumsoe,
            NULL tnomtot,
            NULL tperobs,
            NULL cnifrep,
            NULL pdtoint,
            NULL ccargos,
            NULL tpermis,
            NULL producte,
            NULL nsocio,
            NULL nhijos,
            NULL claboral,
            NULL cvip,
            NULL spercon,
            NULL fantigue,
            NULL ctrato,
            NULL num_contra
     FROM   per_personas per,
            per_detper d,
            per_ccc c,
            agentes_agente aa
    WHERE       per.sperson = d.sperson
            AND c.sperson(+) = d.sperson
            AND c.cagente(+) = d.cagente
            AND c.cdefecto(+) = 1                -- cuenta bacaria por defecto
            AND per.swpubli = 0 -- La persona es privada y miramos si tenemos acceso a ver estos datos.
            AND d.cagente != ff_agenteprod ()
            AND NOT EXISTS
                  (SELECT   1
                     FROM   per_detper dd
                    WHERE   dd.sperson = per.sperson
                            AND dd.cagente = ff_agenteprod ())
            AND d.fmovimi =
                  (SELECT   MAX (fmovimi)
                     FROM   per_detper dd
                    WHERE   dd.sperson = d.sperson
                            AND dd.cagente = aa.cagente) --Si hay mas de un detalle cogemos el más nuevo
            AND d.cagente = aa.cagente
   UNION
   SELECT   per.sperson,
            per.nnumide,
            per.nordide,
            per.ctipide,
            per.csexper,
            per.fnacimi,
            per.cestper,
            per.fjubila,
            per.cusuari,
            per.fmovimi,
            per.cmutualista,
            per.fdefunc,
            per.snip,
            d.cagente,
            ff_agenteprod () cagenteprod,
            d.cidioma,
            tapelli1,
            tapelli2,
            d.tapelli1 || ' ' || d.tapelli2 tapelli,
            tnombre,
            tsiglas,
            d.cprofes,
            d.tbuscar,
            d.cestciv,
            d.cpais,
            c.cbancar,
            c.ctipban,
            per.swpubli,
            per.ctipper,
            -- Los siguientes campos están obsolotes, se deberán quitar cuando desaparezcan completamente los forms. -- En base de datos no se deben utilizar.
            per.nnumide nnumnif,
            per.ctipide cpertip,
            per.ctipide tidenti,
            per.nordide nnifdup,
            per.nordide nnifrep,
            per.cestper cestado,
            per.fmovimi finform,
            NULL nempleado,
            NULL nnumsoe,
            NULL tnomtot,
            NULL tperobs,
            NULL cnifrep,
            NULL pdtoint,
            NULL ccargos,
            NULL tpermis,
            NULL producte,
            NULL nsocio,
            NULL nhijos,
            NULL claboral,
            NULL cvip,
            NULL spercon,
            NULL fantigue,
            NULL ctrato,
            NULL num_contra
     FROM   per_personas per, per_detper d, per_ccc c
    WHERE       per.sperson = d.sperson
            AND c.sperson(+) = d.sperson
            AND c.cagente(+) = d.cagente
            AND c.cdefecto(+) = 1                -- cuenta bacaria por defecto
            AND per.swpubli = 0 -- La persona es privada y miramos si tenemos acceso a ver estos datos.
            AND d.cagente = ff_agenteprod ()
;
  GRANT UPDATE ON "AXIS"."PERSONAS_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PERSONAS_AGENTE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PERSONAS_AGENTE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PERSONAS_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PERSONAS_AGENTE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PERSONAS_AGENTE" TO "PROGRAMADORESCSI";
