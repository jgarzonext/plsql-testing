--------------------------------------------------------
--  DDL for Type OB_IAX_PRODPARACTIVIDAD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODPARACTIVIDAD" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODPARACTIVIDAD
   PROP�SITO:  Contiene informaci�n de las actividades del producto
                par�metros de actividad

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(

    CPARAME VARCHAR2(50),   -- C�digo par�metro
    TPARAME VARCHAR2(50),   -- Descripci�n par�metro
    CTIPPAR NUMBER,         -- Tipo par�metro
    TVALPAR VARCHAR2(100),  -- Valor texto del par�metro
    NVALPAR NUMBER,         -- Valor numerico del par�metro
    DVALPAR VARCHAR2(100),  -- Descripci�n del valor numerico del par�metro al tratarse de un valor de c�digo tabla
    FVALPAR DATE,           -- Valor fecha del par�metro

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
