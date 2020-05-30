--------------------------------------------------------
--  DDL for Type OB_INTTECGARANTIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_INTTECGARANTIAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_INTTECGARANTIAS
   PROP�SITO:  Contiene informaci�n de los intereses por garantia (se basa en la tabla intertecseggar)

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/12/2009   APD                1. Creaci�n del objeto.
******************************************************************************/
(
   nriesgo        NUMBER,   --Numero de riesgo
   cgarant        NUMBER,   --Identificador �nico de la garant�a
   ctipo          NUMBER,   --C�digo tipo de inter�s (v.f.848)
   desctipo       VARCHAR2(40),   --Descripci�n del tipo de inter�s
   fefemov        DATE,   --Fecha efecto movimiento
   pinttec        NUMBER,   --Porcentaje De Inter�s T�cnico.Solo Estar� Informado Si Es Diferente Al Del Producto
   ndesde         NUMBER,   --Inicio tramo
   nhasta         NUMBER,   --Fin tramo
   ninttec        NUMBER,   -- Porcentaje de inter�s parametrizado en el momento de la inserci�n.
   CONSTRUCTOR FUNCTION ob_inttecgarantias
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_INTTECGARANTIAS" AS
   CONSTRUCTOR FUNCTION ob_inttecgarantias
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nriesgo := NULL;
      SELF.cgarant := NULL;
      SELF.ctipo := NULL;
      SELF.desctipo := NULL;
      SELF.fefemov := NULL;
      SELF.pinttec := NULL;
      SELF.ndesde := NULL;
      SELF.nhasta := NULL;
      SELF.ninttec := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_INTTECGARANTIAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_INTTECGARANTIAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_INTTECGARANTIAS" TO "PROGRAMADORESCSI";
