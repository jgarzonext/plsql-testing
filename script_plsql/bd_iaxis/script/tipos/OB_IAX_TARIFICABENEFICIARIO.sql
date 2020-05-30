--------------------------------------------------------
--  DDL for Type OB_IAX_TARIFICABENEFICIARIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_TARIFICABENEFICIARIO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_TARIFICABENEFICIARIO
   PROP�SITO:  Contiene informaci�n de un beneficiario para ser tarificado

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/01/2013  MDS                1. Creaci�n del objeto.
******************************************************************************/
(
   sperson        NUMBER,   -- C�digo de persona beneficiario
   cestado        NUMBER,   -- C�digo estado del beneficiario
   cparen         NUMBER,   -- C�digo parentesco con el titular
   csexo          NUMBER,   -- C�digo de sexo
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
