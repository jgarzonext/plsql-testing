--------------------------------------------------------
--  DDL for View V_PERSONAS_ESTSEGUROS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."V_PERSONAS_ESTSEGUROS" ("SPERSON", "SSEGURO") AS 
  (SELECT sperson, sseguro   -- RIESGOS
      FROM estriesgos
    UNION
    SELECT sperson, sseguro   -- TOMADORES
      FROM esttomadores
    UNION
    SELECT sperson, sseguro   --ASEGURADOS
      FROM estassegurats
    UNION
    SELECT sperson, sseguro   --CONDUCTORES
      FROM estautconductores
    UNION
    SELECT sperson, sseguro   --BENEFICIARIOS ESPECIALES
      FROM estbenespseg
    UNION
    SELECT sperson, sseguro   -- GESTOR DE COBRO
      FROM estgescobros
    UNION
    SELECT sperson, sseguro   --INQUILINOSAVALITAS
      FROM estinquiaval
    UNION
    SELECT sperson, sseguro   -- RETORNOS
      FROM estrtn_convenio)
;
  GRANT UPDATE ON "AXIS"."V_PERSONAS_ESTSEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_PERSONAS_ESTSEGUROS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."V_PERSONAS_ESTSEGUROS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."V_PERSONAS_ESTSEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_PERSONAS_ESTSEGUROS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."V_PERSONAS_ESTSEGUROS" TO "PROGRAMADORESCSI";
