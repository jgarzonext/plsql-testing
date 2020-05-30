--------------------------------------------------------
--  DDL for Type OB_IAX_GSTCOMISION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GSTCOMISION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_DET_GSTCOMISION
   PROP�SITO:  Contiene la informaci�n de la gesti�n de comisi�n

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        27/11/2007   ACC                1. Creaci�n del objeto.
******************************************************************************/
(
   cmodcom        NUMBER,   -- C�digo de modalidad de la comisi�n
   pcomisi        FLOAT,   -- Porcentaje de comisi�n
   ninialt        NUMBER,   -- Inicio de la altura
   nfinalt        NUMBER,   --fIN  de la altura
   tatribu        VARCHAR2(500),   -- Descripci�n
   CONSTRUCTOR FUNCTION ob_iax_gstcomision
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GSTCOMISION" AS
   CONSTRUCTOR FUNCTION ob_iax_gstcomision
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cmodcom := 0;
      SELF.pcomisi := NULL;
      SELF.ninialt := NULL;
      SELF.nfinalt := NULL;
      SELF.tatribu := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GSTCOMISION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GSTCOMISION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GSTCOMISION" TO "PROGRAMADORESCSI";
