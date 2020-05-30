--------------------------------------------------------
--  DDL for Type T_LINEA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_LINEA" IS TABLE OF VARCHAR2(4000);

/

  GRANT EXECUTE ON "AXIS"."T_LINEA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_LINEA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_LINEA" TO "PROGRAMADORESCSI";
