--------------------------------------------------------
--  DDL for Type OB_IAX_PLANAHORRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PLANAHORRO" AS OBJECT(
--****************************************************************************
--   NOMBRE:       OB_IAX_PLANAHORRO
--   PROP�SITO:  Contiene informaci�n de planAhorro
--
--   REVISIONES:
--   Ver        Fecha        Autor             Descripci�n
--   ---------  ----------  ---------------  ------------------------------------
--   1.0        05/11/2009   JGM                1. Creaci�n del objeto.
--******************************************************************************
   ccodpla        NUMBER(6),   --    C�digo AXIS del PPA o del PIAS
   tnompla        VARCHAR2(100),   --    Nombre del Plan de Pensiones
   ccodgs         VARCHAR2(10),   --    C�digo DGS del Plan
   ccompani       NUMBER(6),   --    C�digo de la compa��a que comercializa el pan
   cfondgs        VARCHAR2(10),   --    C�digo DGS del Fondo de Pensiones
   sperscom       NUMBER(10),   --    C�digo de Persona de la compa��a
   nnifcom        VARCHAR2(14),   --    N�mero del Nif de la Compa��a
   tnomcom        VARCHAR2(100),   --    Nombre de la Compa��a
   ctipban        NUMBER(1),   --    C�digo del tipo de cuenta del Plan
   cbanplan       VARCHAR2(24),   --    Cuenta del Plan
   ccomerc        NUMBER(1),   --    Indica si se comercializa o no el Plan
   sproduc        NUMBER(6),   --    C�digo del producto del Plan (S�lo plan de pensiones)
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
