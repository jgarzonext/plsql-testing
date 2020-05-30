--------------------------------------------------------
--  DDL for Type OB_IAX_GESCOBROS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GESCOBROS" UNDER ob_iax_personas
/******************************************************************************
   NOMBRE:     OB_IAX_GESCOBROS
   PROPÓSITO:  Contiene la información del gestor de cobro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/03/2012   JMF                1. Creación del objeto.
******************************************************************************/
(
   cdomici        NUMBER,   --Código de domicilio
   CONSTRUCTOR FUNCTION ob_iax_gescobros
      RETURN SELF AS RESULT
)
;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GESCOBROS" AS
   CONSTRUCTOR FUNCTION ob_iax_gescobros
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cdomici := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GESCOBROS" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GESCOBROS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GESCOBROS" TO "R_AXIS";
