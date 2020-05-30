--------------------------------------------------------
--  DDL for Type OB_IAX_GFIERRORES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GFIERRORES" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_GFIERRORES
   PROPÃ“SITO:  Contiene la información de los errores de la formula
   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/12/2010   XPL                1. CreaciÃ³n del objeto.
******************************************************************************/
(
   numerr         NUMBER,   --   Código error
   texterror      VARCHAR2(200),   --    Texto error
   CONSTRUCTOR FUNCTION ob_iax_gfierrores
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GFIERRORES" AS
   CONSTRUCTOR FUNCTION ob_iax_gfierrores
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIERRORES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIERRORES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIERRORES" TO "PROGRAMADORESCSI";
