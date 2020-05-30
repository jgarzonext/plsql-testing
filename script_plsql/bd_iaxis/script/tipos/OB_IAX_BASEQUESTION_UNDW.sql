--------------------------------------------------------
--  DDL for Type OB_IAX_BASEQUESTION_UNDW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BASEQUESTION_UNDW" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_BASEQUESTION_UNDW
   PROPÓSITO:  Contiene la información del cuestionario de preguntas.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        05/08/2015  YDA              1. Creación del objeto.
******************************************************************************/
(
   sseguro    NUMBER,
   nriesgo    NUMBER (6),
   nmovimi    NUMBER (4),
   cempres    NUMBER (5),
   sorden     NUMBER,
   norden     NUMBER,
   code       VARCHAR2 (2000),
   POSITION   NUMBER,
   CATEGORY   VARCHAR2 (2000),
   question   VARCHAR2 (2000),
   answer     VARCHAR2 (4000),
   CONSTRUCTOR FUNCTION ob_iax_basequestion_undw
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BASEQUESTION_UNDW" 
AS
   /******************************************************************************
      NOMBRE:     OB_IAX_BASEQUESTION_UNDW
      PROPÓSITO:  Contiene la información del cuestionario de preguntas.

      REVISIONES:
      Ver        Fecha        Autor             Descripción
      ---------  ----------  ---------------  ------------------------------------
      1.0        10/08/2015  YDA              1. Creación del objeto.
   ******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_basequestion_undw
      RETURN SELF AS RESULT
   IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.nriesgo := NULL;
      SELF.nmovimi := NULL;
      SELF.cempres := NULL;
      SELF.sorden := NULL;
      SELF.norden := NULL;
      SELF.code := NULL;
      SELF.POSITION := NULL;
      SELF.CATEGORY := NULL;
      SELF.question := NULL;
      SELF.answer := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BASEQUESTION_UNDW" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BASEQUESTION_UNDW" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BASEQUESTION_UNDW" TO "PROGRAMADORESCSI";
