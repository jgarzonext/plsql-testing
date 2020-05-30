--------------------------------------------------------
--  DDL for Type OB_IAX_MSGVARIABLES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_MSGVARIABLES" AS OBJECT
/******************************************************************************
   NAME:       OB_IAX_MSGVARIABLES
   PURPOSE:  Descripciones a subtituir en mensajes de error

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        21/09/2007   ACC              1. Created this type.
******************************************************************************/
(
    tipo NUMBER,           -- 1 Varchar  2 Código literal
    desvar VARCHAR2(100),  -- Descripción del parametro a substituir en el mensaje

    CONSTRUCTOR FUNCTION OB_IAX_MSGVARIABLES RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_MSGVARIABLES" AS

    CONSTRUCTOR FUNCTION OB_IAX_MSGVARIABLES RETURN SELF AS RESULT IS
    BEGIN
        SELF.tipo :=1;
        SELF.desvar := null;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_MSGVARIABLES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MSGVARIABLES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MSGVARIABLES" TO "PROGRAMADORESCSI";
