--------------------------------------------------------
--  DDL for Type OB_LISTA_ID
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_LISTA_ID" AS OBJECT(
   idd            NUMBER,   -- Codigo identificador
   CONSTRUCTOR FUNCTION ob_lista_id
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_LISTA_ID" AS
   CONSTRUCTOR FUNCTION ob_lista_id
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.idd := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_LISTA_ID" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_LISTA_ID" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_LISTA_ID" TO "PROGRAMADORESCSI";
