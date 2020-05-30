--------------------------------------------------------
--  DDL for Type T_PERSIS_PRODUCCION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_PERSIS_PRODUCCION" AS VARRAY(1) OF ob_persis_produccion;

/

  GRANT EXECUTE ON "AXIS"."T_PERSIS_PRODUCCION" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_PRODUCCION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_PRODUCCION" TO "R_AXIS";
