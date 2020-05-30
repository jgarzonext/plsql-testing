--------------------------------------------------------
--  DDL for Type OB_IAX_PRESTAMOCUOTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRESTAMOCUOTAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRESTAMOCUOTAS
   PROPÓSITO:    Contiene la información de las cuotas del prestamo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/11/2011   DRA               1. 0019238: LCOL_T001- Prèstecs de pòlisses de vida
******************************************************************************/
(
   idpago         NUMBER,   -- Identificador del pago
   nlinea         NUMBER,   -- Número de línea del pago
   fpago          DATE,   -- Fecha de formalización del pago
   icapital       NUMBER,   -- Capital satisfecho en la cuota pagada
   iinteres       NUMBER,   -- Intereses satisfechos en la cuota pagada
   idemora        NUMBER,   -- Intereses de mora consumidos en la cuota
   fvencim        DATE,   -- Fecha de vencimiento del cuadro de amortización al que esta aportando
   icappend       NUMBER,   -- Capital pendiente
   icuota         NUMBER,   -- Cuota pagada
   icapital_moncia NUMBER,   --Capital amortizado (Moneda Cia)
   iinteres_moncia NUMBER,   --Importe interes impendiente (Moneda Cia)
   icappend_moncia NUMBER,   --Capital pendiente (Moneda Cia)
   idemora_moncia NUMBER,   --Importe demora (Moneda Cia)
   fcambio        DATE,   --Fecha cambio
   CONSTRUCTOR FUNCTION ob_iax_prestamocuotas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRESTAMOCUOTAS" AS
   CONSTRUCTOR FUNCTION ob_iax_prestamocuotas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.idpago := NULL;
      SELF.nlinea := NULL;
      SELF.fpago := NULL;
      SELF.icapital := NULL;
      SELF.iinteres := NULL;
      SELF.idemora := NULL;
      SELF.fvencim := NULL;
      SELF.icappend := NULL;
      SELF.icuota := NULL;
      SELF.icapital_moncia := NULL;
      SELF.iinteres_moncia := NULL;
      SELF.icappend_moncia := NULL;
      SELF.idemora_moncia := NULL;
      SELF.fcambio := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTAMOCUOTAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTAMOCUOTAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTAMOCUOTAS" TO "PROGRAMADORESCSI";
