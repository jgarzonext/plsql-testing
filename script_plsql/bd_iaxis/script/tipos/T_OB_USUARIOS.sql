--------------------------------------------------------
--  DDL for Type T_OB_USUARIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_OB_USUARIOS" AS TABLE OF OB_USUARIOS ;

/

  GRANT EXECUTE ON "AXIS"."T_OB_USUARIOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_OB_USUARIOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_OB_USUARIOS" TO "PROGRAMADORESCSI";
