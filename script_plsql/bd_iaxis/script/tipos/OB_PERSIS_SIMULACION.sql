--------------------------------------------------------
--  DDL for Type OB_PERSIS_SIMULACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_PERSIS_SIMULACION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_PERSIS_suplemento
   PROPÓSITO:  Contiene la información del detalle de suplemento

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/11/2011   JLB              1. Creación del objeto.
******************************************************************************/
(
   simulacion     ob_iax_poliza,   --Objeto simulaci¿¿¿¿n original en carrega de datos
   isconsultsimul NUMBER(1),   -- BOOLEAN,
   isparammismo_aseg NUMBER(1),   --BOOLEAN,   -- Indica si prenedor es l'assegurat
   contracsimul   NUMBER(1),   --BOOLEAN,   -- Indica si pasamos de una simulaci¿¿¿¿n a una contrataci¿¿¿¿n
   islimpiartemporales NUMBER(1),   --BOOLEAN,
   CONSTRUCTOR FUNCTION ob_persis_simulacion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_PERSIS_SIMULACION" AS
   CONSTRUCTOR FUNCTION ob_persis_simulacion
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.simulacion := ob_iax_poliza();   --Objeto simulaci¿¿¿¿n original en carrega de datos
      SELF.isconsultsimul := 0;   -- FALSE;
      SELF.isparammismo_aseg := 0;   -- FALSE;   -- Indica si prenedor es l'assegurat
      SELF.contracsimul := 0;   -- FALSE;   -- Indica si pasamos de una simulaci¿¿¿¿n a una contrataci¿¿¿¿n
      SELF.islimpiartemporales := 0;   --FALSE;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_PERSIS_SIMULACION" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_SIMULACION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_SIMULACION" TO "R_AXIS";
