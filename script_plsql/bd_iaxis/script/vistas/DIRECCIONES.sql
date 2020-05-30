--------------------------------------------------------
--  DDL for View DIRECCIONES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."DIRECCIONES" ("SPERSON", "CAGENTE", "CAGENTEPROD", "CDOMICI", "CTIPDIR", "CSIGLAS", "TNOMVIA", "NNUMVIA", "TCOMPLE", "TDOMICI", "CPOSTAL", "CPOBLAC", "CPROVIN", "SWPUBLI", "CUSUARI", "FMOVIMI", "CVIAVP", "CLITVP", "CBISVP", "CORVP", "NVIAADCO", "CLITCO", "CORCO", "NPLACACO", "COR2CO", "CDET1IA", "TNUM1IA", "CDET2IA", "TNUM2IA", "CDET3IA", "TNUM3IA", "TALIAS") AS 
  SELECT dir.sperson, dir.cagente, ff_agenteprod() cagenteprod, dir.cdomici, dir.ctipdir,
          dir.csiglas, dir.tnomvia, dir.nnumvia, dir.tcomple, dir.tdomici, dir.cpostal,
          dir.cpoblac, dir.cprovin, p.swpubli, dir.cusuari, dir.fmovimi, dir.cviavp,
          dir.clitvp, dir.cbisvp, dir.corvp, dir.nviaadco, dir.clitco, dir.corco, dir.nplacaco,
          dir.cor2co, dir.cdet1ia, dir.tnum1ia, dir.cdet2ia, dir.tnum2ia, dir.cdet3ia,
          dir.tnum3ia, dir.talias   -- BUG CONF-441 - 14/12/2016 - JAEG
     FROM per_personas p, per_direcciones dir, personas_publicas pp
    WHERE dir.sperson = p.sperson
      AND p.sperson = pp.sperson
      AND p.cagente = dir.cagente   --Bug 29166/160004 - 29/11/2013 - AMC
   UNION ALL
   SELECT dir.sperson, dir.cagente, ff_agenteprod() cagenteprod, dir.cdomici, dir.ctipdir,
          dir.csiglas, dir.tnomvia, dir.nnumvia, dir.tcomple,
          DECODE(dir.tdomici,
                 NULL, pac_persona.f_tdomici(dir.csiglas, dir.tnomvia, dir.nnumvia,
                                             dir.tcomple),
                 dir.tdomici) tdomici,
          dir.cpostal, dir.cpoblac, dir.cprovin, p.swpubli, dir.cusuari, dir.fmovimi,
          dir.cviavp, dir.clitvp, dir.cbisvp, dir.corvp, dir.nviaadco, dir.clitco, dir.corco,
          dir.nplacaco, dir.cor2co, dir.cdet1ia, dir.tnum1ia, dir.cdet2ia, dir.tnum2ia,
          dir.cdet3ia, dir.tnum3ia, dir.talias   -- BUG CONF-441 - 14/12/2016 - JAEG
     FROM per_personas p, per_direcciones dir, per_detper d
    WHERE p.sperson = dir.sperson
      AND d.cagente = dir.cagente
      AND p.sperson = d.sperson
      AND d.cagente = ff_agenteprod()
      AND p.swpubli = 0   -- La persona es privada y miramos si tenemos acceso a ver estos datos.
   UNION ALL
   SELECT dir.sperson, dir.cagente, ff_agenteprod() cagenteprod, dir.cdomici, dir.ctipdir,
          dir.csiglas, dir.tnomvia, dir.nnumvia, dir.tcomple,
          DECODE(dir.tdomici,
                 NULL, pac_persona.f_tdomici(dir.csiglas, dir.tnomvia, dir.nnumvia,
                                             dir.tcomple),
                 dir.tdomici) tdomici,
          dir.cpostal, dir.cpoblac, dir.cprovin, p.swpubli, dir.cusuari, dir.fmovimi,
          dir.cviavp, dir.clitvp, dir.cbisvp, dir.corvp, dir.nviaadco, dir.clitco, dir.corco,
          dir.nplacaco, dir.cor2co, dir.cdet1ia, dir.tnum1ia, dir.cdet2ia, dir.tnum2ia,
          dir.cdet3ia, dir.tnum3ia, dir.talias   -- BUG CONF-441 - 14/12/2016 - JAEG
     FROM per_personas p, per_direcciones dir, per_detper d, agentes_agente aa
    WHERE p.sperson = dir.sperson
      AND d.cagente = dir.cagente
      AND p.swpubli = 0   -- La persona es privada y miramos si tenemos acceso a ver estos datos.
      AND p.sperson = d.sperson
      AND d.cagente != ff_agenteprod()
      AND NOT EXISTS(SELECT 1
                       FROM per_detper dd
                      WHERE dd.sperson = p.sperson
                        AND dd.cagente = ff_agenteprod())
      AND d.fmovimi = (SELECT MAX(fmovimi)
                         FROM per_detper dd
                        WHERE dd.sperson = d.sperson
                          AND dd.cagente = aa.cagente)
      --Si hay mas de un detalle cogemos el m¿s nuevo
      AND dir.cagente = aa.cagente

;
  GRANT UPDATE ON "AXIS"."DIRECCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIRECCIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DIRECCIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DIRECCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIRECCIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DIRECCIONES" TO "PROGRAMADORESCSI";
