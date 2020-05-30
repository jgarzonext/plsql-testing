--------------------------------------------------------
--  DDL for View ESTPERSONAS_PUBLICAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."ESTPERSONAS_PUBLICAS" ("SPERSON") AS 
  SELECT p.sperson
   FROM usuarios u,
        (SELECT p.sperson
         FROM agentes ag, estper_personas p, agentes_agente aa       --Agentes
         WHERE     aa.cagente = ag.cagente
               AND p.sperson = ag.sperson
               AND p.swpubli = 1
         UNION
         (SELECT p.sperson
          FROM estper_personas p
          WHERE p.swpubli = 1
          MINUS
          SELECT sperson
          FROM agentes)) p
   WHERE u.cusuari = f_user AND u.cvispubli = 1
;
  GRANT UPDATE ON "AXIS"."ESTPERSONAS_PUBLICAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPERSONAS_PUBLICAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTPERSONAS_PUBLICAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTPERSONAS_PUBLICAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPERSONAS_PUBLICAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTPERSONAS_PUBLICAS" TO "PROGRAMADORESCSI";
