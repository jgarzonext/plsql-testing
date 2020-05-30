--------------------------------------------------------
--  DDL for Type OB_IAX_GARANSEGCOM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GARANSEGCOM" AS OBJECT(
   cgarant        NUMBER,   --    SI        C�digo garant�as
   tgarant        VARCHAR2(2000),   --    SI        Descripci�n garant�a
   nmovimi        NUMBER,   --    SI        N�mero de movimiento
   finiefe        DATE,   --    SI        Fechamov. garant�a
   cmodcom        NUMBER,   --    SI        Modalidad de comisi�n
   tmodcom        VARCHAR2(2000),   --    SI        Descripci�n modalidad de comisi�n
   ninialt        NUMBER,   --    SI        Inicio de altura
   nfinalt        NUMBER,   --  SI    Fin de altura
   pcomisi        NUMBER,   --  SI    Porcentaje de comisi�n
   pcomisicua     NUMBER,   -- SI    Porcentaje de comisi�n seg�n cuadro
   ipricom        NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_garansegcom
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GARANSEGCOM" AS
   CONSTRUCTOR FUNCTION ob_iax_garansegcom
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cgarant := NULL;
      SELF.tgarant := NULL;
      SELF.nmovimi := NULL;
      SELF.finiefe := NULL;
      SELF.cmodcom := NULL;
      SELF.tmodcom := NULL;
      SELF.ninialt := NULL;
      SELF.nfinalt := NULL;
      SELF.pcomisi := NULL;
      SELF.pcomisicua := NULL;
      SELF.ipricom := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GARANSEGCOM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GARANSEGCOM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GARANSEGCOM" TO "PROGRAMADORESCSI";
