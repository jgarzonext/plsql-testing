--------------------------------------------------------
--  DDL for Type OB_IAX_MOTMOVSUPLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_MOTMOVSUPLE" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_MOTMOVSUPLE
   PROP�SITO:  Contiene la informaci�n de los motivos de suplemento realizado

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/05/2008   ACC                1. Creaci�n del objeto.
   2.0        19/01/2018   JLTS               2. BUG CONF-724 - Adicion de fechas de poliza y ejecuci�n
******************************************************************************/
(
   cmotmov        NUMBER,   -- C�di moviment
   tmotmov        VARCHAR2(100),   -- Descripci� codi suplement
   sseguro        NUMBER,   -- C�di asseguran�a
   cproces        NUMBER,   -- 1 pendent de preprocesar 0 preprocesat
   finiefe        DATE,  -- fecha de efecto inicial de la p�liza
   fefecto        DATE,  -- fecha de efecto de la p�liza
   fvencim        DATE,  -- fecha de vencimiento de la p�liza
   fefeplazo      DATE,  -- fecha de efecto de ejecuci�n
   fvencplazo     DATE,  -- fecha de vencimiento de ejecuci�n
   CONSTRUCTOR FUNCTION ob_iax_motmovsuple
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_MOTMOVSUPLE" AS
   CONSTRUCTOR FUNCTION ob_iax_motmovsuple
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cmotmov := NULL;
      SELF.tmotmov := NULL;
      SELF.sseguro := NULL;
      SELF.cproces := 1;
      SELF.finiefe := TO_DATE(NULL);
      SELF.fefecto := TO_DATE(NULL);
      SELF.fvencim := TO_DATE(NULL);
      SELF.fefeplazo := TO_DATE(NULL);
      SELF.fvencplazo := TO_DATE(NULL);
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_MOTMOVSUPLE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MOTMOVSUPLE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MOTMOVSUPLE" TO "PROGRAMADORESCSI";
