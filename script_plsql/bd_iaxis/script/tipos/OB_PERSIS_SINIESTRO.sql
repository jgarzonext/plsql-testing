--------------------------------------------------------
--  DDL for Type OB_PERSIS_SINIESTRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_PERSIS_SINIESTRO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_PERSIS_siniestro
   PROPÓSITO:  Contiene la información del detalle de siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        21/11/2011   JLB              1. Creación del objeto.
******************************************************************************/
(
   vgobsiniestro  ob_iax_siniestros,
   vproductos     t_iax_info,
   CONSTRUCTOR FUNCTION ob_persis_siniestro
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_PERSIS_SINIESTRO" AS
   CONSTRUCTOR FUNCTION ob_persis_siniestro
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.vgobsiniestro := ob_iax_siniestros();
      SELF.vproductos := t_iax_info();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_PERSIS_SINIESTRO" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_SINIESTRO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_SINIESTRO" TO "R_AXIS";
