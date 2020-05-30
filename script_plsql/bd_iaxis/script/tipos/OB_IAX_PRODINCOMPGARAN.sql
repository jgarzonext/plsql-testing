--------------------------------------------------------
--  DDL for Type OB_IAX_PRODINCOMPGARAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODINCOMPGARAN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODINCOMPGARAN
   PROP�SITO:  Contiene informaci�n de las garantias del producto
                garantias incompatibles

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creaci�n del objeto.
   2.0        18/02/2014   DEV                2. 0029920: POSFC100-Taller de Productos
******************************************************************************/
(
   cgarinc        NUMBER,   -- C�digo de garant�a
   tgarinc        VARCHAR2(120),   -- Descripci�n garant�a
   CONSTRUCTOR FUNCTION ob_iax_prodincompgaran
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODINCOMPGARAN" AS
   CONSTRUCTOR FUNCTION ob_iax_prodincompgaran
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cgarinc := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODINCOMPGARAN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODINCOMPGARAN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODINCOMPGARAN" TO "PROGRAMADORESCSI";
