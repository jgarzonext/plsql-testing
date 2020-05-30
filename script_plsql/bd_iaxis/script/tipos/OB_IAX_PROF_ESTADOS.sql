--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_ESTADOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_ESTADOS" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_ESTADOS
   PROPÓSITO:  Contiene los estados de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        27/12/2012   NSS                1. Creación del objeto.
******************************************************************************/
(
   cestado        NUMBER,
   testado        VARCHAR2(8),
   festado        DATE,
   cmotbaj        NUMBER,
   tmotbaj        VARCHAR2(100),
   tobserv        VARCHAR2(100),
   canulad        NUMBER,
   cusuari        VARCHAR2(20),
-------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_prof_estados
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_ESTADOS" AS
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_CCC
   PROPÓSITO:  Contiene las cuentas corrientes de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        28/12/2012   NSS                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_prof_estados
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cestado := NULL;
      SELF.testado := NULL;
      SELF.festado := NULL;
      SELF.cmotbaj := NULL;
      SELF.tmotbaj := NULL;
      SELF.tobserv := NULL;
      SELF.canulad := NULL;
      SELF.cusuari := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_ESTADOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_ESTADOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_ESTADOS" TO "PROGRAMADORESCSI";
