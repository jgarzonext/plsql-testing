--------------------------------------------------------
--  DDL for Type OB_IAX_SELRECLIQ
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SELRECLIQ" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_SELRECLIQ
   PROPÓSITO:  Contiene la información de los recibos seleccionados para liquidación.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/05/2009   JRB                1. Creación del objeto.
   2.0        15/12/2009   SVJ                1. 0012148 Modificación del objeto.
******************************************************************************/
(
   nrecibo        NUMBER,   -- Número de recibo
   smovrec        NUMBER,   -- Id. movimiento de recibo
   cselecc        NUMBER,   -- Recibo seleccionado para liquidación (1:Seleccionado,2:No seleccionado)
   cestado        NUMBER,
   testado        VARCHAR2(2000),
   CONSTRUCTOR FUNCTION ob_iax_selrecliq
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SELRECLIQ" AS
   CONSTRUCTOR FUNCTION ob_iax_selrecliq
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nrecibo := NULL;
      SELF.smovrec := NULL;
      SELF.cselecc := NULL;
      SELF.cestado := NULL;
      SELF.testado := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SELRECLIQ" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SELRECLIQ" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SELRECLIQ" TO "PROGRAMADORESCSI";
