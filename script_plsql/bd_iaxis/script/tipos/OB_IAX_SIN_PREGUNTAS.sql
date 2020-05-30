--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_PREGUNTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_PREGUNTAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_PREGUNTAS
   PROP�SITO:  Contiene las preguntas del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        28/02/2013    NSS                1. Creaci�n del objeto.
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --N�mero Siniestro
   cpregun        NUMBER,   --C�digo pregunta
   tpregun        VARCHAR2(200),   --Descripcion pregunta
   ctippre        NUMBER,   --Tipo pregunta (detvalores.cvalor = 78)
   cpretip        NUMBER(2),   --Codigp tipo pregunta (V.F.787)
   nbloque        NUMBER,   --Indicador de Bloque
   npreord        NUMBER(3),   --N�mero orden pregunta
   tprefor        VARCHAR2(100),   --Funci�n calculo respuesta
   timagen        VARCHAR2(30),   --Nombre del fichero
   trespuestas    t_iax_sin_respuestas,   -- Respuestas
   CONSTRUCTOR FUNCTION ob_iax_sin_preguntas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_PREGUNTAS" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_preguntas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.cpregun := NULL;
      SELF.tpregun := NULL;
      SELF.ctippre := NULL;
      SELF.cpretip := NULL;
      SELF.nbloque := NULL;
      SELF.npreord := NULL;
      SELF.tprefor := NULL;
      SELF.timagen := NULL;
      SELF.trespuestas := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_PREGUNTAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_PREGUNTAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_PREGUNTAS" TO "PROGRAMADORESCSI";
