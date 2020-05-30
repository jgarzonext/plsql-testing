--------------------------------------------------------
--  DDL for Type OB_IAX_PRODGARFORMULAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODGARFORMULAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODFORMULAS
   PROP�SITO:  Contiene informaci�n de las formulas

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(

    CUTILI NUMBER,          -- Se utiliza
    CCAMPO VARCHAR2(8),     -- Codigo de Campo
    TCAMPO VARCHAR2(50),    -- Descripci�n Campo
    CLAVE  NUMBER,          -- Codigo de la formula
    FORMULA VARCHAR2(100),  -- Descripci�n formula

  CONSTRUCTOR FUNCTION OB_IAX_PRODGARFORMULAS RETURN SELF AS RESULT


);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODGARFORMULAS" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODGARFORMULAS RETURN SELF AS RESULT IS
    BEGIN
            SELF.CUTILI := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARFORMULAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARFORMULAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARFORMULAS" TO "PROGRAMADORESCSI";
