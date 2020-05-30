--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_MOVIMIENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_MOVIMIENTO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_MOVIMIENTO
   PROP�SITO:  Contiene la informaci�n del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creaci�n del objeto.
   2.0        08/03/2012   ASN                0021196: LCOL_S001-SIN - Cambio de tramitador
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --N�mero Siniestro
   ntramit        NUMBER(3),   --N�mero Tramitaci�n Siniestro
   nmovtra        NUMBER(3),   --N�mero Movimiento Tramitaci�n
   cunitra        VARCHAR2(4),   --C�digo Unidad Tramitaci�n
   tunitra        VARCHAR2(100),   -- desc. Unidad Tramitaci�n
   ctramitad      VARCHAR2(4),   --C�digo Tramitador
   ttramitad      VARCHAR2(100),   --Desc. Tramitador
   cesttra        NUMBER(3),   --C�digo Estado Tramitaci�n
   testtra        VARCHAR2(100),   --Desc. Estado Tramitaci�n
   csubtra        NUMBER(2),   --C�digo Subestado Tramitaci�n
   tsubtra        VARCHAR2(100),   --Desc. Subestado Tramitaci�n
   festtra        DATE,   --Fecha Estado Tramitaci�n
   ccauest        NUMBER(4),   -- causa movimiento BUG0021196: LCOL_S001-SIN - Cambio de tramitador
   tcauest        VARCHAR2(100),   -- causa movimiento BUG0021196: LCOL_S001-SIN - Cambio de tramitador
   cusualt        VARCHAR2(500),   --C�digo Usuario Alta
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
