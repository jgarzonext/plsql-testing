--------------------------------------------------------
--  DDL for Type OB_IAXPAR_INCOMPGARAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAXPAR_INCOMPGARAN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAXPAR_INCOMPGARAN
   PROPÓSITO:  Contiene la información de las garantias incompatibles

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2007   ACC                1. Creación del objeto.
******************************************************************************/
(
    cgarant NUMBER,
    cgarinc NUMBER,

    CONSTRUCTOR FUNCTION OB_IAXPAR_INCOMPGARAN RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAXPAR_INCOMPGARAN" AS

    CONSTRUCTOR FUNCTION OB_IAXPAR_INCOMPGARAN RETURN SELF AS RESULT IS
    BEGIN
        SELF.cgarant := 0;
        SELF.cgarinc := 0 ;
        RETURN;
    END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_INCOMPGARAN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_INCOMPGARAN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_INCOMPGARAN" TO "PROGRAMADORESCSI";
