--------------------------------------------------------
--  DDL for Type OB_IAXPAR_ACTIVIDADES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAXPAR_ACTIVIDADES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAXPAR_ACTIVIDADES
   PROP�SITO:  Contiene la informaci�n de las actividades

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2007   ACC                1. Creaci�n del objeto.
******************************************************************************/
(
   cactivi        NUMBER,   --C�digo actividad seguro
   tactivi        VARCHAR2(240),   --Descripci�n actividad asociada a la empresa asegurada
   garantias      t_iaxpar_garantias,   --Garantias actividad
   CONSTRUCTOR FUNCTION ob_iaxpar_actividades
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAXPAR_ACTIVIDADES" AS

    CONSTRUCTOR FUNCTION OB_IAXPAR_ACTIVIDADES RETURN SELF AS RESULT IS
    BEGIN
        SELF.cactivi     := 0;
        SELF.tactivi     := null;
        SELF.garantias   := null;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_ACTIVIDADES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_ACTIVIDADES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_ACTIVIDADES" TO "PROGRAMADORESCSI";
