--------------------------------------------------------
--  DDL for Type OB_IAX_PAR_PERSONAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PAR_PERSONAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PAR_PERSONAS
   PROPÓSITO:  Contiene información de las parámetros de PERSONAS

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        07/01/2012   XPL                1. Creación del objeto.

******************************************************************************/
(
   cparam         VARCHAR2(100),   -- Código parámetro
   cutili         NUMBER,
   ctipo          NUMBER,   -- Tipo del par�metro (n�merico, texto...)
   tparam         VARCHAR2(2000),   -- Descripción parámetro
   cvisible       NUMBER,   --Visible en Nueva producci�n, en todos los m�dulos...
   ctipper        NUMBER,   -- Tipo parámetro
   tvalpar        VARCHAR2(2000),   -- Valor texto del parámetro
   nvalpar        NUMBER,   -- Valor numerico del parámetro
   resp           VARCHAR2(2000),   -- Descripción del valor numerico del parámetro al tratarse de un valor de código tabla
   fvalpar        DATE,   -- Valor fecha del parámetro
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
