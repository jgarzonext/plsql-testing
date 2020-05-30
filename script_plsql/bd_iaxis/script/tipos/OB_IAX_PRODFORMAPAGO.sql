--------------------------------------------------------
--  DDL for Type OB_IAX_PRODFORMAPAGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODFORMAPAGO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODFORMAPAGO
   PROP�SITO:  Contiene informaci�n de la formas de pago del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(

    CFORPAG NUMBER,         -- Forma de pago
    TFORPAG VARCHAR2(100),  -- Descripci�n forma de pago
    COBLIGA NUMBER,         -- Indica si la forma de pago es seleccionada
    PRECARG NUMBER,         -- Valor que se obtiene de FORPAGRECPROD
    CPAGDEF NUMBER,         -- Forma de pago defecto
    CREVFPG NUMBER,         -- Indica si la forma pago es �nica si la p�liza se debe renovar

    CONSTRUCTOR FUNCTION OB_IAX_PRODFORMAPAGO RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODFORMAPAGO" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODFORMAPAGO RETURN SELF AS RESULT IS
    BEGIN
    		SELF.CFORPAG := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODFORMAPAGO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODFORMAPAGO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODFORMAPAGO" TO "PROGRAMADORESCSI";
