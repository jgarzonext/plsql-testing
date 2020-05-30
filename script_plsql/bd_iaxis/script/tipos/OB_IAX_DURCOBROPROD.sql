--------------------------------------------------------
--  DDL for Type OB_IAX_DURCOBROPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DURCOBROPROD" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_DURCOBROPROD
   PROPOSITO:     Duración del cobro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        11/05/2012   MDS              1. Creación del objeto.
******************************************************************************/
(
   ndurcob        NUMBER(2),
   CONSTRUCTOR FUNCTION ob_iax_durcobroprod
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DURCOBROPROD" AS
   CONSTRUCTOR FUNCTION ob_iax_durcobroprod
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ndurcob := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DURCOBROPROD" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DURCOBROPROD" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DURCOBROPROD" TO "PROGRAMADORESCSI";
