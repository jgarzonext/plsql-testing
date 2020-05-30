--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_CARGA_REAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_CARGA_REAL" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_CARGA_PERMITIDA
   PROPÓSITO:  Contiene las cargas de trabajo reales de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   ctippro        NUMBER,
   ttippro        VARCHAR2(100),
   csubpro        NUMBER,
   tsubpro        VARCHAR2(100),
   ncapaci        NUMBER,
   ncardia        NUMBER,
   ncarsem        NUMBER,
   ncarmes        NUMBER,
   fdesde         DATE,
   cusuari        VARCHAR2(20),
-------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_prof_carga_real
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_CARGA_REAL" AS
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_ZONAS
   PROPÓSITO:  Contiene las cargas de trabajo reales de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_prof_carga_real
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ctippro := NULL;
      SELF.ttippro := NULL;
      SELF.csubpro := NULL;
      SELF.tsubpro := NULL;
      SELF.ncapaci := NULL;
      SELF.ncardia := NULL;
      SELF.ncarsem := NULL;
      SELF.ncarmes := NULL;
      SELF.fdesde := NULL;
      SELF.cusuari := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CARGA_REAL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CARGA_REAL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CARGA_REAL" TO "PROGRAMADORESCSI";
