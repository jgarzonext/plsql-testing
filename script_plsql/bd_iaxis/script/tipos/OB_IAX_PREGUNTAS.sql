--------------------------------------------------------
--  DDL for Type OB_IAX_PREGUNTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PREGUNTAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PREGUNTAS
   PROPÓSITO:  Contiene la información de las preguntes del riesgo o garantía

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC                1. Creación del objeto.
   2.0        14/09/2007   ACC                2. Simplificación objeto
   3.0        16/02/2009   SBG                3. S'afegeix CTIPGRU (Bug 6296)
******************************************************************************/
(
   /* valores */
   cpregun        NUMBER,   -- Código pregunta
   tpregun        VARCHAR2(300),   -- Descripció pregunta
   crespue        NUMBER,   -- Respuesta pregunta
   trespue        VARCHAR2(2000),   -- Texto respuesta
   nmovimi        NUMBER,   -- Número movimiento
   nmovima        NUMBER,   -- Número movimiento alta
   finiefe        DATE,   -- Fecha efecto del movimiento (exclusivo pregungaranseg)
   ctipgru        NUMBER(2),   -- Tipo de grupo de preguntas (detvalores.cvalor = 309)
   tpreguntastab  t_iax_preguntastab,
   CONSTRUCTOR FUNCTION ob_iax_preguntas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PREGUNTAS" AS
/******************************************************************************
   NOMBRE:       OB_IAX_PREGUNTAS
   PROPÓSITO:  Contiene la información de las preguntes del riesgo o garantía

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC                1. Creación del objeto.
   2.0        14/09/2007   ACC                2. Simplificación objeto
   3.0        16/02/2009   SBG                3. S'afegeix CTIPGRU (Bug 6296)
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_preguntas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cpregun := 0;
      SELF.tpregun := NULL;
      SELF.crespue := 0;
      SELF.trespue := NULL;
      SELF.finiefe := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PREGUNTAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PREGUNTAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PREGUNTAS" TO "PROGRAMADORESCSI";
