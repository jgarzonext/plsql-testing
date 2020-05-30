--------------------------------------------------------
--  DDL for Type OB_IAX_PRESTCUADRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRESTCUADRO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRESTCUADRO
   PROPÓSITO:    Contiene la información del cuadro del prestamo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/11/2011   DRA               1. 0019238: LCOL_T001- Prèstecs de pòlisses de vida
******************************************************************************/
(
   finicua        DATE,   -- Fecha de inicio de cuadro
   ffincua        DATE,   -- Fecha de final de versión del cuadro
   fvencim        DATE,   -- Fecha de vencimiento de la cuota
   icapital       NUMBER,   -- Capital de la cuota
   iinteres       NUMBER,   -- Interés de la cuota
   icappend       NUMBER,   -- Importe de capital pendiente
   idemora        NUMBER,   -- Intereses de mora consumidos en la cuota
   falta          DATE,   -- Fecha de alta
   fpago          DATE,   -- Fecha de pago
   icapital_moncia NUMBER,   --Capital amortizado (Moneda Cia)
   iinteres_moncia NUMBER,   --Importe interes impendiente (Moneda Cia)
   icappend_moncia NUMBER,   --Capital pendiente (Moneda Cia)
   idemora_moncia NUMBER,   --Importe demora (Moneda Cia)
   fcambio        DATE,   --Fecha cambio
   ncuota         NUMBER,   --Numero de Cuota
   CONSTRUCTOR FUNCTION ob_iax_prestcuadro
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRESTCUADRO" AS
   CONSTRUCTOR FUNCTION ob_iax_prestcuadro
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.finicua := NULL;
      SELF.ffincua := NULL;
      SELF.fvencim := NULL;
      SELF.icapital := NULL;
      SELF.iinteres := NULL;
      SELF.icappend := NULL;
      SELF.idemora := NULL;
      SELF.falta := NULL;
      SELF.fpago := NULL;
      SELF.icapital_moncia := NULL;
      SELF.iinteres_moncia := NULL;
      SELF.icappend_moncia := NULL;
      SELF.idemora_moncia := NULL;
      SELF.fcambio := NULL;
      SELF.ncuota := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTCUADRO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTCUADRO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTCUADRO" TO "PROGRAMADORESCSI";
