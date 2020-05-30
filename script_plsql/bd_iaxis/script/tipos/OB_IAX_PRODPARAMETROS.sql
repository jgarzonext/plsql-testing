--------------------------------------------------------
--  DDL for Type OB_IAX_PRODPARAMETROS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODPARAMETROS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODPARAMETROS
   PROPÓSITO:  Contiene información de las parámetros de producto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creación del objeto.
   1.1        15/04/2009   ICV                2. Bug.: 9664 Ampliación del campo TPARAME.
   1.2        30/06/2014   dlF                3. Bug.: 31999: AGM - Taller de Productos - Incidencias del taller de productos (TESTING)
******************************************************************************/
(
   cparame        VARCHAR2(50),       -- Código parámetro
   tparame        VARCHAR2(200),      -- Descripción parámetro
   ctippar        NUMBER(4),          -- Tipo parámetro
   tvalpar        VARCHAR2(100),      -- Valor texto del parámetro
   nvalpar        NUMBER(8),          -- Valor numerico del parámetro
   dvalpar        VARCHAR2(250),      -- Descripción del valor numerico del parámetro al tratarse de un valor de código tabla
   fvalpar        DATE ,              -- Valor fecha del parámetro
   CONSTRUCTOR FUNCTION ob_iax_prodparametros
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODPARAMETROS" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODPARAMETROS RETURN SELF AS RESULT IS
    BEGIN
            SELF.CPARAME := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPARAMETROS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPARAMETROS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPARAMETROS" TO "PROGRAMADORESCSI";
