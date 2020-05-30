--------------------------------------------------------
--  DDL for Type OB_IAX_ENFERMEDADES_BASE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_ENFERMEDADES_BASE" AS OBJECT(
   cindex         NUMBER,
   codenf         VARCHAR2(10),
   desenf         VARCHAR2(200),
   CONSTRUCTOR FUNCTION ob_iax_enfermedades_base
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_ENFERMEDADES_BASE" AS
   CONSTRUCTOR FUNCTION ob_iax_enfermedades_base
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cindex := NULL;
      SELF.codenf := NULL;
      SELF.desenf := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_ENFERMEDADES_BASE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ENFERMEDADES_BASE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ENFERMEDADES_BASE" TO "PROGRAMADORESCSI";
