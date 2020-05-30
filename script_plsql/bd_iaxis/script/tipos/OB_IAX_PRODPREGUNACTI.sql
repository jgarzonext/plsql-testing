--------------------------------------------------------
--  DDL for Type OB_IAX_PRODPREGUNACTI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODPREGUNACTI" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODPREGUNACTI
   PROPÓSITO:  Contiene información de las actividades del producto
                parámetros de actividad

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creación del objeto.
   1.1        06/03/2009   FAL               2. BUG 0005548: Afegir el camp NORDEN
******************************************************************************/
(
   cpregun        NUMBER,   -- Código pregunta
   tpregun        VARCHAR2(300),   -- Descripción pregunta
   cpretip        NUMBER,   -- Tipo respuesta manual, automática
   tpretip        VARCHAR2(50),   -- Descripción tipo respuesta
   cpreobl        NUMBER,   -- Pregunta obligatoria
   tprefor        VARCHAR2(100),   -- Formula calculo respuesta
   tvalfor        VARCHAR2(100),   -- Fórmula para validación respuesta
   cresdef        NUMBER,   -- Respuesta por defecto
   tresdef        VARCHAR2(100),   -- Descripción respuesta por defecto
   cofersn        NUMBER,   -- Aparece en Ofertas
   npreimp        NUMBER,   -- Orden de impresión (sólo imprimirla si tiene)
   npreord        NUMBER,   -- Orden para preguntarla
   CONSTRUCTOR FUNCTION ob_iax_prodpregunacti
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODPREGUNACTI" AS
   CONSTRUCTOR FUNCTION ob_iax_prodpregunacti
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cpregun := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPREGUNACTI" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPREGUNACTI" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPREGUNACTI" TO "PROGRAMADORESCSI";
