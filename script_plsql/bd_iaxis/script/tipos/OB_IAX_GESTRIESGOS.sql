--------------------------------------------------------
--  DDL for Type OB_IAX_GESTRIESGOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GESTRIESGOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_GESTRIESGOS
   PROP�SITO:  Contiene la informaci�n de gesti�n del riesgo de la poliza

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/11/2007   ACC                1. Creaci�n del objeto.
******************************************************************************/
(
   nriesgo        NUMBER,   --N�mero de riesgo
   triesgo        VARCHAR2(1000),   --Descripci�n riesgo
   primatotal     NUMBER,   --Importe total prima
   itotanu        NUMBER,   --NUMBER(15, 2),   --Prima total anualizada
   CONSTRUCTOR FUNCTION ob_iax_gestriesgos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GESTRIESGOS" AS
   CONSTRUCTOR FUNCTION ob_iax_gestriesgos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nriesgo := 0;
      SELF.triesgo := NULL;
      SELF.primatotal := 0;
      SELF.itotanu := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GESTRIESGOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GESTRIESGOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GESTRIESGOS" TO "PROGRAMADORESCSI";
