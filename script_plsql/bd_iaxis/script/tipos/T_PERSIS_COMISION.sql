--------------------------------------------------------
--  DDL for Type T_PERSIS_COMISION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_PERSIS_COMISION" AS VARRAY(1) OF ob_persis_comision;

/

  GRANT EXECUTE ON "AXIS"."T_PERSIS_COMISION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_COMISION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_COMISION" TO "PROGRAMADORESCSI";
