--------------------------------------------------------
--  DDL for Type OB_IAXPAR_FRANQUICIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAXPAR_FRANQUICIAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAXPAR_FRANQUICIAS
   PROP�SITO:  Contiene la informaci�n de las garantias franquicias

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2007   ACC                1. Creaci�n del objeto.
******************************************************************************/
(
    cfranq NUMBER,

    CONSTRUCTOR FUNCTION OB_IAXPAR_FRANQUICIAS RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAXPAR_FRANQUICIAS" AS

    CONSTRUCTOR FUNCTION OB_IAXPAR_FRANQUICIAS RETURN SELF AS RESULT IS
    BEGIN
        SELF.cfranq := 0;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_FRANQUICIAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_FRANQUICIAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_FRANQUICIAS" TO "PROGRAMADORESCSI";
