--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMITE_MOV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMITE_MOV" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITE_MOV
   PROPÓSITO:  Contiene información de los movimientos de trámites de siniestros.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/04/2011   ICV                1. Creación del objeto.
   2.0        14/06/2012   JMF                0022108 MDP_S001-SIN - Movimiento de trámites
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --Número Siniestro
   ntramte        NUMBER,   --Número Trámite
   nmovtte        NUMBER,   --Número Movimiento Trámite
   cesttte        NUMBER,   --Código Estado Trámite (VF:6)
   testtte        VARCHAR2(100),   --Descripción del Trámite
   ccauest        NUMBER,   -- Causa cambio de estado
   tcauest        VARCHAR2(100),   --Desc. Estado Tramitación
   cunitra        VARCHAR2(4),   -- Código de unidad de tramitación
   tunitra        VARCHAR2(100),   -- desc. Unidad Tramitación
   ctramitad      VARCHAR2(4),   -- Código de tramitador
   ttramitad      VARCHAR2(100),   --Desc. Tramitador
   festtra        DATE,   -- Fecha estado trámite
   cusualt        VARCHAR2(20),   -- Usuario de alta
   falta          DATE,   -- Fecha de alta
   CONSTRUCTOR FUNCTION ob_iax_sin_tramite_mov
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMITE_MOV" AS
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITE_MOV
   PROPÓSITO:  Contiene información de los movimientos de trámites de siniestros.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/04/2011   ICV                1. Creación del objeto.
   2.0        14/06/2012   JMF                0022108 MDP_S001-SIN - Movimiento de trámites
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_sin_tramite_mov
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.ntramte := NULL;
      SELF.nmovtte := NULL;
      SELF.cesttte := NULL;
      SELF.testtte := NULL;
      SELF.ccauest := NULL;
      SELF.tcauest := NULL;
      SELF.cunitra := NULL;
      SELF.tunitra := NULL;
      SELF.ctramitad := NULL;
      SELF.ttramitad := NULL;
      SELF.festtra := NULL;
      SELF.cusualt := NULL;
      SELF.falta := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE_MOV" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE_MOV" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE_MOV" TO "PROGRAMADORESCSI";
