--------------------------------------------------------
--  DDL for Type OB_IAX_PRODFORPAGREN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODFORPAGREN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODFORPAGREN
   PROPÓSITO:  Contiene información de los productos rentas
                forma pago

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(

    CFORPAG NUMBER,         -- Código forma pago
    TFORPAG VARCHAR2(50),   -- Descripción forma de pago
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
