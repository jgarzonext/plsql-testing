--------------------------------------------------------
--  DDL for Type OB_PERSIS_FINCAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_PERSIS_FINCAS" AS OBJECT
/******************************************************************************
   NOMBRE:       ob_persis_direcciones
   PROPÓSITO:  Contiene la información de direcciones

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/04/2012  AMC              1. Creación del objeto.
******************************************************************************/
(
   t_fincas       t_iax_dir_fincas,
   CONSTRUCTOR FUNCTION ob_persis_fincas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_PERSIS_FINCAS" AS
   CONSTRUCTOR FUNCTION ob_persis_fincas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.t_fincas := t_iax_dir_fincas();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_PERSIS_FINCAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_FINCAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_FINCAS" TO "PROGRAMADORESCSI";
