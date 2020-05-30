--------------------------------------------------------
--  DDL for Type OB_TABMORTGAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_TABMORTGAR" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_TABMORTGAR
   PROPÓSITO:  Contiene información de la tabla de mortalidad por garantia

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/12/2009   APD                1. Creación del objeto.
******************************************************************************/
(
   cgarant        NUMBER,   --Código de la garantia
   ctabla         NUMBER,   --Identificador de tabla de mortalidad
   desctabla      VARCHAR2(40),   --Descripción de la tabla de mortalidad
   CONSTRUCTOR FUNCTION ob_tabmortgar
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_TABMORTGAR" AS
   CONSTRUCTOR FUNCTION ob_tabmortgar
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cgarant := NULL;
      SELF.ctabla := NULL;
      SELF.desctabla := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_TABMORTGAR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_TABMORTGAR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_TABMORTGAR" TO "PROGRAMADORESCSI";
