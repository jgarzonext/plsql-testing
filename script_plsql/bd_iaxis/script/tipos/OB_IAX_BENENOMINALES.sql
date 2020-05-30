--------------------------------------------------------
--  DDL for Type OB_IAX_BENENOMINALES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BENENOMINALES" UNDER OB_IAX_PERSONAS
/******************************************************************************
/******************************************************************************
   NOMBRE:       OB_DET_BENENOMINALES
   PROPÓSITO:  Contiene información de los beneficiarios nominales

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        28/09/2007   ACC                1. Creación del objeto.
******************************************************************************/
(
    porcentage NUMBER(3,2),

    CONSTRUCTOR FUNCTION OB_IAX_BENENOMINALES RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BENENOMINALES" AS

    CONSTRUCTOR FUNCTION OB_IAX_BENENOMINALES RETURN SELF AS RESULT IS
    BEGIN
        SELF.porcentage :=0;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BENENOMINALES" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BENENOMINALES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BENENOMINALES" TO "R_AXIS";
