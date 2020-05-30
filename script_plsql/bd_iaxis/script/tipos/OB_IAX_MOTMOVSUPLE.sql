--------------------------------------------------------
--  DDL for Type OB_IAX_MOTMOVSUPLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_MOTMOVSUPLE" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_MOTMOVSUPLE
   PROPÓSITO:  Contiene la información de los motivos de suplemento realizado

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/05/2008   ACC                1. Creación del objeto.
   2.0        19/01/2018   JLTS               2. BUG CONF-724 - Adicion de fechas de poliza y ejecución
******************************************************************************/
(
   cmotmov        NUMBER,   -- Códi moviment
   tmotmov        VARCHAR2(100),   -- Descripció codi suplement
   sseguro        NUMBER,   -- Códi assegurança
   cproces        NUMBER,   -- 1 pendent de preprocesar 0 preprocesat
   finiefe        DATE,  -- fecha de efecto inicial de la póliza
   fefecto        DATE,  -- fecha de efecto de la póliza
   fvencim        DATE,  -- fecha de vencimiento de la póliza
   fefeplazo      DATE,  -- fecha de efecto de ejecución
   fvencplazo     DATE,  -- fecha de vencimiento de ejecución
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
