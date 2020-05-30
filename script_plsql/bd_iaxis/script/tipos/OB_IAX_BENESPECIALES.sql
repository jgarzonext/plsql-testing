--------------------------------------------------------
--  DDL for Type OB_IAX_BENESPECIALES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BENESPECIALES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BENESPECIALES_GAR
   PROP�SITO:  Contiene la informaci�n de los beneficiarios especiales.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        20/10/2011   ICV                1. Creaci�n del objeto.
******************************************************************************/
(
   benef_riesgo   t_iax_beneidentificados,   --    Beneficiarios identificados a nivel de riesgo
   benefesp_gar   t_iax_benespeciales_gar,   --    Beneficiarios especiales a nivel de garant�a
   CONSTRUCTOR FUNCTION ob_iax_benespeciales
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BENESPECIALES" AS
   CONSTRUCTOR FUNCTION ob_iax_benespeciales
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.benef_riesgo := NULL;
      SELF.benefesp_gar := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BENESPECIALES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BENESPECIALES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BENESPECIALES" TO "PROGRAMADORESCSI";
