--------------------------------------------------------
--  DDL for Type OB_PERSIS_FACTURAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_PERSIS_FACTURAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_PERSIS_FACTURAS
   PROPÿSITO:  Contiene la informacion de facturas

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/06/2012   APD              1. Creacion del objeto.
******************************************************************************/
(
   vgobfactura    ob_iax_facturas,
   CONSTRUCTOR FUNCTION ob_persis_facturas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_PERSIS_FACTURAS" AS
   CONSTRUCTOR FUNCTION ob_persis_facturas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.vgobfactura := ob_iax_facturas();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_PERSIS_FACTURAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_FACTURAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_FACTURAS" TO "PROGRAMADORESCSI";
