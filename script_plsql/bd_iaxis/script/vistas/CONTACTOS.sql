--------------------------------------------------------
--  DDL for View CONTACTOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."CONTACTOS" ("SPERSON", "CAGENTE", "CAGENTEPROD", "CMODCON", "CTIPCON", "TCOMCON", "TVALCON", "SWPUBLI", "CPREFIX") AS 
  SELECT c.sperson, c.cagente, ff_agenteprod() cagenteprod, c.cmodcon, c.ctipcon, c.tcomcon,
          c.tvalcon, p.swpubli, c.cprefix
     FROM per_contactos c, per_personas p
    WHERE c.sperson = p.sperson
      AND p.swpubli = 1   -- PERSONA PÚBLICA
      AND p.cagente = c.cagente   --Bug 29166/160004 - 29/11/2013 - AMC
   UNION ALL
   SELECT c.sperson, c.cagente, ff_agenteprod() cagenteprod, c.cmodcon, c.ctipcon, c.tcomcon,
          c.tvalcon, p.swpubli, c.cprefix
     FROM per_personas p, per_contactos c, per_detper d
    WHERE p.sperson = c.sperson
      AND p.swpubli = 0   -- La persona es privada y miramos si tenemos acceso a ver estos datos.
      AND p.sperson = d.sperson
      AND d.cagente = c.cagente
      AND d.cagente = ff_agenteprod()
   UNION ALL
   SELECT c.sperson, c.cagente, ff_agenteprod() cagenteprod, c.cmodcon, c.ctipcon, c.tcomcon,
          c.tvalcon, p.swpubli, c.cprefix
     FROM per_personas p, per_contactos c, per_detper d
    WHERE p.sperson = c.sperson
      AND p.swpubli = 0   -- La persona es privada y miramos si tenemos acceso a ver estos datos.
      AND d.cagente != ff_agenteprod()
      AND NOT EXISTS(SELECT 1
                       FROM per_detper dd
                      WHERE dd.sperson = p.sperson
                        AND dd.cagente = ff_agenteprod())
      AND p.sperson = d.sperson
      AND d.cagente = c.cagente
      AND d.fmovimi =
            (SELECT MAX(fmovimi)
               FROM per_detper dd
              WHERE dd.sperson = d.sperson
                AND dd.cagente IN(SELECT     r.cagente
                                        FROM redcomercial r
                                       WHERE fmovfin IS NULL
                                         AND LEVEL =
                                               DECODE(ff_agente_cpernivel(ff_agenteprod()),
                                                      1, LEVEL,
                                                      1)
                                  START WITH cagente = ff_agente_cpervisio(ff_agenteprod())
                                  CONNECT BY PRIOR cagente = cpadre
                                         AND PRIOR fmovfin IS NULL))
      --Si hay mas de un detalle cogemos el más nuevo
      AND c.cagente IN(SELECT     r.cagente
                             FROM redcomercial r
                            WHERE fmovfin IS NULL
                              AND LEVEL = DECODE(ff_agente_cpernivel(ff_agenteprod()),
                                                 1, LEVEL,
                                                 1)
                       START WITH cagente = ff_agente_cpervisio(ff_agenteprod())
                       CONNECT BY PRIOR cagente = cpadre
                              AND PRIOR fmovfin IS NULL)
;
  GRANT UPDATE ON "AXIS"."CONTACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTACTOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONTACTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONTACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTACTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONTACTOS" TO "PROGRAMADORESCSI";
