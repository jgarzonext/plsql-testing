--------------------------------------------------------
--  DDL for Type OB_IAX_PRODPREGUNTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODPREGUNTAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODPREGUNTAS
   PROPÓSITO:  Contiene información de las preguntas de producto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creación del objeto.
   2.0        16/04/2010   AMC                2. Se añaden nuevos campos bug 13953
   3.0        16/07/2010   PFA                3. 15433: Anadir nuevo campo TNIVEL
******************************************************************************/
(
   cpregun        NUMBER,   -- Código de la pregunta
   tpregun        VARCHAR2(300),   -- Descripción greunta
   npreord        NUMBER,   -- Orden para preguntarla
   cpretip        NUMBER,   -- Respuesta manual, automática,...
   tpretip        VARCHAR2(100),   -- Descripción respuesta
   cpreobl        NUMBER,   -- Si es obligatoria u opcional
   tpreobl        VARCHAR2(100),   -- Descripción obligaroria
   tprefor        VARCHAR2(100),   -- Fórmula para cálculo respuesta
   tvalfor        VARCHAR2(100),   -- Valor de la formula
   cresdef        NUMBER,   -- Respuesta por defecto
   tresdef        VARCHAR2(100),   -- Descripción respuestas por defecto
   cofersn        NUMBER,   -- Aparece en Ofertas: 0-No 1-Si
   npreimp        NUMBER,   -- Orden de impresión (sólo imprimirla si tiene)
   -- Bug 13953 - 16/04/2010 - AMC
   ctabla         NUMBER,
   cmodo          NUMBER,   -- Modo: T todos, S suplementos ,N nueva producción, valor fijo 1008
   cnivel         NUMBER,   -- Nivel: 'P' pregunta a nivell de póliza - 'R' pregunta a nivel de riesgo valor fijo 1007
   ctarpol        NUMBER,   -- Indica si el cambio del valor requiere que se retarifique la póliza. 0 -> No / 1 -> Sí
   cvisible       NUMBER,   -- Pregunta Visible 0-No 1-Si
   -- Fi Bug 13953 - 16/04/2010 - AMC
   tnivel         VARCHAR2(100),   -- Bug 15433: Anadir nuevo campo TNIVEL
   -- Bug 25441 - 11/01/2012 - JLV
   cesccero       NUMBER,   -- Certificado cero
   cvisiblecol    NUMBER,   -- Visible colectivos
   cvisiblecert   NUMBER,   -- Visible certificados
   crecarg        NUMBER,   -- Recarga de preguntas
   -- Fi Bug 25441 - 11/01/2012 - JLV
   CONSTRUCTOR FUNCTION ob_iax_prodpreguntas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODPREGUNTAS" AS
   CONSTRUCTOR FUNCTION ob_iax_prodpreguntas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cpregun := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPREGUNTAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPREGUNTAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPREGUNTAS" TO "PROGRAMADORESCSI";
