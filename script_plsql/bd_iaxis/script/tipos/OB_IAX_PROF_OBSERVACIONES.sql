--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_OBSERVACIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_OBSERVACIONES" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_OBSERVACIONES
   PROPÓSITO:  Contiene las OBSERVACIONES de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        11/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   cnordcm        NUMBER,
   tcoment        VARCHAR2(4000),
   cusuari        VARCHAR2(20),
   falta          DATE,
-------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_prof_observaciones
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_OBSERVACIONES" AS
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_OBSERVACIONES
   PROPÓSITO:  Contiene las OBSERVACIONES de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        11/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_prof_observaciones
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cnordcm := NULL;
      SELF.tcoment := NULL;
      SELF.cusuari := NULL;
      SELF.falta := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_OBSERVACIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_OBSERVACIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_OBSERVACIONES" TO "PROGRAMADORESCSI";
