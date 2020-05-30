--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_CONTACTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_CONTACTOS" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_CONTACTOS
   PROP�SITO:  Contiene los tipos de contacto preferidos del profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/01/2013   NSS                1. Creaci�n del objeto.
******************************************************************************/
(
   cprefer        NUMBER,
   cmodcon        NUMBER,
   ctipcon        NUMBER,
   ttipcon        VARCHAR2(100),
   tvalcon        VARCHAR2(100),
-------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_prof_contactos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_CONTACTOS" AS
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_CONTACTOS
   PROP�SITO:  Contiene los tipos de contacto preferidos del profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/01/2013   NSS                1. Creaci�n del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_prof_contactos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cprefer := NULL;
      SELF.cmodcon := NULL;
      SELF.ctipcon := NULL;
      SELF.ttipcon := NULL;
      SELF.tvalcon := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CONTACTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CONTACTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CONTACTOS" TO "PROGRAMADORESCSI";
