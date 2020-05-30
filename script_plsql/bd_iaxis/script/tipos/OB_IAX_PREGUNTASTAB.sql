--------------------------------------------------------
--  DDL for Type OB_IAX_PREGUNTASTAB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PREGUNTASTAB" AS OBJECT
/******************************************************************************
   NOMBRE:       ob_iax_preguntastab
   PROPÓSITO:  Contiene la información de las preguntes del riesgo o garantía

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/05/2012   XPL                1. Creación del objeto.
******************************************************************************/
(
   cpregun        NUMBER(9),
   nmovimi        NUMBER(9),
   nlinea         NUMBER(9),
   tcolumnas      t_iax_preguntastab_columns,
   CONSTRUCTOR FUNCTION ob_iax_preguntastab
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PREGUNTASTAB" AS
   CONSTRUCTOR FUNCTION ob_iax_preguntastab
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PREGUNTASTAB" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PREGUNTASTAB" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PREGUNTASTAB" TO "PROGRAMADORESCSI";
