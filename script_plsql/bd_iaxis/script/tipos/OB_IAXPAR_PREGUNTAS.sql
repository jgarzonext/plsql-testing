--------------------------------------------------------
--  DDL for Type OB_IAXPAR_PREGUNTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAXPAR_PREGUNTAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAXPAR_PREGUNTAS
   PROPÓSITO:  Contiene la información de las preguntas

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2007   ACC                1. Creación del objeto.
   2.0        16/02/2009   SBG                2. S'afegeix CTIPGRU (Bug 6296)
******************************************************************************/
(
   ctippre        NUMBER,   --  Tipo de pregunta (detvalores.cvalor = 78)
   cpregun        NUMBER,   --  Código de la pregunta
   cpretip        NUMBER,   --  Respuesta manual, automática,... [valores.cvalor = 787]
   tpregun        VARCHAR2(300),   --  Descripción de la pregunta
   npreord        NUMBER,   --  Orden para preguntarla
   tprefor        VARCHAR2(100),   --  Formula calculo respuesta
   cpreobl        NUMBER,   --  Pregunta obligatoria
   cresdef        NUMBER,   --  Respuesta por defecto
   cofersn        NUMBER,   --  Aparece en Ofertas: 0-No 1-Si
   tvalfor        VARCHAR2(100),   --  Fórmula para validación respuesta
   ctabla         NUMBER,   --  código de tabla
   cmodo          VARCHAR2(1),   --  Modo : T todos, S suplementos ,N nueva producción
   crestip        NUMBER(1),   --  1 la respuesta es desplegable - 0 es texto libre
   ctipgru        NUMBER(2),   --  Tipo de grupo de preguntas (detvalores.cvalor = 309)
   respuestas     t_iaxpar_respuestas,   --  Tabla de respuestas a la pregunta
   cvisible       NUMBER(1),   -- Pregunta Visible 0-No 1-Visible en Consulta, 2-Visible sempre BUG: 19504
   esccero        NUMBER(1),   -- Bug 22839 - RSC - 17/07/2012 - Funcionalidad Certificado 0
   crecarg        NUMBER(1),   -- Recarga a partir de preguntas
   isaltac        NUMBER(1),   -- Recarga a partir de preguntas
   ccalcular      NUMBER(2),   --27858#c167834, JDS, 20-03-2014
   tmodalidad     NUMBER,   --27858#c167834, JDS, 20-03-2014
   CONSTRUCTOR FUNCTION ob_iaxpar_preguntas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAXPAR_PREGUNTAS" AS
/******************************************************************************
   NOMBRE:       OB_IAXPAR_PREGUNTAS
   PROPÓSITO:  Contiene la información de las preguntas

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2007   ACC                1. Creación del objeto.
   2.0        16/02/2009   SBG                2. S'afegeix CTIPGRU (Bug 6296)
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iaxpar_preguntas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ctippre := NULL;
      SELF.cpretip := 0;
      SELF.tpregun := NULL;
      SELF.npreord := 0;
      SELF.tprefor := NULL;
      SELF.cpreobl := 0;
      SELF.cresdef := 0;
      SELF.cofersn := 0;
      SELF.tvalfor := NULL;
      SELF.cmodo := 'T';
      SELF.crestip := 1;
      SELF.respuestas := NULL;
      SELF.cvisible := NULL;   --19504
      SELF.esccero := 0;   --19504
      SELF.crecarg := 0;
      SELF.isaltac := 0;
      SELF.ccalcular := NULL;   --27858#c167834, JDS, 20-03-2014
      SELF.tmodalidad := NULL;   --27858#c167834, JDS, 20-03-2014
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_PREGUNTAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_PREGUNTAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_PREGUNTAS" TO "PROGRAMADORESCSI";
