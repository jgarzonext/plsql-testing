--------------------------------------------------------
--  DDL for Type OB_IAX_CITAMEDICA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CITAMEDICA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_CITAMEDICA
   PROPÓSITO:  Contiene información de una cita medica

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        07/07/2015   IGIL              1. Creación del objeto.
   1.1        24/08/2015   IGIL              2. Adicion atributo TPAGO - yes/no
******************************************************************************/
(
   sseguro        NUMBER,
   nriesgo        NUMBER,
   nmovimi        NUMBER,
   nomaseg        VARCHAR2(2000),
   sperson        NUMBER(10),
   ttipide_med    VARCHAR2(40),
   nnumide_med    VARCHAR2(14),
   nommedi        VARCHAR2(2000),
   sperson_med    NUMBER(10),
   ceviden        NUMBER(2),
   teviden        VARCHAR2(2000),
   codevid        VARCHAR2(10),
   cestado        NUMBER(2),
   testado        VARCHAR2(200),
   feviden        VARCHAR2(200),
   norden         NUMBER(2),
   ieviden        NUMBER,
   cpago          NUMBER,
   -- 36596/211365 IGIL INI
   tpago          VARCHAR2(10),
   -- 37574/213857 IGIL INI
   ctipevi        NUMBER,
   cais           NUMBER,
   norden_r       NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_citamedica
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CITAMEDICA" AS
   CONSTRUCTOR FUNCTION ob_iax_citamedica
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := 0;
      SELF.nriesgo := 0;
      SELF.nmovimi := 0;
      SELF.nomaseg := NULL;
      SELF.sperson := 0;
      SELF.ttipide_med := NULL;
      SELF.nnumide_med := 0;
      SELF.nommedi := NULL;
      SELF.sperson_med := 0;
      SELF.ceviden := 0;
      SELF.teviden := NULL;
      SELF.codevid := NULL;
      SELF.cestado := 0;
      SELF.testado := NULL;
      SELF.feviden := '';
      SELF.norden := 0;
      SELF.cpago := 0;
      SELF.norden_r := 0;
      -- 36596/211365 IGIL INI
      SELF.tpago := NULL;
      -- 36596/211365 IGIL FIN
      SELF.ctipevi := 0;
      SELF.cais := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CITAMEDICA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CITAMEDICA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CITAMEDICA" TO "PROGRAMADORESCSI";
