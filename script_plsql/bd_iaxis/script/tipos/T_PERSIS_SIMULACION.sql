--------------------------------------------------------
--  DDL for Type T_PERSIS_SIMULACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_PERSIS_SIMULACION" AS VARRAY(1) OF ob_persis_simulacion;

/

  GRANT EXECUTE ON "AXIS"."T_PERSIS_SIMULACION" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_SIMULACION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_SIMULACION" TO "R_AXIS";
