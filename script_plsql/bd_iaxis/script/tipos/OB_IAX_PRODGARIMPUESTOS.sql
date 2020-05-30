--------------------------------------------------------
--  DDL for Type OB_IAX_PRODGARIMPUESTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODGARIMPUESTOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODGARIMPUESTOS
   PROPÓSITO:  Contiene información de las garantias del producto
                formas de pago recargo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(

    CIMPCON NUMBER,   -- Se aplica el consorcio
    CIMPDGS NUMBER,   -- Se aplica la DGS
    CIMPIPS NUMBER,   -- Se aplica el IPS
    CIMPARB NUMBER,   -- Se calcula arbitrios
    CIMPFNG NUMBER,   -- Se aplica FNG


  CONSTRUCTOR FUNCTION OB_IAX_PRODGARIMPUESTOS RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODGARIMPUESTOS" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODGARIMPUESTOS RETURN SELF AS RESULT IS
    BEGIN
            SELF.CIMPCON := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARIMPUESTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARIMPUESTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARIMPUESTOS" TO "PROGRAMADORESCSI";
