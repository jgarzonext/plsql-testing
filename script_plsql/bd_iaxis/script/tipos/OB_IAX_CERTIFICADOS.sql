--------------------------------------------------------
--  DDL for Type OB_IAX_CERTIFICADOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CERTIFICADOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_CERTIFICADOS
   PROPÓSITO:  Contiene una serie de campos informativos del certificado hijo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        31/07/2012   FAL                1. Creación del objeto.
******************************************************************************/
(
   sseguro        NUMBER,
   npoliza        NUMBER,
   ncertif        NUMBER,
   fefecto        DATE,
   csituac        NUMBER,
   tsituac        VARCHAR2(250),
   treteni        VARCHAR2(250),
   tomadores      t_iax_tomadores,
   CONSTRUCTOR FUNCTION ob_iax_certificados
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CERTIFICADOS" AS
   CONSTRUCTOR FUNCTION ob_iax_certificados
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.tomadores := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CERTIFICADOS" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CERTIFICADOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CERTIFICADOS" TO "R_AXIS";
