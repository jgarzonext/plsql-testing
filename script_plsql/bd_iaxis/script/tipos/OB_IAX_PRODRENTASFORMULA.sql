--------------------------------------------------------
--  DDL for Type OB_IAX_PRODRENTASFORMULA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODRENTASFORMULA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODRENTASFORMULA
   PROPÓSITO:  Contiene información de los productos rentas
                formulas

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(

    CCAMPO VARCHAR2(8),     -- Código de campo (codcampo)
    TCAMPO VARCHAR2(50),    -- Descripción campo (codcampo)
    CLAVE NUMBER,           -- Código formula
    FORMULA VARCHAR2(500),  -- Descripción formula

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
