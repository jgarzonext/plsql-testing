--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_REPRE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_REPRE" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_REPRE
   PROPÓSITO:  Contiene los representantes legales del profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   sperson        NUMBER,
   ctelcon        NUMBER,
   ttelcon        VARCHAR2(100),
   cmailcon       NUMBER,
   tmailcon       VARCHAR2(100),
   tcargo         VARCHAR2(100),
   tnombre        VARCHAR2(100),
   tnif           VARCHAR2(20),
-------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_prof_repre
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_REPRE" AS
/******************************************************************************
   NOMBRE:     Contiene los representantes legales del profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_prof_repre
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := NULL;
      SELF.ctelcon := NULL;
      SELF.ttelcon := NULL;
      SELF.cmailcon := NULL;
      SELF.tmailcon := NULL;
      SELF.tcargo := NULL;
      SELF.tnombre := NULL;
      SELF.tnif := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_REPRE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_REPRE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_REPRE" TO "PROGRAMADORESCSI";
