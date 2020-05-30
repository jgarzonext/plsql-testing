--------------------------------------------------------
--  DDL for Type OB_IAX_PAR_PERSONAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PAR_PERSONAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PAR_PERSONAS
   PROP脫SITO:  Contiene informaci贸n de las par谩metros de PERSONAS

   REVISIONES:
   Ver        Fecha        Autor             Descripci贸n
   ---------  ----------  ---------------  ------------------------------------
   1.0        07/01/2012   XPL                1. Creaci贸n del objeto.

******************************************************************************/
(
   cparam         VARCHAR2(100),   -- C贸digo par谩metro
   cutili         NUMBER,
   ctipo          NUMBER,   -- Tipo del par醡etro (n鷐erico, texto...)
   tparam         VARCHAR2(2000),   -- Descripci贸n par谩metro
   cvisible       NUMBER,   --Visible en Nueva producci髇, en todos los m骴ulos...
   ctipper        NUMBER,   -- Tipo par谩metro
   tvalpar        VARCHAR2(2000),   -- Valor texto del par谩metro
   nvalpar        NUMBER,   -- Valor numerico del par谩metro
   resp           VARCHAR2(2000),   -- Descripci贸n del valor numerico del par谩metro al tratarse de un valor de c贸digo tabla
   fvalpar        DATE,   -- Valor fecha del par谩metro
   cgrppar        VARCHAR2(4),   -- Bug 24764/138736 - 22/02/2013 - AMC
   tgrppar        VARCHAR2(100),   -- Bug 24764/138736 - 22/02/2013 - AMC
   CONSTRUCTOR FUNCTION ob_iax_par_personas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PAR_PERSONAS" AS
   CONSTRUCTOR FUNCTION ob_iax_par_personas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cparam := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PAR_PERSONAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PAR_PERSONAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PAR_PERSONAS" TO "PROGRAMADORESCSI";
