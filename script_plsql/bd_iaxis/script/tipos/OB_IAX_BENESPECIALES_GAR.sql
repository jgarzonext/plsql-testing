--------------------------------------------------------
--  DDL for Type OB_IAX_BENESPECIALES_GAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BENESPECIALES_GAR" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BENESPECIALES_GAR
   PROPÓSITO:  Contiene los beneficiarios especiales a nivel de garantía, para una garantía.

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        20/10/2011   ICV                1. Creación del objeto.
******************************************************************************/
(
   cgarant        NUMBER(4),   --    Código de garantía
   tgarant        VARCHAR2(120),   --    Descripción de garantía
   benef_ident    t_iax_beneidentificados,   --    Beneficiarios identificados a nivel de garantía,
   CONSTRUCTOR FUNCTION ob_iax_benespeciales_gar
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BENESPECIALES_GAR" AS
   CONSTRUCTOR FUNCTION ob_iax_benespeciales_gar
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cgarant := 0;
      SELF.tgarant := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BENESPECIALES_GAR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BENESPECIALES_GAR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BENESPECIALES_GAR" TO "PROGRAMADORESCSI";
