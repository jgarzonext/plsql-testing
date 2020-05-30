--------------------------------------------------------
--  DDL for Type OB_IAX_PRODUCTOSULK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODUCTOSULK" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODUCTOSULK
   PROP�SITO:  Contiene informaci�n de los productos unit linked

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(
    NDIARIA NUMBER, -- D�as entre redistribuci�n
    CPROVAL NUMBER, -- Proponer valores liquidativos
    MODELOSINV T_IAX_PRODULKMODELOSINV, -- Modelos de inversi�n


    CONSTRUCTOR FUNCTION OB_IAX_PRODUCTOSULK RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODUCTOSULK" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODUCTOSULK RETURN SELF AS RESULT IS
    BEGIN
    		SELF.NDIARIA := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODUCTOSULK" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODUCTOSULK" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODUCTOSULK" TO "PROGRAMADORESCSI";
