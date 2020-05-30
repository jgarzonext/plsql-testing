--------------------------------------------------------
--  DDL for Type T_IAX_PLANPENSIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_IAX_PLANPENSIONES" AS TABLE OF ob_iax_planpensiones;

/

  GRANT EXECUTE ON "AXIS"."T_IAX_PLANPENSIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_IAX_PLANPENSIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_IAX_PLANPENSIONES" TO "PROGRAMADORESCSI";
