--------------------------------------------------------
--  DDL for Type OB_IAX_GASTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GASTOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_GASTOS
   PROPÓSITO:  Contiene información de los gastos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/12/2009   APD                1. Creación del objeto.
******************************************************************************/
(
   tipogasto      VARCHAR2(40),   --Tipo de gasto
   valor          NUMBER,   --Valor del gasto
   nivel          NUMBER,   --Código del nivel del gasto
   descnivel      VARCHAR2(40),   --Descripción del nivel del gasto
   CONSTRUCTOR FUNCTION ob_iax_gastos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GASTOS" AS
   CONSTRUCTOR FUNCTION ob_iax_gastos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.tipogasto := NULL;
      SELF.valor := NULL;
      SELF.nivel := NULL;
      SELF.descnivel := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GASTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GASTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GASTOS" TO "PROGRAMADORESCSI";
