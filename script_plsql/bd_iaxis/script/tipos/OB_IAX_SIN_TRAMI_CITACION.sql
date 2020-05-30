--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_CITACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_CITACION" FORCE AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_CITACION
   PROP¿SITO:    Almacena la informaci¿n de las citaciones del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        11/07/2008   RFA              1. Creaci¿n del objeto.
   2.0        24/04/2017   JGONZALEZ        2. Se anaden los campos de audiencia
******************************************************************************/
(

  NSINIES      VARCHAR2(14), --N¿mero Siniestro
  NTRAMIT      NUMBER(3,0), --N¿mero Tramitaci¿n Siniestro
  NCITACION    NUMBER, --N¿mero citaci¿n de la tramitaci¿n
  FCITACION    DATE, --Fecha citaci¿n
  HCITACION    VARCHAR2(5), --Hora citaci¿n (HH:MM)
  PERSONA      OB_IAX_PERSONAS, --Persona que asistir¿ a la citaci¿n
  CPAIS        NUMBER(3), --C¿digo Pa¿s
  TPAIS        VARCHAR2(200), --Descripci¿n Pa¿s
  CPROVIN      NUMBER, --C¿digo Provincia
  TPROVIN      VARCHAR2(200), --Descripci¿n provincia
  CPOBLAC      NUMBER, --C¿digo Poblaci¿n
  TPOBLAC      VARCHAR2(200), --Descripci¿n poblaci¿n
  TLUGAR       VARCHAR2(200), --Lugar de la citaci¿n (texto libre)
  TAUDIEN      VARCHAR2(200), -- Tipo de audiencia o citacion
  CORAL        NUMBER(1), -- Audiencia se llevo oral o no
  CESTADO      NUMBER(1), -- estado de la citacion
  CRESOLU      NUMBER(1), --codigo de resolucion
  FNUEVA       DATE, -- Fecha de la nueva citacion
  TRESULT      VARCHAR2(2000), -- Observaciones, texto libre
  CMEDIO       NUMBER(1), -- Valor medio de audiencia para responsabilidad fiscal
  FALTA        DATE, --Fecha Alta
  CUSUALT      VARCHAR2(20), --C¿digo Usuario Alta
  FMODIFI      DATE, --Fecha de modificaci¿n
  CUSUMOD      VARCHAR2(20), --C¿digo usuario de modificaci¿n

  CONSTRUCTOR FUNCTION OB_IAX_SIN_TRAMI_CITACION
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_CITACION" AS
   CONSTRUCTOR FUNCTION OB_IAX_SIN_TRAMI_CITACION
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.NSINIES    := NULL;
      SELF.NTRAMIT    := NULL;
      SELF.NCITACION  := NULL;
      SELF.FCITACION  := NULL;
      SELF.HCITACION  := NULL;
      SELF.PERSONA    := ob_iax_personas();
      SELF.CPAIS      := NULL;
      SELF.TPAIS      := NULL;
      SELF.CPROVIN    := NULL;
      SELF.TPROVIN    := NULL;
      SELF.CPOBLAC    := NULL;
      SELF.TPOBLAC    := NULL;
      SELF.TLUGAR     := NULL;
      SELF.TAUDIEN    := NULL;
      SELF.CORAL      := NULL;
      SELF.CESTADO    := NULL;
      SELF.CRESOLU    := NULL;
      SELF.FNUEVA     := NULL;
      SELF.TRESULT    := NULL;
      SELF.CMEDIO     := NULL;
      SELF.FALTA      := NULL;
      SELF.CUSUALT    := NULL;
      SELF.FMODIFI    := NULL;
      SELF.CUSUMOD    := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_CITACION" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_CITACION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_CITACION" TO "R_AXIS";
