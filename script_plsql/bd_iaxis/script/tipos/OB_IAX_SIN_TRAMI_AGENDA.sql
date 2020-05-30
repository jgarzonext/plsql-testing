--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_AGENDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_AGENDA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_AGENDA
   PROP�SITO:  Contiene la informaci�n del siniestro
   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creaci�n del objeto.
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --N�mero Siniestro
   ntramit        NUMBER(3),   --N�mero Tramitaci�n Siniestro
   nlinage        NUMBER(6),   --N�mero L�nea
   ctipreg        NUMBER(3),   --C�digo Tipo Registro
   ttipreg        VARCHAR2(100),   --Des Tipo Registro
   cmanual        NUMBER(3),   --C�digo Registro Manual
   tmanual        VARCHAR2(100),   --Desc Registro Manual
   cestage        NUMBER(3),   --C�digo Estado Agenda
   testage        VARCHAR2(100),   --Desc Registro Manual
   ffinage        DATE,   --Fecha Finalizaci�n
   ttitage        VARCHAR2(100),   --T�tulo Anotaci�n
   tlinage        VARCHAR2(2000),   --Descripci�n Anotaci�n
   cusualt        VARCHAR2(20),   --C�digo Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --C�digo Usuario Modificaci�n
   fmodifi        DATE,   --Fecha Modificaci�n
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
