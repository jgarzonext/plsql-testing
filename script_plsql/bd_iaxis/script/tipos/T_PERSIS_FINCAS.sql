--------------------------------------------------------
--  DDL for Type T_PERSIS_FINCAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_PERSIS_FINCAS" AS VARRAY(1) OF ob_persis_fincas;

/

  GRANT EXECUTE ON "AXIS"."T_PERSIS_FINCAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_FINCAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_FINCAS" TO "PROGRAMADORESCSI";
