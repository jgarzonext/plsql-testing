--------------------------------------------------------
--  DDL for Type OB_IAX_PRODBENEFICIARIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODBENEFICIARIOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODBENEFICIARIOS
   PROPÓSITO:  Contiene información de los beneficiarios

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(

    NORDEN  NUMBER,         -- Indica orden clausula
    SCLABEN NUMBER,         -- código clausula
    TCLABEN VARCHAR2(600),  -- Texto clausula
    COBLIGA NUMBER,         -- Indica si esta seleccionada
    CDEFECTO NUMBER,        -- La que esté marcada con CDEFECTO = 1 quiere decir que se grabará en PRODUCTOS.SCLABEN


   CONSTRUCTOR FUNCTION OB_IAX_PRODBENEFICIARIOS RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODBENEFICIARIOS" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODBENEFICIARIOS RETURN SELF AS RESULT IS
    BEGIN
            SELF.NORDEN := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODBENEFICIARIOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODBENEFICIARIOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODBENEFICIARIOS" TO "PROGRAMADORESCSI";
