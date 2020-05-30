--------------------------------------------------------
--  DDL for Type OB_IAX_PRODULKMODELOSINV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODULKMODELOSINV" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODULKMODELOSINV
   PROPÓSITO:  Contiene información de los productos unit linked
                modelos inversión

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(
   cmodinv        NUMBER,   -- Código modelo
   tmodinv        VARCHAR2(50),   -- Descripción código modelo
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
