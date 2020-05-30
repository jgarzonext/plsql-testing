--------------------------------------------------------
--  DDL for Type T_PERSIS_FACTURAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_PERSIS_FACTURAS" AS VARRAY(1) OF ob_persis_facturas;

/

  GRANT EXECUTE ON "AXIS"."T_PERSIS_FACTURAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_FACTURAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_PERSIS_FACTURAS" TO "PROGRAMADORESCSI";
