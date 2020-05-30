--------------------------------------------------------
--  DDL for Type OB_IAX_GFIPARAMVALOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GFIPARAMVALOR" AS OBJECT
/******************************************************************************
   NOMBRE:       ob_iax_gfiparamvalor
   PROP�SITO:    guardar par�metros F�rnulas

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        19/12/2015   JDS               1. 0032942: CSI-CF01-Eficiencia en alta de productos
******************************************************************************/
(
   ctipo          NUMBER,   --0-Par�metro/1-Pregunta
   tnombre        VARCHAR2(200),   -- Nombre del par�metro.
   valor          NUMBER,   -- Valor del par�metro.
   CONSTRUCTOR FUNCTION ob_iax_gfiparamvalor
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GFIPARAMVALOR" AS
/******************************************************************************
   OMBRE:       ob_iax_gfiparamvalor
   PROP�SITO:    guardar par�metros F�rnulas

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        19/12/2015   JDS               1. 0032942: CSI-CF01-Eficiencia en alta de productos
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_gfiparamvalor
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ctipo := NULL;
      SELF.tnombre := NULL;
      SELF.valor := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIPARAMVALOR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIPARAMVALOR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIPARAMVALOR" TO "PROGRAMADORESCSI";
