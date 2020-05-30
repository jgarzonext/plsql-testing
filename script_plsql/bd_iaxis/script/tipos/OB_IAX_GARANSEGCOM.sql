--------------------------------------------------------
--  DDL for Type OB_IAX_GARANSEGCOM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GARANSEGCOM" AS OBJECT(
   cgarant        NUMBER,   --    SI        Código garantías
   tgarant        VARCHAR2(2000),   --    SI        Descripción garantía
   nmovimi        NUMBER,   --    SI        Número de movimiento
   finiefe        DATE,   --    SI        Fechamov. garantía
   cmodcom        NUMBER,   --    SI        Modalidad de comisión
   tmodcom        VARCHAR2(2000),   --    SI        Descripción modalidad de comisión
   ninialt        NUMBER,   --    SI        Inicio de altura
   nfinalt        NUMBER,   --  SI    Fin de altura
   pcomisi        NUMBER,   --  SI    Porcentaje de comisión
   pcomisicua     NUMBER,   -- SI    Porcentaje de comisión según cuadro
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
