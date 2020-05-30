--------------------------------------------------------
--  DDL for Type OB_IAX_TARIFICABENEFICIARIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_TARIFICABENEFICIARIO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_TARIFICABENEFICIARIO
   PROPÓSITO:  Contiene información de un beneficiario para ser tarificado

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/01/2013  MDS                1. Creación del objeto.
******************************************************************************/
(
   sperson        NUMBER,   -- Código de persona beneficiario
   cestado        NUMBER,   -- Código estado del beneficiario
   cparen         NUMBER,   -- Código parentesco con el titular
   csexo          NUMBER,   -- Código de sexo
   fnacimi        DATE,   -- Fecha de nacimiento
   CONSTRUCTOR FUNCTION ob_iax_tarificabeneficiario
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_TARIFICABENEFICIARIO" AS
   CONSTRUCTOR FUNCTION ob_iax_tarificabeneficiario
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := NULL;
      SELF.cestado := NULL;
      SELF.cparen := NULL;
      SELF.csexo := NULL;
      SELF.fnacimi := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_TARIFICABENEFICIARIO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TARIFICABENEFICIARIO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TARIFICABENEFICIARIO" TO "PROGRAMADORESCSI";
