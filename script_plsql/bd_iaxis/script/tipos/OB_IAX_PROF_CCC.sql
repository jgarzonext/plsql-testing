--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_CCC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_CCC" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_CCC
   PROPÓSITO:  Contiene las cuentas corrientes de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/11/2012   JDS                1. Creación del objeto.
******************************************************************************/
(
   ccc            VARCHAR2(50),
   cnorden        NUMBER,
   cramo          NUMBER,
   tramo          VARCHAR2(30),
   sproduc        NUMBER,
   tproduc        VARCHAR2(40),
   cactivi        NUMBER,
   tactivi        VARCHAR2(40),
   cnordban       NUMBER,
   cbancar        VARCHAR2(50),
-------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_prof_ccc
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_CCC" AS
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_CCC
   PROPÓSITO:  Contiene las cuentas corrientes de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/11/2012   JDS                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_prof_ccc
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccc := NULL;
      SELF.cnorden := NULL;
      SELF.cramo := NULL;
      SELF.tramo := NULL;
      SELF.sproduc := NULL;
      SELF.tproduc := NULL;
      SELF.cactivi := NULL;
      SELF.tactivi := NULL;
      SELF.cnordban := NULL;
      SELF.cbancar := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CCC" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CCC" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CCC" TO "PROGRAMADORESCSI";
