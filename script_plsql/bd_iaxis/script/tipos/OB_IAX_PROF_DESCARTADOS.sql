--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_DESCARTADOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_DESCARTADOS" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_DESCARTADOS
   PROPÓSITO:  Contiene los productos/causas descartados de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   ctippro        NUMBER,
   ttippro        VARCHAR2(100),
   csubpro        NUMBER,
   tsubpro        VARCHAR2(100),
   sproduc        NUMBER,
   tproduc        VARCHAR2(40),
   ccausin        NUMBER,
   tcausin        VARCHAR2(40),
   fdesde         DATE,
   fhasta         DATE,
-------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_prof_descartados
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_DESCARTADOS" AS
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_DESCARTADOS
   PROPÓSITO:  Contiene los productos/causas descartados de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_prof_descartados
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ctippro := NULL;
      SELF.ttippro := NULL;
      SELF.csubpro := NULL;
      SELF.tsubpro := NULL;
      SELF.sproduc := NULL;
      SELF.tproduc := NULL;
      SELF.ccausin := NULL;
      SELF.tcausin := NULL;
      SELF.fdesde := NULL;
      SELF.fhasta := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_DESCARTADOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_DESCARTADOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_DESCARTADOS" TO "PROGRAMADORESCSI";
