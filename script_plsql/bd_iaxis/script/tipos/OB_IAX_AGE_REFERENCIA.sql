--------------------------------------------------------
--  DDL for Type OB_IAX_AGE_REFERENCIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AGE_REFERENCIA" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_AGE_REFERENCIA
   PROPOSITO:     Referencia de un agente

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/03/2012   MDS              1. Creación del objeto.
******************************************************************************/
(
   cagente        NUMBER,   -- PK
   nordreferencia NUMBER,   -- PK
   treferencia    VARCHAR2(200),
   CONSTRUCTOR FUNCTION ob_iax_age_referencia
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AGE_REFERENCIA" AS
   CONSTRUCTOR FUNCTION ob_iax_age_referencia
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cagente := NULL;
      SELF.nordreferencia := NULL;
      SELF.treferencia := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_REFERENCIA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_REFERENCIA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_REFERENCIA" TO "PROGRAMADORESCSI";
