--------------------------------------------------------
--  DDL for Type OB_IAX_TIPOSVIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_TIPOSVIAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_TIPOSVIAS
   PROPOSITO:    Tipos de Vía (o Calle)

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. CreaciÃ³n del objeto.
******************************************************************************/
(
   ctipvia        NUMBER(3),   --Id Tipo de Vía
   ttipvia        VARCHAR2(50),   --Descripción del tipo de vía
   csiglas        VARCHAR2(50),   --Siglas del tipo de vía
   tsiglas        VARCHAR2(100),   -- Siglas del tipo de vía
   cfuente        NUMBER(1),   --Indica la fuente de procedencia (TeleAtlas, Correos, Manual, etc)
   tfuente        VARCHAR2(100),   -- Indica la fuente de procedencia (TeleAtlas, Correos, Manual, etc)
   CONSTRUCTOR FUNCTION ob_iax_tiposvias
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_TIPOSVIAS" AS
   CONSTRUCTOR FUNCTION ob_iax_tiposvias
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ctipvia := NULL;
      SELF.ttipvia := NULL;
      SELF.csiglas := NULL;
      SELF.tsiglas := NULL;
      SELF.cfuente := NULL;
      SELF.tfuente := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_TIPOSVIAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TIPOSVIAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TIPOSVIAS" TO "PROGRAMADORESCSI";
