--------------------------------------------------------
--  DDL for Type T_GASTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_GASTOS" AS TABLE OF ob_gastos;

/

  GRANT EXECUTE ON "AXIS"."T_GASTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_GASTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_GASTOS" TO "PROGRAMADORESCSI";
