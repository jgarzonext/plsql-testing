--------------------------------------------------------
--  DDL for Type OB_IAX_TARIFICABENEFICIARIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_TARIFICABENEFICIARIOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_TARIFICABENEFICIARIOS
   PROPÓSITO:  Contiene los beneficiarios para ser tarificados

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/01/2013  MDS                1. Creación del objeto.
******************************************************************************/
(
   beneficiarios  t_iax_tarificabeneficiarios,   --    Colección de beneficiarios
   CONSTRUCTOR FUNCTION ob_iax_tarificabeneficiarios
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_TARIFICABENEFICIARIOS" AS
   CONSTRUCTOR FUNCTION ob_iax_tarificabeneficiarios
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.beneficiarios := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_TARIFICABENEFICIARIOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TARIFICABENEFICIARIOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TARIFICABENEFICIARIOS" TO "PROGRAMADORESCSI";
