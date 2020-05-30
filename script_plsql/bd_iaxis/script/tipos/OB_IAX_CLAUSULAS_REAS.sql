--------------------------------------------------------
--  DDL for Type OB_IAX_CLAUSULAS_REAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CLAUSULAS_REAS" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_CLAUSULAS_REAS
   PROPÓSITO:  Contiene las clausulas / tramos escalonados

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/07/2011   APD                1. Creación del objeto.
******************************************************************************/
(
   ccodigo        NUMBER(5),   -- Código de la clausula / tramo escalonado
   ctipo          NUMBER(3),   -- Tipo de la cláusula
   ttipo          VARCHAR2(100),   -- Descripción de la cláusula
   fefecto        DATE,   -- Fecha de efecto de la cláusula
   fvencim        DATE,   -- Fecha de vencimiento de la cláusula
   cdescri        t_iax_descclausulas_reas,
   cdetalle       t_iax_clausulas_reas_det,
   CONSTRUCTOR FUNCTION ob_iax_clausulas_reas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CLAUSULAS_REAS" AS
   CONSTRUCTOR FUNCTION ob_iax_clausulas_reas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodigo := 0;
      SELF.ctipo := 0;
      SELF.ttipo := NULL;
      SELF.fefecto := NULL;
      SELF.fvencim := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CLAUSULAS_REAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CLAUSULAS_REAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CLAUSULAS_REAS" TO "PROGRAMADORESCSI";
