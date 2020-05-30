--------------------------------------------------------
--  DDL for Type OB_IAX_ASEGURADOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_ASEGURADOS" UNDER ob_iax_personas
/******************************************************************************
   NOMBRE:       OB_IAX_ASEGURADOS
   PROPÓSITO:  Contiene la información del asegurado

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        20/08/2007   ACC                1. Creación del objeto.
   2.0        09/06/2015   mnustes            2. Agregar campo cparen.
******************************************************************************/
(
   norden         NUMBER,   --Número de orden
   nriesgo        NUMBER,   --Número de riesgo
   ffecini        DATE,   --Fecha inicio vigencia asegurado
   ffecfin        DATE,   --Fecha fin vigencia asegurado
   ffecmue        DATE,   --Fecha muerte asegurado
   ctvinculo      NUMBER,   --Código vinculo con tomador
   ttvinculo      VARCHAR2(100),   --Descripción código vinculo
   fecretroact    DATE,   --Fecha muerte asegurado
   cparen         NUMBER(2),   -- Parentesco asegurado y tomador
   CONSTRUCTOR FUNCTION ob_iax_asegurados
      RETURN SELF AS RESULT
)
;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_ASEGURADOS" AS
   CONSTRUCTOR FUNCTION ob_iax_asegurados
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.norden := 1;
      SELF.ffecfin := NULL;
      SELF.ffecini := NULL;
      SELF.ffecmue := NULL;
      SELF.fecretroact := NULL;
      SELF.cparen := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_ASEGURADOS" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ASEGURADOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ASEGURADOS" TO "R_AXIS";
