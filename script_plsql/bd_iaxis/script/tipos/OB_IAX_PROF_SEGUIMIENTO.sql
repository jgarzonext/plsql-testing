--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_SEGUIMIENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_SEGUIMIENTO" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_SEGUIMIENTO
   PROPÓSITO:  Contiene el seguimiento de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   cnsegui        NUMBER,
   cvalora        NUMBER,
   tvalora        VARCHAR2(8),
   tobserv        VARCHAR2(4000),
   cusuari        VARCHAR2(20),
   falta          DATE,
-------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_prof_seguimiento
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_SEGUIMIENTO" AS
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_SEGUIMIENTO
   PROPÓSITO:  Contiene el seguimiento de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_prof_seguimiento
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cnsegui := NULL;
      SELF.cvalora := NULL;
      SELF.tvalora := NULL;
      SELF.tobserv := NULL;
      SELF.cusuari := NULL;
      SELF.falta := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_SEGUIMIENTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_SEGUIMIENTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_SEGUIMIENTO" TO "PROGRAMADORESCSI";
