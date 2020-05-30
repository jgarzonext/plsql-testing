--------------------------------------------------------
--  DDL for Type OB_IAX_AGE_ASOCIACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AGE_ASOCIACION" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_AGE_ASOCIACION
   PROPOSITO:     Asociación de un agente

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/03/2012   MDS              1. Creación del objeto.
******************************************************************************/
(
   cagente        NUMBER,   -- PK
   ctipasociacion NUMBER,   -- PK
   numcolegiado   VARCHAR2(40),
   ttipasociacion VARCHAR2(100),   -- descripción tipo asociación
   CONSTRUCTOR FUNCTION ob_iax_age_asociacion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AGE_ASOCIACION" AS
   CONSTRUCTOR FUNCTION ob_iax_age_asociacion
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cagente := NULL;
      SELF.ctipasociacion := NULL;
      SELF.numcolegiado := NULL;
      SELF.ttipasociacion := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_ASOCIACION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_ASOCIACION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_ASOCIACION" TO "PROGRAMADORESCSI";
