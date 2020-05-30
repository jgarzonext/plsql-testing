--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_AGENDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_AGENDA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_AGENDA
   PROPÓSITO:  Contiene la información del siniestro
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creación del objeto.
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --Número Siniestro
   ntramit        NUMBER(3),   --Número Tramitación Siniestro
   nlinage        NUMBER(6),   --Número Línea
   ctipreg        NUMBER(3),   --Código Tipo Registro
   ttipreg        VARCHAR2(100),   --Des Tipo Registro
   cmanual        NUMBER(3),   --Código Registro Manual
   tmanual        VARCHAR2(100),   --Desc Registro Manual
   cestage        NUMBER(3),   --Código Estado Agenda
   testage        VARCHAR2(100),   --Desc Registro Manual
   ffinage        DATE,   --Fecha Finalización
   ttitage        VARCHAR2(100),   --Título Anotación
   tlinage        VARCHAR2(2000),   --Descripción Anotación
   cusualt        VARCHAR2(20),   --Código Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --Código Usuario Modificación
   fmodifi        DATE,   --Fecha Modificación
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_agenda
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_AGENDA" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_agenda
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_AGENDA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_AGENDA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_AGENDA" TO "PROGRAMADORESCSI";
