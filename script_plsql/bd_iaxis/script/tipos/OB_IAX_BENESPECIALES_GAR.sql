--------------------------------------------------------
--  DDL for Type OB_IAX_BENESPECIALES_GAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BENESPECIALES_GAR" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BENESPECIALES_GAR
   PROP�SITO:  Contiene los beneficiarios especiales a nivel de garant�a, para una garant�a.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        20/10/2011   ICV                1. Creaci�n del objeto.
******************************************************************************/
(
   cgarant        NUMBER(4),   --    C�digo de garant�a
   tgarant        VARCHAR2(120),   --    Descripci�n de garant�a
   benef_ident    t_iax_beneidentificados,   --    Beneficiarios identificados a nivel de garant�a,
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
