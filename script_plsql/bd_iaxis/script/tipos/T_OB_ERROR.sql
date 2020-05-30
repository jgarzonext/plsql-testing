--------------------------------------------------------
--  DDL for Type T_OB_ERROR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_OB_ERROR" AS TABLE OF ob_error;

/

  GRANT EXECUTE ON "AXIS"."T_OB_ERROR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_OB_ERROR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_OB_ERROR" TO "PROGRAMADORESCSI";
