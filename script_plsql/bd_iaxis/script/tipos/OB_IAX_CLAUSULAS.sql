--------------------------------------------------------
--  DDL for Type OB_IAX_CLAUSULAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CLAUSULAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_DET_CLAUSULAS
   PROPÓSITO:  Contiene información de las clausulas de la poliza

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC                1. Creación del objeto.
   2.0        10/11/2010   JBN                1. 16410:CRT003 - Clausulas con parametros
   3.0        04/02/2013   JMF                0025583: LCOL - Revision incidencias qtracker (IV)
   4.0        04/02/2013   NSS                0025583: LCOL - Revision incidencias qtracker (IV)
   5.0        02/09/2013   AMC                Se añade el parametro nriesgo -- Bug 27539/151777 - 02/09/2013 - AMC
******************************************************************************/
(
   ctipo          NUMBER,   --1 especial texto, 2 especial pregunta, 3 especial garantia, 4 general
   tclaesp        VARCHAR2(31000),
   sclagen        NUMBER,
   tclagen        VARCHAR2(4000),
   ffinclau       DATE,   --Fecha fin cláusula
   finiclau       DATE,   --Fecha inicio cláusula
   cidentity      NUMBER,
   cparams        NUMBER,   -- Numero de parametros(#) de la clausula JBN BUG:16410
   parametros     t_iax_clausupara,   --Parametros de la clausula JBN BUG:16410
   nriesgo        NUMBER,   -- Bug 27539/151777 - 02/09/2013 - AMC
   --1 el texto de clausuesp
   --2 y 3 el sclagen de clausuesp y el tclagen de clausu
   --4 el sclagen de claususeg y el tclagen de clausugen
   CONSTRUCTOR FUNCTION ob_iax_clausulas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CLAUSULAS" AS
   CONSTRUCTOR FUNCTION ob_iax_clausulas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ctipo := 0;
      SELF.tclaesp := NULL;
      SELF.sclagen := 0;
      SELF.tclagen := NULL;
      SELF.cidentity := 0;
      SELF.cparams := NULL;
      SELF.parametros := t_iax_clausupara();   --JBN BUG:16410
      SELF.nriesgo := 0;   -- Bug 27539/151777 - 02/09/2013 - AMC
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CLAUSULAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CLAUSULAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CLAUSULAS" TO "PROGRAMADORESCSI";
