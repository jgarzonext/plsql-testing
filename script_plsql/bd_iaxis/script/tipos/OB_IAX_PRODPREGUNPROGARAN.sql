--------------------------------------------------------
--  DDL for Type OB_IAX_PRODPREGUNPROGARAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODPREGUNPROGARAN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODPREGUNPROGARAN
   PROPÓSITO:  Contiene información de las preguntas de garantia

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(
   cpregun        NUMBER,   -- Código de la pregunta
   tpregun        VARCHAR2(300),   -- Descripción greunta
   npreord        NUMBER,   -- Orden para preguntarla
   cpretip        NUMBER,   -- Respuesta manual, automática,...
   tpretip        VARCHAR2(100),   -- Descripción respuesta
   cpreobl        NUMBER,   -- Si es obligatoria u opcional
   tpreobl        VARCHAR2(100),   -- Descripcion si es obligatoria u opcional
   tprefor        VARCHAR2(100),   -- Fórmula para cálculo respuesta
   tvalfor        VARCHAR2(100),   -- Valor de la formula
   cresdef        NUMBER,   -- Respuesta por defecto
   tresdef        VARCHAR2(100),   -- Descripción respuesta por defecto
   cofersn        NUMBER,   -- Aparece en Ofertas: 0-No 1-Si
   npreimp        NUMBER,   -- Orden de impresión (sólo imprimirla si tiene)
   -- Bug 25441 - 11/01/2012 - JLV
   cesccero       NUMBER,   -- Certificado cero
   cvisiblecol    NUMBER,   -- Visible colectivos
   cvisiblecert   NUMBER,   -- Visible certificados
   cvisible       NUMBER,   -- Pregunta visible
   cmodo          VARCHAR2(1),   -- Modo
   -- Fi Bug 25441 - 11/01/2012 - JLV
   CONSTRUCTOR FUNCTION ob_iax_prodpregunprogaran
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODPREGUNPROGARAN" AS
   CONSTRUCTOR FUNCTION ob_iax_prodpregunprogaran
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cpregun := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPREGUNPROGARAN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPREGUNPROGARAN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPREGUNPROGARAN" TO "PROGRAMADORESCSI";
