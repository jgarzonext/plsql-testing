--------------------------------------------------------
--  DDL for Type OB_IAX_CORRETAJE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CORRETAJE" UNDER ob_iax_personas
/******************************************************************************
   NOMBRE:       OB_IAX_CORRETAJE
   PROPÓSITO:    Contiene la información del co-corretaje

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/09/2011   DRA               1. 0019069: LCOL_C001 - Co-corretaje
   2.0        13/02/2013   MAL               2. 0025581: LCOL_C001-LCOL: Q-trackers de co-corretaje
******************************************************************************/
(
   nmovimi        NUMBER(4),   -- Número de movimiento
   nordage        NUMBER(2),   -- Orden de aparición del agente
   pcomisi        NUMBER(5, 2),   -- Porcentaje de Comisión
   ppartici       NUMBER(5, 2),   -- Porcentaje de Participación
   islider        NUMBER(1),   -- Indicador del líder del corretaje
   tsucursal      VARCHAR2(100),   -- Nombre de la sucursal
   csucursal      NUMBER,   -- Codigo de la sucursal MAL 13/02/2013 0025581
   CONSTRUCTOR FUNCTION ob_iax_corretaje
      RETURN SELF AS RESULT
)
;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CORRETAJE" AS
   CONSTRUCTOR FUNCTION ob_iax_corretaje
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nmovimi := NULL;
      SELF.nordage := 1;
      SELF.pcomisi := NULL;
      SELF.ppartici := NULL;
      SELF.islider := NULL;
      SELF.tsucursal := NULL;
      SELF.csucursal := NULL;   -- MAL 13/02/2013 0025581
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CORRETAJE" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CORRETAJE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CORRETAJE" TO "R_AXIS";
