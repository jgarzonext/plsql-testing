--------------------------------------------------------
--  DDL for Type OB_IAX_PRESTCUADROSEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRESTCUADROSEG" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRESTCUADROSEG
   PROPÓSITO:  Contiene la información del cuadro de prestamos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/06/2010   XPL                1. Creación del objeto.
******************************************************************************/
(
   sseguro        NUMBER,   --Código seguro identificador interno
   nmovimi        NUMBER,   --Número movimiento
   ctapres        VARCHAR2(50),   --Identificador único préstamo
   finicuaseg     DATE,   --Fecha de inicio del cuadro
   ffincuaseg     DATE,   --Fecha fin del cuadro
   fefecto        DATE,   --Fecha de efecto de la cuota
   fvencim        DATE,   --Fecha venciento de la cuota
   icapital       NUMBER,   --Capital amortizado
   iinteres       NUMBER,   --Importe interes impendiente
   icappend       NUMBER,   --Capital pendiente
   icuota         NUMBER,   --suma de ICAPITAL+IINTERES
   falta          DATE,   --Fecha de alta del préstamo
   CONSTRUCTOR FUNCTION ob_iax_prestcuadroseg
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRESTCUADROSEG" AS
   CONSTRUCTOR FUNCTION ob_iax_prestcuadroseg
      RETURN SELF AS RESULT IS
      /******************************************************************************
      NOMBRE:       OB_IAX_PRESTCUADROSEG
      PROPÓSITO:  Contiene la información del cuadro de prestamos

      REVISIONES:
      Ver        Fecha        Autor             Descripción
      ---------  ----------  ---------------  ------------------------------------
      1.0        10/06/2010   XPL                1. Creación del objeto.
   ******************************************************************************/
   BEGIN
      SELF.icapital := 0;
      SELF.iinteres := 0;
      SELF.icappend := 0;
      SELF.icuota := 0;
      SELF.sseguro := NULL;
      SELF.nmovimi := NULL;
      SELF.ctapres := NULL;
      SELF.finicuaseg := NULL;
      SELF.ffincuaseg := NULL;
      SELF.fefecto := NULL;
      SELF.fvencim := NULL;
      SELF.falta := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTCUADROSEG" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTCUADROSEG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTCUADROSEG" TO "PROGRAMADORESCSI";
