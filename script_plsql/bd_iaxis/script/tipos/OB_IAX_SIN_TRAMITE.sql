--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMITE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMITE" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITE
   PROP�SITO:  Contiene informaci�n de los tr�mites de siniestros.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/04/2011   ICV                1. Creaci�n del objeto.
   2.0        16/05/2012   JMF             0022099: MDP_S001-SIN - Tr�mite de asistencia
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --N�mero Siniestro
   ntramte        NUMBER,   --N�mero Tr�mite
   ctramte        NUMBER,   --C�digo Tr�mite
   ttramte        VARCHAR2(100),   --Descripci�n Tr�mite
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
   PROP�SITO:  Contiene informaci�n de los tr�mites de siniestros.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/04/2011   ICV                1. Creaci�n del objeto.
   2.0        16/05/2012   JMF             0022099: MDP_S001-SIN - Tr�mite de asistencia
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
