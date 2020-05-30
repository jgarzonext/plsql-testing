--------------------------------------------------------
--  DDL for Type OB_IAX_PORCEN_TRAMO_CTTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PORCEN_TRAMO_CTTO" AS OBJECT(
   idcabecera     NUMBER(6),
   ID             NUMBER(6),
   porcen         NUMBER,
   fpago          DATE,
   CONSTRUCTOR FUNCTION ob_iax_porcen_tramo_ctto
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PORCEN_TRAMO_CTTO" AS
   CONSTRUCTOR FUNCTION ob_iax_porcen_tramo_ctto
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.idcabecera := NULL;
      SELF.ID := NULL;
      SELF.porcen := NULL;
      SELF.fpago := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PORCEN_TRAMO_CTTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PORCEN_TRAMO_CTTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PORCEN_TRAMO_CTTO" TO "PROGRAMADORESCSI";
