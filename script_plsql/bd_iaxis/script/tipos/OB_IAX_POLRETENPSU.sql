--------------------------------------------------------
--  DDL for Type OB_IAX_POLRETENPSU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_POLRETENPSU" AS OBJECT(
   ccontrol       NUMBER,
   tcontrol       VARCHAR2(500),
   contador       NUMBER,
   contaut        NUMBER,
   contpdte       NUMBER,
   contrec        NUMBER,
   autmanual      VARCHAR2(100),
   CONSTRUCTOR FUNCTION ob_iax_polretenpsu
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_POLRETENPSU" AS
   CONSTRUCTOR FUNCTION ob_iax_polretenpsu
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccontrol := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_POLRETENPSU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_POLRETENPSU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_POLRETENPSU" TO "PROGRAMADORESCSI";
