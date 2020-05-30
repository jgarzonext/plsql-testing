--------------------------------------------------------
--  DDL for Type T_PERSIS_SUPLEMENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_PERSIS_SUPLEMENTO" AS VARRAY(1) OF ob_persis_suplemento;

/

  GRANT EXECUTE ON "AXIS"."T_PERSIS_SUPLEMENTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_SUPLEMENTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_SUPLEMENTO" TO "PROGRAMADORESCSI";
