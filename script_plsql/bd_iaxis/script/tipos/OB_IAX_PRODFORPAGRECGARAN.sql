--------------------------------------------------------
--  DDL for Type OB_IAX_PRODFORPAGRECGARAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODFORPAGRECGARAN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODFORPAGRECGARAN
   PROP�SITO:  Contiene informaci�n de las garantias del producto
                formas de pago recargo

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(

    CFORPAG NUMBER,         -- C�digo forma pago
    TFORPAG VARCHAR2(50),   -- Descripci�n forma de pago
    PRECARG NUMBER,         -- Pocentaje de recargo

  CONSTRUCTOR FUNCTION OB_IAX_PRODFORPAGRECGARAN RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODFORPAGRECGARAN" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODFORPAGRECGARAN RETURN SELF AS RESULT IS
    BEGIN
            SELF.CFORPAG := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODFORPAGRECGARAN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODFORPAGRECGARAN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODFORPAGRECGARAN" TO "PROGRAMADORESCSI";
