--------------------------------------------------------
--  DDL for Type OB_IAX_PLANAHORRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PLANAHORRO" AS OBJECT(
--****************************************************************************
--   NOMBRE:       OB_IAX_PLANAHORRO
--   PROPÓSITO:  Contiene información de planAhorro
--
--   REVISIONES:
--   Ver        Fecha        Autor             Descripción
--   ---------  ----------  ---------------  ------------------------------------
--   1.0        05/11/2009   JGM                1. Creación del objeto.
--******************************************************************************
   ccodpla        NUMBER(6),   --    Código AXIS del PPA o del PIAS
   tnompla        VARCHAR2(100),   --    Nombre del Plan de Pensiones
   ccodgs         VARCHAR2(10),   --    Código DGS del Plan
   ccompani       NUMBER(6),   --    Código de la compañía que comercializa el pan
   cfondgs        VARCHAR2(10),   --    Código DGS del Fondo de Pensiones
   sperscom       NUMBER(10),   --    Código de Persona de la compañía
   nnifcom        VARCHAR2(14),   --    Número del Nif de la Compañía
   tnomcom        VARCHAR2(100),   --    Nombre de la Compañía
   ctipban        NUMBER(1),   --    Código del tipo de cuenta del Plan
   cbanplan       VARCHAR2(24),   --    Cuenta del Plan
   ccomerc        NUMBER(1),   --    Indica si se comercializa o no el Plan
   sproduc        NUMBER(6),   --    Código del producto del Plan (Sólo plan de pensiones)
   CONSTRUCTOR FUNCTION ob_iax_planahorro
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PLANAHORRO" AS
   CONSTRUCTOR FUNCTION ob_iax_planahorro
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodpla := NULL;
      SELF.tnompla := NULL;
      SELF.ccodgs := NULL;
      SELF.ccompani := NULL;
      SELF.cfondgs := NULL;
      SELF.sperscom := NULL;
      SELF.nnifcom := NULL;
      SELF.tnomcom := NULL;
      SELF.ctipban := NULL;
      SELF.cbanplan := NULL;
      SELF.ccomerc := NULL;
      SELF.sproduc := NULL;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PLANAHORRO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PLANAHORRO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PLANAHORRO" TO "PROGRAMADORESCSI";
