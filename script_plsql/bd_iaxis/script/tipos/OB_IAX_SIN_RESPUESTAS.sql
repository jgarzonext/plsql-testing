--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_RESPUESTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_RESPUESTAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_RESPUESTAS
   PROPÓSITO:  Contiene las preguntas del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        28/02/2013    NSS                1. Creación del objeto.
******************************************************************************/
(
   crespue        NUMBER,   --Código respuesta
   trespue        VARCHAR2(40),   --Descripcion respuesta
   CONSTRUCTOR FUNCTION ob_iax_sin_respuestas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_RESPUESTAS" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_respuestas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.crespue := NULL;
      SELF.trespue := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_RESPUESTAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_RESPUESTAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_RESPUESTAS" TO "PROGRAMADORESCSI";
