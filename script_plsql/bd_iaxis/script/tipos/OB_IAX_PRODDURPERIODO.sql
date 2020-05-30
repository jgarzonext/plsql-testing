--------------------------------------------------------
--  DDL for Type OB_IAX_PRODDURPERIODO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODDURPERIODO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODDURPERIODO
   PROPÓSITO:  Contiene información de las duraciones del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(

    NDURPER NUMBER,  -- Duración periodo interés garantizado (en años)
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
