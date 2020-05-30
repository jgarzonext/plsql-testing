--------------------------------------------------------
--  DDL for Type T_TABLA_FICHEROS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_TABLA_FICHEROS" IS TABLE OF ob_fichero;

/

  GRANT EXECUTE ON "AXIS"."T_TABLA_FICHEROS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_TABLA_FICHEROS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_TABLA_FICHEROS" TO "PROGRAMADORESCSI";
