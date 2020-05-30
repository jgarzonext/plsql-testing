--------------------------------------------------------
--  DDL for Type OB_PERSIS_COMISION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_PERSIS_COMISION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_PERSIS_suplemento
   PROPÓSITO:  Contiene la información del detalle de suplemento

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   JLB              1. Creación del objeto.
******************************************************************************/
(
   t_comision     t_iax_detcomision,
   CONSTRUCTOR FUNCTION ob_persis_comision
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_PERSIS_COMISION" AS
   CONSTRUCTOR FUNCTION ob_persis_comision
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.t_comision := t_iax_detcomision();   --Codigo producto
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_PERSIS_COMISION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_COMISION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_COMISION" TO "PROGRAMADORESCSI";
