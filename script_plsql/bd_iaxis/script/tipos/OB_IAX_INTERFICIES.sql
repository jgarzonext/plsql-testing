--------------------------------------------------------
--  DDL for Type OB_IAX_INTERFICIES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INTERFICIES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_INTERFICIE
   PROPÓSITO:  Contiene información sobre la tabla INT_CODIGOS_EMP

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/11/2013   LPP             1. Creación del objeto.
******************************************************************************/
(
   ccodigo        VARCHAR2(40),
   cempres        VARCHAR2(20),
   cvalaxis       VARCHAR2(20),
   cvalemp        VARCHAR2(100),
   cvaldef        VARCHAR2(20),
   cvalaxisdef    VARCHAR2(20),
   CONSTRUCTOR FUNCTION ob_iax_interficies
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INTERFICIES" AS
/******************************************************************************
   NOMBRE:       OB_IAX_INTERFICIE
   PROPÓSITO:  Contiene información de los pagos de renta por prestación

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   -- -- -- -- -  -- -- -- -- --   -- -- -- -- -- -- -- -  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
   1.0        01/11/2013  LPP                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_interficies
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodigo := NULL;
      SELF.cempres := NULL;
      SELF.cvalaxis := NULL;
      SELF.cvalemp := NULL;
      SELF.cvaldef := NULL;
      SELF.cvalaxisdef := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFICIES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFICIES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFICIES" TO "PROGRAMADORESCSI";
