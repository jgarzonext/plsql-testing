--------------------------------------------------------
--  DDL for Type OB_IAX_CAMPANYAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CAMPANYAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_CAMPANYAS
   PROPÓSITO:  Contiene la información de las campanyas
   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/05/2013   AMC                1. Creación del objeto.
******************************************************************************/
(
   ccampanya      NUMBER,
   cidioma        NUMBER,
   tcampanya      VARCHAR2(100),
   tidioma        VARCHAR2(30),
   CONSTRUCTOR FUNCTION ob_iax_campanyas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CAMPANYAS" AS
   CONSTRUCTOR FUNCTION ob_iax_campanyas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccampanya := NULL;
      SELF.cidioma := NULL;
      SELF.tcampanya := '';
      SELF.tidioma := '';
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPANYAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPANYAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPANYAS" TO "PROGRAMADORESCSI";
