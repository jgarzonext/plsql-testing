--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_ROLES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_ROLES" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_ROLES
   PROPÓSITO:  Contiene los roles de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        11/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   ctippro        NUMBER,
   ttippro        VARCHAR2(100),
   csubpro        NUMBER,
   tsubpro        VARCHAR2(100),
-------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_prof_roles
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_ROLES" AS
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_ROLES
   PROPÓSITO:  Contiene los roles de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        11/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_prof_roles
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ctippro := NULL;
      SELF.ttippro := NULL;
      SELF.csubpro := NULL;
      SELF.tsubpro := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_ROLES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_ROLES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_ROLES" TO "PROGRAMADORESCSI";
