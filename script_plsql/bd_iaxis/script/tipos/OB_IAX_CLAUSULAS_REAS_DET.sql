--------------------------------------------------------
--  DDL for Type OB_IAX_CLAUSULAS_REAS_DET
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CLAUSULAS_REAS_DET" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_CLAUSULAS_REAS_DET
   PROPÓSITO:  Contiene el detalle de una clausula / tramo escalonado

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/07/2011   APD                1. Creación del objeto.
******************************************************************************/
(
   ccodigo        NUMBER(5),   --    Código de cláusula
   ctramo         NUMBER(3),   --    Tramo
   ilim_inf       NUMBER(14, 3),   --    Límite inferior siniest.
   ilim_sup       NUMBER(14, 3),   --    Límite superior siniest.
   pctpart        NUMBER(5, 2),   --    % particip.
   pctmin         NUMBER(5, 2),   --    % particip. min
   pctmax         NUMBER(5, 2),   --    % particip. max
   CONSTRUCTOR FUNCTION ob_iax_clausulas_reas_det
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CLAUSULAS_REAS_DET" AS
   CONSTRUCTOR FUNCTION ob_iax_clausulas_reas_det
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodigo := 0;
      SELF.ctramo := 0;
      SELF.ilim_inf := 0;
      SELF.ilim_sup := 0;
      SELF.pctpart := 0;
      SELF.pctmin := 0;
      SELF.pctmax := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CLAUSULAS_REAS_DET" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CLAUSULAS_REAS_DET" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CLAUSULAS_REAS_DET" TO "PROGRAMADORESCSI";
