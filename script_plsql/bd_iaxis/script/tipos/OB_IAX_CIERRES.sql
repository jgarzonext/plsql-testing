--------------------------------------------------------
--  DDL for Type OB_IAX_CIERRES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CIERRES" AS OBJECT(
/****************************************************************************
   NOMBRE:       OB_IAX_CIERRES
   PROPÓSITO:  Contiene información de cierres contables

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/08/2008   JGM                1. Creación del objeto.
******************************************************************************/
   cempres        NUMBER(2),   --   Código de empresa
   tempres        VARCHAR2(100),   --   Nomre de la empresa
   ctipo          NUMBER(2),   --Tipo de cierre
   ttipo          VARCHAR2(100),   -- Descripción del tipo de cierre (vf. 167)
   fperini        DATE,   -- Fecha inicio del periodo que abarca el cierre
   fperfin        DATE,   --Fecha fin del periodo que abarca el cierre
   fcierre        DATE,   --Fecha de cierre
   cestado        NUMBER(2),   --   Estado del cierre (programado, cerrado…)
   testado        VARCHAR2(100),   --    Descripción del estado del cierre (vf. 168)
   sproces        NUMBER,   --Proceso asociado al cierre
   fproces        DATE,   --Fecha de ejecución del cierre
   CONSTRUCTOR FUNCTION ob_iax_cierres
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CIERRES" AS
   CONSTRUCTOR FUNCTION ob_iax_cierres
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cempres := 0;
      SELF.tempres := NULL;
      SELF.ctipo := 0;
      SELF.ttipo := NULL;
      SELF.fperini := NULL;
      SELF.fperfin := NULL;
      SELF.fcierre := NULL;
      SELF.cestado := 0;
      SELF.testado := NULL;
      SELF.sproces := 0;
      SELF.fproces := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CIERRES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CIERRES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CIERRES" TO "PROGRAMADORESCSI";
