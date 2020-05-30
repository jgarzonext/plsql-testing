--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMITE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMITE" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITE
   PROPÓSITO:  Contiene información de los trámites de siniestros.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/04/2011   ICV                1. Creación del objeto.
   2.0        16/05/2012   JMF             0022099: MDP_S001-SIN - Trámite de asistencia
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --Número Siniestro
   ntramte        NUMBER,   --Número Trámite
   ctramte        NUMBER,   --Código Trámite
   ttramte        VARCHAR2(100),   --Descripción Trámite
   movimientos    t_iax_sin_tramite_mov,   --Movimiento de sin_tramita_mov
   recobro        ob_iax_sin_tramite_recobro,   -- Detall tipus recobro ctramte = 3
   lesiones       ob_iax_sin_tramite_lesiones,   -- Detall tipus recobro ctramte = 2
   asistencia     ob_iax_sin_tramite_asistencia,   -- Detall tipus asistencia ctramte = 5
   CONSTRUCTOR FUNCTION ob_iax_sin_tramite
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMITE" AS
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITE
   PROPÓSITO:  Contiene información de los trámites de siniestros.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/04/2011   ICV                1. Creación del objeto.
   2.0        16/05/2012   JMF             0022099: MDP_S001-SIN - Trámite de asistencia
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_sin_tramite
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.ntramte := NULL;
      SELF.ctramte := NULL;
      SELF.ttramte := NULL;
      SELF.movimientos := t_iax_sin_tramite_mov();
      SELF.recobro := ob_iax_sin_tramite_recobro();
      SELF.lesiones := ob_iax_sin_tramite_lesiones();
      SELF.asistencia := ob_iax_sin_tramite_asistencia();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE" TO "PROGRAMADORESCSI";
