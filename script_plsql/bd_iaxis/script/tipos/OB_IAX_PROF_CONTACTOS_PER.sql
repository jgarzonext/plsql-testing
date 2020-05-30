--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_CONTACTOS_PER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_CONTACTOS_PER" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_CONTACTOS_PER
   PROPÓSITO:  Contiene las personas de contacto de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        03/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   nordcto        NUMBER,
   ctipide        NUMBER,
   cnumide        VARCHAR2(14),
   tnombre        VARCHAR2(100),
   tmovil         VARCHAR2(60),
   temail         VARCHAR2(100),
   tcargo         VARCHAR2(50),
   tdirec         VARCHAR2(200),
   fbaja          DATE,
   tusubaj        VARCHAR2(20),
-------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_prof_contactos_per
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_CONTACTOS_PER" AS
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_ZONAS
   PROPÓSITO:  Contiene las personas de contacto de un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        03/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_prof_contactos_per
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nordcto := NULL;
      SELF.ctipide := NULL;
      SELF.cnumide := NULL;
      SELF.tnombre := NULL;
      SELF.tmovil := NULL;
      SELF.temail := NULL;
      SELF.tcargo := NULL;
      SELF.tdirec := NULL;
      SELF.fbaja := NULL;
      SELF.tusubaj := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CONTACTOS_PER" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CONTACTOS_PER" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CONTACTOS_PER" TO "PROGRAMADORESCSI";
