--------------------------------------------------------
--  DDL for Type OB_IAXPAR_RESPUESTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAXPAR_RESPUESTAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAXPAR_RESPUESTAS
   PROP�SITO:  Contiene la informaci�n de las respuestas a preguntas

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2007   ACC                1. Creaci�n del objeto.
******************************************************************************/
(
   crespue        NUMBER,   --C�digo respuesta
   cpregun        NUMBER(4),   --C�digo de la pregunta
   trespue        VARCHAR2(100),   --Valor de la respuesta
   CONSTRUCTOR FUNCTION ob_iaxpar_respuestas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAXPAR_RESPUESTAS" AS
   CONSTRUCTOR FUNCTION ob_iaxpar_respuestas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.crespue := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_RESPUESTAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_RESPUESTAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_RESPUESTAS" TO "PROGRAMADORESCSI";
