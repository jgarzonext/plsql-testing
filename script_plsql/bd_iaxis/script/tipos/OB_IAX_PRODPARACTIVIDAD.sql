--------------------------------------------------------
--  DDL for Type OB_IAX_PRODPARACTIVIDAD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODPARACTIVIDAD" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODPARACTIVIDAD
   PROPÓSITO:  Contiene información de las actividades del producto
                parámetros de actividad

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(

    CPARAME VARCHAR2(50),   -- Código parámetro
    TPARAME VARCHAR2(50),   -- Descripción parámetro
    CTIPPAR NUMBER,         -- Tipo parámetro
    TVALPAR VARCHAR2(100),  -- Valor texto del parámetro
    NVALPAR NUMBER,         -- Valor numerico del parámetro
    DVALPAR VARCHAR2(100),  -- Descripción del valor numerico del parámetro al tratarse de un valor de código tabla
    FVALPAR DATE,           -- Valor fecha del parámetro

    CONSTRUCTOR FUNCTION OB_IAX_PRODPARACTIVIDAD RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODPARACTIVIDAD" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODPARACTIVIDAD RETURN SELF AS RESULT IS
    BEGIN
            SELF.CPARAME := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPARACTIVIDAD" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPARACTIVIDAD" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPARACTIVIDAD" TO "PROGRAMADORESCSI";
