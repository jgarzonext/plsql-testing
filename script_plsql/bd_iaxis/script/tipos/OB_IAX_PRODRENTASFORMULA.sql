--------------------------------------------------------
--  DDL for Type OB_IAX_PRODRENTASFORMULA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODRENTASFORMULA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODRENTASFORMULA
   PROP�SITO:  Contiene informaci�n de los productos rentas
                formulas

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(

    CCAMPO VARCHAR2(8),     -- C�digo de campo (codcampo)
    TCAMPO VARCHAR2(50),    -- Descripci�n campo (codcampo)
    CLAVE NUMBER,           -- C�digo formula
    FORMULA VARCHAR2(500),  -- Descripci�n formula

    CONSTRUCTOR FUNCTION OB_IAX_PRODRENTASFORMULA RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODRENTASFORMULA" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODRENTASFORMULA RETURN SELF AS RESULT IS
    BEGIN
            SELF.CCAMPO := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODRENTASFORMULA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODRENTASFORMULA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODRENTASFORMULA" TO "PROGRAMADORESCSI";
