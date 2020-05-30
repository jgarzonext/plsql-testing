--------------------------------------------------------
--  DDL for View V_PERSONAS_SEGUROS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."V_PERSONAS_SEGUROS" ("SPERSON", "SSEGURO") AS 
  (SELECT sperson, sseguro   -- RIESGOS
      FROM riesgos
    UNION
    SELECT sperson, sseguro   -- TOMADORES
      FROM tomadores
    UNION
    SELECT sperson, sseguro   --ASEGURADOS
      FROM asegurados
    UNION
    SELECT sperson, sseguro   --CONDUCTORES
      FROM autconductores
    UNION
    SELECT sperson, sseguro   --CONDUCTORES
      FROM benespseg
    UNION
    SELECT sperson, sseguro   -- GESTOR DE COBRO
      FROM gescobros
    UNION
    SELECT sperson, sseguro   -- INQUIAVAL
      FROM inquiaval
    UNION
    SELECT sperson, sseguro   -- RETORNOS
      FROM rtn_convenio)
;
  GRANT UPDATE ON "AXIS"."V_PERSONAS_SEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_PERSONAS_SEGUROS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."V_PERSONAS_SEGUROS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."V_PERSONAS_SEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_PERSONAS_SEGUROS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."V_PERSONAS_SEGUROS" TO "PROGRAMADORESCSI";
