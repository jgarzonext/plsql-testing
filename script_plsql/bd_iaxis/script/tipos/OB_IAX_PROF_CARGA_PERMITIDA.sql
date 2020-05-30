--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_CARGA_PERMITIDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_CARGA_PERMITIDA" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_CARGA_PERMITIDA
   PROPÓSITO:  Contiene las cargas permitidas de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   ctippro        NUMBER,
   ttippro        VARCHAR2(100),
   csubpro        NUMBER,
   tsubpro        VARCHAR2(100),
   ncardia        NUMBER,
   ncarsem        NUMBER,
   ncarmes        NUMBER,
   fdesde         DATE,
-------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_prof_carga_permitida
      RETURN SELF AS RESULT
);
--DROP TYPE BODY OB_IAX_PROF_CARGA_PERMITIDA;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_CARGA_PERMITIDA" AS
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_ZONAS
   PROPÓSITO:  Contiene las cargas permitidas de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_prof_carga_permitida
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ctippro := NULL;
      SELF.ttippro := NULL;
      SELF.csubpro := NULL;
      SELF.tsubpro := NULL;
      SELF.ncardia := NULL;
      SELF.ncarsem := NULL;
      SELF.ncarmes := NULL;
      SELF.fdesde := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CARGA_PERMITIDA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CARGA_PERMITIDA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CARGA_PERMITIDA" TO "PROGRAMADORESCSI";
