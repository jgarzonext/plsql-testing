--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_RESERVA_MULT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_RESERVA_MULT" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_SIN_TRAMI_RESERVA_MULT
   PROPOSITO:     Reservas múltiples

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/03/2012   MDS              1. Creación del objeto.
******************************************************************************/
(
   ctipres        NUMBER(2),   -- PK
   ttipres        VARCHAR2(100),   -- descripción de código tipo reserva
   itotalres      NUMBER,
   reservas       t_iax_sin_trami_reserva,
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_reserva_mult
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_RESERVA_MULT" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_reserva_mult
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ctipres := NULL;
      SELF.ttipres := NULL;
      SELF.itotalres := NULL;
      SELF.reservas := t_iax_sin_trami_reserva();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_RESERVA_MULT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_RESERVA_MULT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_RESERVA_MULT" TO "PROGRAMADORESCSI";
