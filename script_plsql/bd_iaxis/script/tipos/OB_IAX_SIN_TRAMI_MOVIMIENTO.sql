--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_MOVIMIENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_MOVIMIENTO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_MOVIMIENTO
   PROPÓSITO:  Contiene la información del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creación del objeto.
   2.0        08/03/2012   ASN                0021196: LCOL_S001-SIN - Cambio de tramitador
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --Número Siniestro
   ntramit        NUMBER(3),   --Número Tramitación Siniestro
   nmovtra        NUMBER(3),   --Número Movimiento Tramitación
   cunitra        VARCHAR2(4),   --Código Unidad Tramitación
   tunitra        VARCHAR2(100),   -- desc. Unidad Tramitación
   ctramitad      VARCHAR2(4),   --Código Tramitador
   ttramitad      VARCHAR2(100),   --Desc. Tramitador
   cesttra        NUMBER(3),   --Código Estado Tramitación
   testtra        VARCHAR2(100),   --Desc. Estado Tramitación
   csubtra        NUMBER(2),   --Código Subestado Tramitación
   tsubtra        VARCHAR2(100),   --Desc. Subestado Tramitación
   festtra        DATE,   --Fecha Estado Tramitación
   ccauest        NUMBER(4),   -- causa movimiento BUG0021196: LCOL_S001-SIN - Cambio de tramitador
   tcauest        VARCHAR2(100),   -- causa movimiento BUG0021196: LCOL_S001-SIN - Cambio de tramitador
   cusualt        VARCHAR2(500),   --Código Usuario Alta
   falta          DATE,   --Fecha Alta
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_movimiento
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_MOVIMIENTO" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_movimiento
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_MOVIMIENTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_MOVIMIENTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_MOVIMIENTO" TO "PROGRAMADORESCSI";
