--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMITE_RECOBRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMITE_RECOBRO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITE_RECOBRO
   PROPÓSITO:  Contiene información de los trámites de siniestros.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/04/2011   ICV                1. Creación del objeto.
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --Número Siniestro
   ntramte        NUMBER,   --Número Trámite
   cusualt        VARCHAR2(20),
   falta          DATE,
   cusumod        VARCHAR2(20),
   fusumod        VARCHAR2(20),
   fprescrip      DATE,
   ireclamt       NUMBER,
   irecobt        NUMBER,
   iconcurr       NUMBER,
   ircivil        NUMBER,
   iassegur       NUMBER,
   cresrecob      NUMBER,
   cdestim        NUMBER,
   nrefges        NUMBER,
   ctiprec        NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_sin_tramite_recobro
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMITE_RECOBRO" AS
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITE_RECOBRO
   PROPÓSITO:  Contiene información de los trámites de siniestros.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/04/2011   ICV                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_sin_tramite_recobro
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.ntramte := NULL;
      SELF.cusualt := NULL;
      SELF.falta := NULL;
      SELF.cusumod := NULL;
      SELF.fusumod := NULL;
      SELF.fprescrip := NULL;
      SELF.ireclamt := NULL;
      SELF.irecobt := NULL;
      SELF.iconcurr := NULL;
      SELF.ircivil := NULL;
      SELF.iassegur := NULL;
      SELF.cresrecob := NULL;
      SELF.cdestim := NULL;
      SELF.nrefges := NULL;
      SELF.ctiprec := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE_RECOBRO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE_RECOBRO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE_RECOBRO" TO "PROGRAMADORESCSI";
