--------------------------------------------------------
--  DDL for Type OB_IAXCLAUSUPARA_VALORES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAXCLAUSUPARA_VALORES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAXCLAUSUPARA_VALORES
   PROPÓSITO:  Contiene la información de las respuestas a preguntas

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2007   ACC                1. Creación del objeto.
******************************************************************************/
(
   sclagen        NUMBER,   --Código respuesta
   nparame        NUMBER(4),   --Código de la pregunta
   cidioma        NUMBER,
   cparame        NUMBER,
   tparame        VARCHAR2(500),   --Valor de la respuesta
   CONSTRUCTOR FUNCTION ob_iaxclausupara_valores
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAXCLAUSUPARA_VALORES" AS
   CONSTRUCTOR FUNCTION ob_iaxclausupara_valores
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sclagen := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAXCLAUSUPARA_VALORES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAXCLAUSUPARA_VALORES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAXCLAUSUPARA_VALORES" TO "PROGRAMADORESCSI";
