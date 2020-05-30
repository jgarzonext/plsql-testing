--------------------------------------------------------
--  DDL for Type OB_IAX_AGE_ENTIDADASEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AGE_ENTIDADASEG" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_AGE_ENTIDADASEG
   PROPOSITO:     Entidad aseguradora de un agente

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/03/2012   MDS              1. Creación del objeto.
******************************************************************************/
(
   cagente        NUMBER,   -- PK
   ctipentidadaseg NUMBER,   -- PK
   ttipentidadaseg VARCHAR2(100),   -- descripción tipo entidad aseguradora
   CONSTRUCTOR FUNCTION ob_iax_age_entidadaseg
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AGE_ENTIDADASEG" AS
   CONSTRUCTOR FUNCTION ob_iax_age_entidadaseg
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cagente := NULL;
      SELF.ctipentidadaseg := NULL;
      SELF.ttipentidadaseg := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_ENTIDADASEG" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_ENTIDADASEG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_ENTIDADASEG" TO "PROGRAMADORESCSI";
