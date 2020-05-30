--------------------------------------------------------
--  DDL for Type OB_IAX_TABMORTGAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_TABMORTGAR" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_TABMORTGAR
   PROP�SITO:  Contiene informaci�n de la tabla de mortalidad por garantia

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/12/2009   APD                1. Creaci�n del objeto.
******************************************************************************/
(
   cgarant        NUMBER,   --C�digo de la garantia
   ctabla         NUMBER,   --Identificador de tabla de mortalidad
   desctabla      VARCHAR2(40),   --Descripci�n de la tabla de mortalidad
   CONSTRUCTOR FUNCTION ob_iax_tabmortgar
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_TABMORTGAR" AS
   CONSTRUCTOR FUNCTION ob_iax_tabmortgar
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cgarant := NULL;
      SELF.ctabla := NULL;
      SELF.desctabla := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_TABMORTGAR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TABMORTGAR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TABMORTGAR" TO "PROGRAMADORESCSI";
