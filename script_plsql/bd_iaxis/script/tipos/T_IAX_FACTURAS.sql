--------------------------------------------------------
--  DDL for Type T_IAX_FACTURAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_IAX_FACTURAS" AS TABLE OF ob_iax_facturas;

/

  GRANT EXECUTE ON "AXIS"."T_IAX_FACTURAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_IAX_FACTURAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_IAX_FACTURAS" TO "PROGRAMADORESCSI";
