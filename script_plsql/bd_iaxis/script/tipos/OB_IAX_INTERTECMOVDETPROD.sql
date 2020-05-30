--------------------------------------------------------
--  DDL for Type OB_IAX_INTERTECMOVDETPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INTERTECMOVDETPROD" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_INTERTECMOVDETPROD
   PROPÓSITO:  Contiene los tramos de intereses por producto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/05/2008   AMC                1. Creación del objeto.
******************************************************************************/
(
   ndesde         NUMBER,   --NUMBER (13,2),   --Importe/Edad desde
   nhasta         NUMBER,   --NUMBER (13,2),   --Importe/Edad Hasta
   ninttec        NUMBER(7, 2),   --Porcentaje
   CONSTRUCTOR FUNCTION ob_iax_intertecmovdetprod
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INTERTECMOVDETPROD" AS
   CONSTRUCTOR FUNCTION ob_iax_intertecmovdetprod
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ndesde := 0;
      SELF.nhasta := 0;
      SELF.ninttec := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERTECMOVDETPROD" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERTECMOVDETPROD" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERTECMOVDETPROD" TO "PROGRAMADORESCSI";
