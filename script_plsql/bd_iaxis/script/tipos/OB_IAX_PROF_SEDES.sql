--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_SEDES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_SEDES" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_CONTACTOS
   PROPÓSITO:  Contiene las sedes asociadas al profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        21/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   cdomici        NUMBER,
   tpercto        VARCHAR2(1000),
   thorari        VARCHAR2(1000),
   spersed        NUMBER,
   tdomici        VARCHAR2(100),
   tnombre        VARCHAR2(100),
-------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_prof_sedes
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_SEDES" AS
/******************************************************************************
   NOMBRE:     Contiene las sedes asociadas al profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        21/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_prof_sedes
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cdomici := NULL;
      SELF.tpercto := NULL;
      SELF.thorari := NULL;
      SELF.spersed := NULL;
      SELF.tdomici := NULL;
      SELF.tnombre := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_SEDES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_SEDES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_SEDES" TO "PROGRAMADORESCSI";
