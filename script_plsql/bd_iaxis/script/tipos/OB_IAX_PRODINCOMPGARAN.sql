--------------------------------------------------------
--  DDL for Type OB_IAX_PRODINCOMPGARAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODINCOMPGARAN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODINCOMPGARAN
   PROPÓSITO:  Contiene información de las garantias del producto
                garantias incompatibles

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creación del objeto.
   2.0        18/02/2014   DEV                2. 0029920: POSFC100-Taller de Productos
******************************************************************************/
(
   cgarinc        NUMBER,   -- Código de garantía
   tgarinc        VARCHAR2(120),   -- Descripción garantía
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
