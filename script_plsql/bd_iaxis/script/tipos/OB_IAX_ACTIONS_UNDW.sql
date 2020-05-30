--------------------------------------------------------
--  DDL for Type OB_IAX_ACTIONS_UNDW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_ACTIONS_UNDW" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_ACTIONS_UNDW
   PROPÓSITO:  Contiene información de las exclusiones de una póliza

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/08/2015  YDA              1. Creación del objeto.
******************************************************************************/
(
   sseguro     NUMBER,
   nriesgo     NUMBER (6),
   nmovimi     NUMBER (4),
   cempres     NUMBER (5),
   sorden      NUMBER,
   norden      NUMBER,
   action      VARCHAR2 (2000),
   naseg       NUMBER,
   nombre      VARCHAR2 (2000),
   CONSTRUCTOR FUNCTION ob_iax_actions_undw
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_ACTIONS_UNDW" 
AS
   /******************************************************************************
      NOMBRE:     OB_IAX_ACTIONS_UNDW
      PROPÓSITO:  Contiene la información de las enfermedades.

      REVISIONES:
      Ver        Fecha        Autor             Descripción
      ---------  ----------  ---------------  ------------------------------------
      1.0        12/08/2015  YDA              1. Creación del objeto.
   ******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_actions_undw
      RETURN SELF AS RESULT
   IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.nriesgo := NULL;
      SELF.nmovimi := NULL;
      SELF.cempres := NULL;
      SELF.sorden  := NULL;
      SELF.norden  := NULL;
      SELF.action  := NULL;
      SELF.naseg   := NULL;
	  SELF.nombre  := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_ACTIONS_UNDW" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ACTIONS_UNDW" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ACTIONS_UNDW" TO "PROGRAMADORESCSI";
