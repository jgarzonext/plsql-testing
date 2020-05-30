--------------------------------------------------------
--  DDL for Type T_IAX_GASTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_IAX_GASTOS" AS TABLE OF ob_iax_gastos;

/

  GRANT EXECUTE ON "AXIS"."T_IAX_GASTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_IAX_GASTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_IAX_GASTOS" TO "PROGRAMADORESCSI";
