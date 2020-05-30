--------------------------------------------------------
--  DDL for Type OB_IAX_DESCCLAUSULAS_REAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DESCCLAUSULAS_REAS" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_DESCCLAUSULAS_REAS
   PROPÓSITO:  Contiene las descripciones de las clausulas / tramos escalonados

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/07/2011   APD                1. Creación del objeto.
******************************************************************************/
(
   ccodigo        NUMBER(5),   -- Código de la clausula / tramo escalonado
   cidioma        NUMBER(3),   -- Código del idioma
   tidioma        VARCHAR2(100),   -- Descripción del idioma
   tdescripcion   VARCHAR2(100),   -- Descripción de la cláusula / tramo escalonado
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
