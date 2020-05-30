--------------------------------------------------------
--  DDL for Type OB_IAX_GFIPARAMTRANS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GFIPARAMTRANS" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_GFIPARAMTRANS
   PROPÓSITO:  Contiene la informaci�n de los parametros de la formula
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/12/2010   XPL                1. Creación del objeto.
******************************************************************************/
(
   sesion         NUMBER,   --C�digo sesi�n
   parametro      VARCHAR2(50),   --   Parametro
   valor          NUMBER,   --   Valor del parametro
   CONSTRUCTOR FUNCTION ob_iax_gfiparamtrans
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GFIPARAMTRANS" AS
   CONSTRUCTOR FUNCTION ob_iax_gfiparamtrans
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIPARAMTRANS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIPARAMTRANS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIPARAMTRANS" TO "PROGRAMADORESCSI";
