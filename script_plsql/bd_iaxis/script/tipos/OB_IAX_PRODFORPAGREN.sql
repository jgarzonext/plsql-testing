--------------------------------------------------------
--  DDL for Type OB_IAX_PRODFORPAGREN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODFORPAGREN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODFORPAGREN
   PROP�SITO:  Contiene informaci�n de los productos rentas
                forma pago

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(

    CFORPAG NUMBER,         -- C�digo forma pago
    TFORPAG VARCHAR2(50),   -- Descripci�n forma de pago
    COBLIGA NUMBER,         -- Indica si se ha seleccionado


    CONSTRUCTOR FUNCTION OB_IAX_PRODFORPAGREN RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODFORPAGREN" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODFORPAGREN RETURN SELF AS RESULT IS
    BEGIN
            SELF.CFORPAG := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODFORPAGREN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODFORPAGREN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODFORPAGREN" TO "PROGRAMADORESCSI";
