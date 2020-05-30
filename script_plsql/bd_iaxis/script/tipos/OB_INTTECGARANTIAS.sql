--------------------------------------------------------
--  DDL for Type OB_INTTECGARANTIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_INTTECGARANTIAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_INTTECGARANTIAS
   PROPÓSITO:  Contiene información de los intereses por garantia (se basa en la tabla intertecseggar)

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/12/2009   APD                1. Creación del objeto.
******************************************************************************/
(
   nriesgo        NUMBER,   --Numero de riesgo
   cgarant        NUMBER,   --Identificador único de la garantía
   ctipo          NUMBER,   --Código tipo de interés (v.f.848)
   desctipo       VARCHAR2(40),   --Descripción del tipo de interés
   fefemov        DATE,   --Fecha efecto movimiento
   pinttec        NUMBER,   --Porcentaje De Interés Técnico.Solo Estará Informado Si Es Diferente Al Del Producto
   ndesde         NUMBER,   --Inicio tramo
   nhasta         NUMBER,   --Fin tramo
   ninttec        NUMBER,   -- Porcentaje de interés parametrizado en el momento de la inserción.
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
