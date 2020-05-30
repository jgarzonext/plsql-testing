--------------------------------------------------------
--  DDL for Type OB_IAX_DESGLOSE_GAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DESGLOSE_GAR" AS OBJECT
/******************************************************************************
   NOMBRE:     ob_iax_desglose_gar
   PROPÃ“SITO:  Contiene la informaciÃ³n del desglose del capital

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/10/2010   XPL             1. CreaciÃ³n del objeto.
   2.0        26/02/2013   LCF             2. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
******************************************************************************/
(
   norden         NUMBER(4),   -- orden del desglose
   cconcepto      NUMBER(2),   --código del concepto a desglosar
   tconcepto      VARCHAR2(500),   -- descripción del concepto
   tdescripcion   VARCHAR2(1000),   --descripción libre
   icapital       NUMBER,   --25803  -- importe del deglose
   CONSTRUCTOR FUNCTION ob_iax_desglose_gar
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DESGLOSE_GAR" AS
   CONSTRUCTOR FUNCTION ob_iax_desglose_gar
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.norden := NULL;
      SELF.cconcepto := NULL;
      SELF.tconcepto := NULL;
      SELF.tdescripcion := NULL;
      SELF.icapital := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DESGLOSE_GAR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DESGLOSE_GAR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DESGLOSE_GAR" TO "PROGRAMADORESCSI";
