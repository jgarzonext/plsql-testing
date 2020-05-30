--------------------------------------------------------
--  DDL for Type OB_PERSIS_DESCUENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_PERSIS_DESCUENTO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_PERSIS_suplemento
   PROPÓSITO:  Contiene la información del detalle de suplemento

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   JRB              1. Creación del objeto.
******************************************************************************/
(
   t_descuento    t_iax_detdescuento,
   CONSTRUCTOR FUNCTION ob_persis_descuento
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_PERSIS_DESCUENTO" AS
   CONSTRUCTOR FUNCTION ob_persis_descuento
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.t_descuento := t_iax_detdescuento();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_PERSIS_DESCUENTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_DESCUENTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_DESCUENTO" TO "PROGRAMADORESCSI";
