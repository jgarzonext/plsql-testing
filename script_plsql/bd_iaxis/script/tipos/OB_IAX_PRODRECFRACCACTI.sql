--------------------------------------------------------
--  DDL for Type OB_IAX_PRODRECFRACCACTI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODRECFRACCACTI" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODRECFRACCACTI
   PROPÓSITO:  Contiene información de las actividades del producto
                recargo fraccionamiento

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(

    CFORPAG NUMBER,         -- Código forma pago
    TFORPAG VARCHAR2(50),   -- Descripción forma de pago
    PRECARG NUMBER,         -- Recargo fraccionamiento

    CONSTRUCTOR FUNCTION OB_IAX_PRODRECFRACCACTI RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODRECFRACCACTI" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODRECFRACCACTI RETURN SELF AS RESULT IS
    BEGIN
            SELF.CFORPAG := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODRECFRACCACTI" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODRECFRACCACTI" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODRECFRACCACTI" TO "PROGRAMADORESCSI";
