--------------------------------------------------------
--  DDL for Type OB_IAX_PRODPREGUNACTI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODPREGUNACTI" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODPREGUNACTI
   PROP�SITO:  Contiene informaci�n de las actividades del producto
                par�metros de actividad

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creaci�n del objeto.
   1.1        06/03/2009   FAL               2. BUG 0005548: Afegir el camp NORDEN
******************************************************************************/
(
   cpregun        NUMBER,   -- C�digo pregunta
   tpregun        VARCHAR2(300),   -- Descripci�n pregunta
   cpretip        NUMBER,   -- Tipo respuesta manual, autom�tica
   tpretip        VARCHAR2(50),   -- Descripci�n tipo respuesta
   cpreobl        NUMBER,   -- Pregunta obligatoria
   tprefor        VARCHAR2(100),   -- Formula calculo respuesta
   tvalfor        VARCHAR2(100),   -- F�rmula para validaci�n respuesta
   cresdef        NUMBER,   -- Respuesta por defecto
   tresdef        VARCHAR2(100),   -- Descripci�n respuesta por defecto
   cofersn        NUMBER,   -- Aparece en Ofertas
   npreimp        NUMBER,   -- Orden de impresi�n (s�lo imprimirla si tiene)
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
