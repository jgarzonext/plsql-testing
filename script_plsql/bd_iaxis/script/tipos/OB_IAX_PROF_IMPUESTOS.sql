--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_IMPUESTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_IMPUESTOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PROF_IMPUESTOS
   PROPÓSITO:  Contiene los impuestos del profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        25/02/2014   NSS                1. Creación del objeto.
******************************************************************************/
(
   ccodimp        NUMBER,   --codigo impuesto
   tdesimp        VARCHAR2(200),   --Descripcion impuesto
   ctipind        NUMBER,   --tipo indicador
   tindica        VARCHAR2(200),   --Descripción tipo indicador
   cusuari        VARCHAR2(200),   --usuari alta
   falta          DATE,   -- fecha alta
   CONSTRUCTOR FUNCTION ob_iax_prof_impuestos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_IMPUESTOS" AS
   CONSTRUCTOR FUNCTION ob_iax_prof_impuestos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodimp := NULL;
      SELF.tdesimp := NULL;
      SELF.ctipind := NULL;
      SELF.tindica := NULL;
      SELF.cusuari := NULL;
      SELF.falta := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_IMPUESTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_IMPUESTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_IMPUESTOS" TO "PROGRAMADORESCSI";
