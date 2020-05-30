--------------------------------------------------------
--  DDL for Type OB_IAX_GFIPARAM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GFIPARAM" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_GFIPARAM
   PROPÓSITO:  Contiene la información de los parámetros de la formula

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2007   ACC                1. Creación del objeto.
******************************************************************************/
(
   clave          NUMBER,   -- Clave de la formula
   parametro      VARCHAR2(30),   -- Código parámetro
   tparam         VARCHAR2(50),   -- Descripción parámetro
   CONSTRUCTOR FUNCTION ob_iax_gfiparam
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GFIPARAM" AS
   CONSTRUCTOR FUNCTION ob_iax_gfiparam
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.clave := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIPARAM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIPARAM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIPARAM" TO "PROGRAMADORESCSI";
