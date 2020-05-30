--------------------------------------------------------
--  DDL for Type OB_IAX_GARANTRASPASAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GARANTRASPASAR" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_GARANTRASPASAR
   PROPÓSITO:  Contiene la información de evolución de provisiones, rescates, etc.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/07/2010  RSC              1. Creación del objeto.
******************************************************************************/
(
   cgarant        NUMBER(4),
   tgarant        VARCHAR2(120),
   cobliga        NUMBER(1),
   CONSTRUCTOR FUNCTION ob_iax_garantraspasar
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GARANTRASPASAR" AS
   /******************************************************************************
      NOMBRE:     OB_IAX_GARANTRASPASAR
      PROPÓSITO:  Contiene la información de traspaso de garantías.

      REVISIONES:
      Ver        Fecha        Autor             Descripción
      ---------  ----------  ---------------  ------------------------------------
      1.0        02/07/2010  RSC              1. Creación del objeto.
   ******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_garantraspasar
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cgarant := NULL;
      SELF.tgarant := NULL;
      SELF.cobliga := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GARANTRASPASAR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GARANTRASPASAR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GARANTRASPASAR" TO "PROGRAMADORESCSI";
