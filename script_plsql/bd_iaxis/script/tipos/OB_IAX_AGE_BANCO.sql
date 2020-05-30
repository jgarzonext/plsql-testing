--------------------------------------------------------
--  DDL for Type OB_IAX_AGE_BANCO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AGE_BANCO" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_AGE_BANCO
   PROPOSITO:     Banco de un agente

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/03/2012   MDS              1. Creación del objeto.
******************************************************************************/
(
   cagente        NUMBER,   -- PK
   ctipbanco      NUMBER,   -- PK
   ttipbanco      VARCHAR2(100),   -- descripción tipo banco
   CONSTRUCTOR FUNCTION ob_iax_age_banco
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AGE_BANCO" AS
   CONSTRUCTOR FUNCTION ob_iax_age_banco
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cagente := NULL;
      SELF.ctipbanco := NULL;
      SELF.ttipbanco := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_BANCO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_BANCO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_BANCO" TO "PROGRAMADORESCSI";
