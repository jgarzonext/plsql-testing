--------------------------------------------------------
--  DDL for Type T_PERSIS_SINIESTRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_PERSIS_SINIESTRO" AS VARRAY(1) OF ob_persis_siniestro;

/

  GRANT EXECUTE ON "AXIS"."T_PERSIS_SINIESTRO" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_SINIESTRO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_SINIESTRO" TO "R_AXIS";
