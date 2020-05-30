--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMITE_ASISTENCIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMITE_ASISTENCIA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITE_LESIONES
   PROP脫SITO:  Contiene informaci贸n de los tr谩mites de siniestros.

   REVISIONES:
   Ver        Fecha        Autor             Descripci贸n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/05/2012   JMF             0022099: MDP_S001-SIN - Tr醡ite de asistencia
******************************************************************************/
(
   nsinies        VARCHAR2(14),
   ntramte        NUMBER,
   cusualt        VARCHAR2(20),
   falta          DATE,
   cusumod        VARCHAR2(20),
   fusumod        VARCHAR2(20),
   trefext        VARCHAR2(50),
   cciaasis       NUMBER(3),
   CONSTRUCTOR FUNCTION ob_iax_sin_tramite_asistencia
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMITE_ASISTENCIA" AS
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITE_ASISTENCIA
   PROP脫SITO:  Contiene informaci贸n de los tr谩mites de siniestros.

   REVISIONES:
   Ver        Fecha        Autor             Descripci贸n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/05/2012   JMF             0022099: MDP_S001-SIN - Tr醡ite de asistencia
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_sin_tramite_asistencia
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.ntramte := NULL;
      SELF.cusualt := NULL;
      SELF.falta := NULL;
      SELF.cusumod := NULL;
      SELF.fusumod := NULL;
      SELF.trefext := NULL;
      SELF.cciaasis := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE_ASISTENCIA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE_ASISTENCIA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE_ASISTENCIA" TO "PROGRAMADORESCSI";
