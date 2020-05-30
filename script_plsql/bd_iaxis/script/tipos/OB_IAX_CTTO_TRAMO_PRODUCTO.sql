--------------------------------------------------------
--  DDL for Type OB_IAX_CTTO_TRAMO_PRODUCTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CTTO_TRAMO_PRODUCTO" AS OBJECT(
   ID             NUMBER(6),
   scontra        NUMBER(6),
   nversio        NUMBER(2),
   ctramo         NUMBER(2),
   cramo          NUMBER(8),
   sproduc        NUMBER(6),
   porcen         NUMBER,
   desccontra     VARCHAR2(50),
   descramo       VARCHAR2(30),
   descproducto   VARCHAR2(40),
   desctramo      VARCHAR2(100),
   CONSTRUCTOR FUNCTION ob_iax_ctto_tramo_producto
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CTTO_TRAMO_PRODUCTO" AS
   CONSTRUCTOR FUNCTION ob_iax_ctto_tramo_producto
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ID := NULL;
      SELF.scontra := NULL;
      SELF.nversio := NULL;
      SELF.ctramo := NULL;
      SELF.cramo := NULL;
      SELF.sproduc := NULL;
      SELF.porcen := NULL;
      SELF.desccontra := NULL;
      SELF.descramo := NULL;
      SELF.descproducto := NULL;
      SELF.desctramo := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CTTO_TRAMO_PRODUCTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CTTO_TRAMO_PRODUCTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CTTO_TRAMO_PRODUCTO" TO "PROGRAMADORESCSI";
