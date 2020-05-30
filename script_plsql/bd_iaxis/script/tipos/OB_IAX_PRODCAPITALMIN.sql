--------------------------------------------------------
--  DDL for Type OB_IAX_PRODCAPITALMIN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODCAPITALMIN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODCAPITALMIN
   PROP�SITO:  Contiene informaci�n de las actividades del producto
                garantias lista de capital minimo segun forma de pago

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(

    CFORPAG NUMBER,         -- Id. de la forma de pagament
    TFORPAG VARCHAR2(100),  -- Descripci�n forma de pago
    ICAPMIN NUMBER,         -- Capital m�nim de conractaci� per garant�a i forma pagaament


    CONSTRUCTOR FUNCTION OB_IAX_PRODCAPITALMIN RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODCAPITALMIN" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODCAPITALMIN RETURN SELF AS RESULT IS
    BEGIN
            SELF.CFORPAG := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODCAPITALMIN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODCAPITALMIN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODCAPITALMIN" TO "PROGRAMADORESCSI";
