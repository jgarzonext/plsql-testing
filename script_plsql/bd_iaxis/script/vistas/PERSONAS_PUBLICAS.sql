--------------------------------------------------------
--  DDL for View PERSONAS_PUBLICAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."PERSONAS_PUBLICAS" ("SPERSON") AS 
  SELECT p.sperson
     FROM usuarios u,
          (SELECT p.sperson
             FROM agentes ag, per_personas p, agentes_agente aa   --Agentes
            WHERE aa.cagente = ag.cagente
              AND p.sperson = ag.sperson
              AND p.swpubli = 1
           UNION
           (SELECT p.sperson
              FROM per_personas p
             WHERE p.swpubli = 1
            MINUS
            SELECT sperson
              FROM agentes a, ageredcom r
             WHERE a.cagente = r.cagente
               AND r.fmovfin IS NULL)) p
    WHERE u.cusuari = f_user
      AND u.cvispubli = 1
;
  GRANT UPDATE ON "AXIS"."PERSONAS_PUBLICAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PERSONAS_PUBLICAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PERSONAS_PUBLICAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PERSONAS_PUBLICAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PERSONAS_PUBLICAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PERSONAS_PUBLICAS" TO "PROGRAMADORESCSI";
