--------------------------------------------------------
--  DDL for Type OB_IAX_ASEGURADORAS_PLANES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_ASEGURADORAS_PLANES" AS OBJECT(
--****************************************************************************
--   NOMBRE:       OB_IAX_ASEGURADORAS_PLANES
--   PROPÓSITO:  Contiene información de ASEGURADORAS_PLANES
--
--   REVISIONES:
--   Ver        Fecha        Autor             Descripción
--   ---------  ----------  ---------------  ------------------------------------
--   1.0        18/01/2010   JGM                1.1 Recreación del objeto.
--******************************************************************************
   ccodaseg       VARCHAR2(15),
   ccodigo        NUMBER(7),
   tnombre        VARCHAR2(100),
   coddgs         VARCHAR2(10),
   CONSTRUCTOR FUNCTION ob_iax_aseguradoras_planes
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_ASEGURADORAS_PLANES" AS
   CONSTRUCTOR FUNCTION ob_iax_aseguradoras_planes
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodaseg := NULL;
      SELF.ccodigo := NULL;
      SELF.tnombre := NULL;
      SELF.coddgs := NULL;
      RETURN;
   END ob_iax_aseguradoras_planes;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_ASEGURADORAS_PLANES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ASEGURADORAS_PLANES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ASEGURADORAS_PLANES" TO "PROGRAMADORESCSI";
