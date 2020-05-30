--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMITA_DEMAND
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMITA_DEMAND" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_SIN_TRAMITA_DEMAND
   PROPOSITO:     Tramitación judicial

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/11/2011   MDS              1. Creación del objeto.
******************************************************************************/
(
   nsinies        VARCHAR2(14),   -- PK
   ntramit        NUMBER(3),   -- PK
   nlindem        NUMBER(6),   -- PK
   sperson        NUMBER(10),
   persona        ob_iax_personas,
   ntipodem       NUMBER(8),
   ttramita       VARCHAR2(500),
   sperson2       NUMBER(10),
   abogado        ob_iax_personas,
   nprocedi       VARCHAR2(50),
   tcompani       VARCHAR2(100),
   ttipodem       VARCHAR2(100),   -- descripción de demandante/demandado
   CONSTRUCTOR FUNCTION ob_iax_sin_tramita_demand
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMITA_DEMAND" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_tramita_demand
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.ntramit := NULL;
      SELF.nlindem := NULL;
      SELF.sperson := NULL;
      SELF.persona := NULL;
      SELF.ntipodem := NULL;
      SELF.ttipodem := NULL;   -- descripción de demandante/demandado
      SELF.ttramita := NULL;
      SELF.sperson2 := NULL;
      SELF.abogado := NULL;
      SELF.nprocedi := NULL;
      SELF.tcompani := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_DEMAND" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_DEMAND" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_DEMAND" TO "R_AXIS";
