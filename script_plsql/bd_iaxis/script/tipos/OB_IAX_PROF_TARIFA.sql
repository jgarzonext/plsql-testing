--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_TARIFA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_TARIFA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PROF_SERVI
   PROPÓSITO:  Contiene las tarifas del profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   starifa        NUMBER,   --Identificativo de la tarifa
   tdescri        VARCHAR2(200),   --Descripcion
   CONSTRUCTOR FUNCTION ob_iax_prof_tarifa
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_TARIFA" AS
   CONSTRUCTOR FUNCTION ob_iax_prof_tarifa
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.starifa := NULL;
      SELF.tdescri := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_TARIFA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_TARIFA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_TARIFA" TO "PROGRAMADORESCSI";
