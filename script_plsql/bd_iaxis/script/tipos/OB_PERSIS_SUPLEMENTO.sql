--------------------------------------------------------
--  DDL for Type OB_PERSIS_SUPLEMENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_PERSIS_SUPLEMENTO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_PERSIS_suplemento
   PROPÓSITO:  Contiene la información del detalle de suplemento

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   JLB              1. Creación del objeto.
******************************************************************************/
(
   -- BOOLEAN,  -- := FALSE   -- Indica si es alta de colectivo (alta del certificado 0)
   lstmotmov      t_iax_motmovsuple,
   ispendentemetre NUMBER,
   CONSTRUCTOR FUNCTION ob_persis_suplemento
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_PERSIS_SUPLEMENTO" AS
   CONSTRUCTOR FUNCTION ob_persis_suplemento
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.lstmotmov := t_iax_motmovsuple();
      SELF.ispendentemetre := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_PERSIS_SUPLEMENTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_SUPLEMENTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_SUPLEMENTO" TO "PROGRAMADORESCSI";
