--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_ZONAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_ZONAS" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_ZONAS
   PROPÓSITO:  Contiene las zonas de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   cnordzn        NUMBER,
   ctpzona        NUMBER,
   ttpzona        VARCHAR2(100),
   cpais          NUMBER,
   tpais          VARCHAR2(100),
   cprovin        NUMBER,
   tprovin        VARCHAR2(100),
   cpoblac        NUMBER,
   tpoblac        VARCHAR2(100),
   cposini        VARCHAR2(5),
   cposfin        VARCHAR2(5),
   fdesde         DATE,
   fhasta         DATE,
-------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_prof_zonas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_ZONAS" AS
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_ZONAS
   PROPÓSITO:  Contiene las zonas de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_prof_zonas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cnordzn := NULL;
      SELF.ctpzona := NULL;
      SELF.ttpzona := NULL;
      SELF.cpais := NULL;
      SELF.tpais := NULL;
      SELF.cprovin := NULL;
      SELF.tprovin := NULL;
      SELF.cpoblac := NULL;
      SELF.tpoblac := NULL;
      SELF.cposini := NULL;
      SELF.cposfin := NULL;
      SELF.fdesde := NULL;
      SELF.fhasta := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_ZONAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_ZONAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_ZONAS" TO "PROGRAMADORESCSI";
