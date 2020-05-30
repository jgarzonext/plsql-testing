--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_MOVSINIESTRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_MOVSINIESTRO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_MOVSINIESTRO
   PROPÓSITO:  Contiene la información del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creación del objeto.
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --Número Siniestro
   nmovsin        NUMBER(12),   --Número Movimiento Siniestro
   cestsin        NUMBER(2),   --Código Estado Siniestro
   testsin        VARCHAR2(100),   --Des. Estat Sinistre
   festsin        DATE,   --Fecha Estado Siniestro
   ccauest        NUMBER(4),   --Código Causa Estado Siniestro
   tcauest        VARCHAR2(100),   --Estat Causa Estat sinistre
   cunitra        VARCHAR2(4),   --Código Unidad tramitación
   tunitra        VARCHAR2(100),   --Desc Unidad tramitación
   ctramitad      VARCHAR2(4),   --Código Tramitador
   ttramitad      VARCHAR2(100),   --desc Tramitador
   cusualt        VARCHAR2(20),   --Código Usuario Alta
   falta          DATE,   --Fecha Alta
   CONSTRUCTOR FUNCTION ob_iax_sin_movsiniestro
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_MOVSINIESTRO" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_movsiniestro
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_MOVSINIESTRO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_MOVSINIESTRO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_MOVSINIESTRO" TO "PROGRAMADORESCSI";
