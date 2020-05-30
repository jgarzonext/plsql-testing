--------------------------------------------------------
--  DDL for Type OB_IAX_PRODULKMODELOSINV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODULKMODELOSINV" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODULKMODELOSINV
   PROP�SITO:  Contiene informaci�n de los productos unit linked
                modelos inversi�n

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(
   cmodinv        NUMBER,   -- C�digo modelo
   tmodinv        VARCHAR2(50),   -- Descripci�n c�digo modelo
   modinvfondo    t_iax_produlkmodinvfondo,   -- Fondos
   CONSTRUCTOR FUNCTION ob_iax_produlkmodelosinv
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODULKMODELOSINV" AS
   CONSTRUCTOR FUNCTION ob_iax_produlkmodelosinv
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cmodinv := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODULKMODELOSINV" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODULKMODELOSINV" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODULKMODELOSINV" TO "PROGRAMADORESCSI";
