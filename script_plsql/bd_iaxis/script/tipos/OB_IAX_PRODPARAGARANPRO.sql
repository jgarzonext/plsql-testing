--------------------------------------------------------
--  DDL for Type OB_IAX_PRODPARAGARANPRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODPARAGARANPRO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODPARACTIVIDAD
   PROPÓSITO:  Contiene información de las actividades del producto
                parámetros de actividad

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(
   cparame        VARCHAR2(200),   -- Código parámetro
   tparame        VARCHAR2(200),   -- Descripción parámetro
   ctippar        NUMBER,   -- Tipo parámetro
   tvalpar        VARCHAR2(200),   -- Valor texto del parámetro
   nvalpar        NUMBER,   -- Valor numerico del parámetro
   dvalpar        VARCHAR2(200),   -- Descripción del valor numerico del parámetro al tratarse de un valor de código tabla
   fvalpar        DATE,   -- Valor fecha del parámetro
   vvalpar        VARCHAR2(250),      -- Valor final del parámetro
   CONSTRUCTOR FUNCTION ob_iax_prodparagaranpro
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODPARAGARANPRO" AS
   CONSTRUCTOR FUNCTION ob_iax_prodparagaranpro
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cparame := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPARAGARANPRO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPARAGARANPRO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPARAGARANPRO" TO "PROGRAMADORESCSI";
