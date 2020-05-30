--------------------------------------------------------
--  DDL for Type OB_IAX_MODCONTA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_MODCONTA" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_MODCONTA
   PROPÓSITO: Contiene los datos de los modelos contables

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2008  SBG              1. Creación del objeto.
******************************************************************************/
(
   smodcon        NUMBER(6),   -- Código del modelo
   cempres        NUMBER(2),   -- Código de empresa
   tempres        VARCHAR2(40),   -- Descripción de la empresa
   casient        NUMBER(4),   -- Código del asiento
   tasient        VARCHAR2(100),   -- Descripción del tipo de asiento.
   fini           DATE,   -- Fecha inicio vigencia
   ffin           DATE,   -- Fecha fin vigencia
   CONSTRUCTOR FUNCTION ob_iax_modconta
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_MODCONTA" AS
   CONSTRUCTOR FUNCTION ob_iax_modconta
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.smodcon := NULL;
      SELF.cempres := NULL;
      SELF.tempres := NULL;
      SELF.casient := NULL;
      SELF.tasient := NULL;
      SELF.fini := NULL;
      SELF.ffin := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_MODCONTA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MODCONTA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MODCONTA" TO "PROGRAMADORESCSI";
