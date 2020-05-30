--------------------------------------------------------
--  DDL for Type OB_IAX_DESCCLAUSULAS_REAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DESCCLAUSULAS_REAS" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_DESCCLAUSULAS_REAS
   PROP�SITO:  Contiene las descripciones de las clausulas / tramos escalonados

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/07/2011   APD                1. Creaci�n del objeto.
******************************************************************************/
(
   ccodigo        NUMBER(5),   -- C�digo de la clausula / tramo escalonado
   cidioma        NUMBER(3),   -- C�digo del idioma
   tidioma        VARCHAR2(100),   -- Descripci�n del idioma
   tdescripcion   VARCHAR2(100),   -- Descripci�n de la cl�usula / tramo escalonado
   CONSTRUCTOR FUNCTION ob_iax_descclausulas_reas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DESCCLAUSULAS_REAS" AS
   CONSTRUCTOR FUNCTION ob_iax_descclausulas_reas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodigo := 0;
      SELF.cidioma := 0;
      SELF.tidioma := NULL;
      SELF.tdescripcion := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DESCCLAUSULAS_REAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DESCCLAUSULAS_REAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DESCCLAUSULAS_REAS" TO "PROGRAMADORESCSI";
