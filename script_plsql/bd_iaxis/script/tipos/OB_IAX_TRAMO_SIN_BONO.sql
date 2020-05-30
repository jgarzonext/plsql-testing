--------------------------------------------------------
--  DDL for Type OB_IAX_TRAMO_SIN_BONO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_TRAMO_SIN_BONO" AS OBJECT(
   ID             NUMBER,
   scontra        NUMBER(6),
   nversio        NUMBER(2),
   ctramo         NUMBER(2),
   psiniestra     NUMBER(2),
   pbonorec       NUMBER(2),
   CONSTRUCTOR FUNCTION ob_iax_tramo_sin_bono
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_TRAMO_SIN_BONO" AS
   CONSTRUCTOR FUNCTION ob_iax_tramo_sin_bono
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ID := 0;
      SELF.scontra := 0;
      SELF.nversio := 0;
      SELF.ctramo := 0;
      SELF.psiniestra := 0;
      SELF.pbonorec := 0;
      RETURN;
   END ob_iax_tramo_sin_bono;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_TRAMO_SIN_BONO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TRAMO_SIN_BONO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TRAMO_SIN_BONO" TO "PROGRAMADORESCSI";
