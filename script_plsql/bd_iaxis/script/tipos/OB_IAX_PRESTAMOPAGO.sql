--------------------------------------------------------
--  DDL for Type OB_IAX_PRESTAMOPAGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRESTAMOPAGO" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_PRESTAMOPAGO
   PROPOSITO:     Detalle pago préstamo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        05/09/2012   MDS              1. Creación del objeto.
******************************************************************************/
(
   npago          NUMBER(6),
   fefecto        DATE,
   icapital       NUMBER,
   falta          DATE,
   fcontab        DATE,
   icapital_monpago NUMBER,   --NUMBER(15, 2),
   cmonpago       NUMBER(3),
   fcambio        DATE,
   CONSTRUCTOR FUNCTION ob_iax_prestamopago
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRESTAMOPAGO" AS
   CONSTRUCTOR FUNCTION ob_iax_prestamopago
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.npago := NULL;
      SELF.fefecto := NULL;
      SELF.icapital := NULL;
      SELF.falta := NULL;
      SELF.fcontab := NULL;
      SELF.icapital_monpago := NULL;
      SELF.cmonpago := NULL;
      SELF.fcambio := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTAMOPAGO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTAMOPAGO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTAMOPAGO" TO "PROGRAMADORESCSI";
