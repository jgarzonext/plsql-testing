--------------------------------------------------------
--  DDL for Type OB_IAX_SUBVENCION_AGENTE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SUBVENCION_AGENTE" AS OBJECT
/******************************************************************************
   NOMBRE:  OB_IAX_SUBVENCION_AGENTE
   PROP�SITO:     Objeto para contener Subvenci�n que la compa��a paga adicional a la comisi�n que ha de recibir

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/09/2011   APD                1. 0019169: LCOL_C001 - Campos nuevos a a�adir para Agentes
   2.0        13/12/2011   APD                2. 0020287: LCOL_C001 - Tener en cuenta campo Subvenci�n
******************************************************************************/
(
   cramo          NUMBER,   -- codigo del ramo
   tramo          VARCHAR2(100),   -- descripcion del ramo
   cagente        NUMBER,   --     C�digo de agente
   sproduc        NUMBER(6),   --     C�digo del producto
   tproduc        VARCHAR2(100),   --     Descripci�n del producto
   cactivi        NUMBER(4),   --     C�digo de la actividad
   tactivi        VARCHAR2(100),   --     Descripci�n de la actividad
   iimporte       NUMBER,   --NUMBER(15, 2),   --     Importe de la subvenci�n
   cestado        NUMBER(3),   -- Estado de la subvenci�n (v.f.800070)
   testado        VARCHAR2(100),   -- Descripcion del estado de la subvenci�n (v.f.800070)
   nplanpago      NUMBER(3),   -- Indica los meses a los que se aplica la subvenci�n en la liquidaci�n
   CONSTRUCTOR FUNCTION ob_iax_subvencion_agente
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SUBVENCION_AGENTE" AS
   CONSTRUCTOR FUNCTION ob_iax_subvencion_agente
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cramo := NULL;
      SELF.tramo := NULL;
      SELF.cagente := NULL;
      SELF.sproduc := NULL;
      SELF.tproduc := NULL;
      SELF.cactivi := NULL;
      SELF.tactivi := NULL;
      SELF.iimporte := NULL;
      SELF.cestado := NULL;
      SELF.testado := NULL;
      SELF.nplanpago := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SUBVENCION_AGENTE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SUBVENCION_AGENTE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SUBVENCION_AGENTE" TO "PROGRAMADORESCSI";
