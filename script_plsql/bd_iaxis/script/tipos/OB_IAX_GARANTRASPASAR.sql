--------------------------------------------------------
--  DDL for Type OB_IAX_GARANTRASPASAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GARANTRASPASAR" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_GARANTRASPASAR
   PROP�SITO:  Contiene la informaci�n de evoluci�n de provisiones, rescates, etc.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/07/2010  RSC              1. Creaci�n del objeto.
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
      PROP�SITO:  Contiene la informaci�n de traspaso de garant�as.

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        02/07/2010  RSC              1. Creaci�n del objeto.
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
