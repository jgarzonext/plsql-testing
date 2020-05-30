--------------------------------------------------------
--  DDL for Type OB_IAX_PRODDURPERIODO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODDURPERIODO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODDURPERIODO
   PROP�SITO:  Contiene informaci�n de las duraciones del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(

    NDURPER NUMBER,  -- Duraci�n periodo inter�s garantizado (en a�os)
    FFIN    DATE,	 -- Fecha de fin de vigor	No
    FINICIO	DATE,	 -- Fecha de entrada en vigor	No


    CONSTRUCTOR FUNCTION OB_IAX_PRODDURPERIODO RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODDURPERIODO" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODDURPERIODO RETURN SELF AS RESULT IS
    BEGIN
    		SELF.NDURPER := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODDURPERIODO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODDURPERIODO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODDURPERIODO" TO "PROGRAMADORESCSI";
