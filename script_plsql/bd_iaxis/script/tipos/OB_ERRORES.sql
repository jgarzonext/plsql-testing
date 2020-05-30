--------------------------------------------------------
--  DDL for Type OB_ERRORES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_ERRORES" AUTHID CURRENT_USER AS OBJECT
(
  cerror NUMBER(6),
  terror VARCHAR2(100)
)

/

  GRANT EXECUTE ON "AXIS"."OB_ERRORES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_ERRORES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_ERRORES" TO "PROGRAMADORESCSI";
