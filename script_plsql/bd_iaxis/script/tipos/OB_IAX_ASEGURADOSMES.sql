--------------------------------------------------------
--  DDL for Type OB_IAX_ASEGURADOSMES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_ASEGURADOSMES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_ASEGURADOSMES
   PROPÓSITO:  Contiene la información del suplemento de regularización de asegurados

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/01/2015   JRH                1. Creación del objeto.
******************************************************************************/
(
   nmovimi        NUMBER,   --Movimiento
   nriesgo        NUMBER,   --   Riesgo
   nmes1          NUMBER,   --   Núm asegurados Mes regularización 1
   nmes2          NUMBER,   --   Núm asegurados Mes regularización 2
   nmes3          NUMBER,   --   Núm asegurados Mes regularización 3
   nmes4          NUMBER,   --   Núm asegurados Mes regularización 4
   nmes5          NUMBER,   --   Núm asegurados Mes regularización 5
   nmes6          NUMBER,   -- Núm asegurados Mes regularización 6
   nmes7          NUMBER,   -- Núm asegurados Mes regularización 7
   nmes8          NUMBER,   --   Núm asegurados Mes regularización 8
   nmes9          NUMBER,   --Núm asegurados Mes regularización 9
   nmes10         NUMBER,   --   Núm asegurados Mes regularización 10
   nmes11         NUMBER,   --   Núm asegurados Mes regularización 11
   nmes12         NUMBER,   --Núm asegurados Mes regularización 12
   fechaini       DATE,   --  Fecha Inicio Regularización
   fechafin       DATE,   --Fecha Fin Regularización
   CONSTRUCTOR FUNCTION ob_iax_aseguradosmes
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_ASEGURADOSMES" AS
   CONSTRUCTOR FUNCTION ob_iax_aseguradosmes
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nmovimi := NULL;
      SELF.nriesgo := NULL;
      SELF.nmes1 := NULL;
      SELF.nmes2 := NULL;
      SELF.nmes3 := NULL;
      SELF.nmes4 := NULL;
      SELF.nmes5 := NULL;
      SELF.nmes6 := NULL;
      SELF.nmes7 := NULL;
      SELF.nmes8 := NULL;
      SELF.nmes9 := NULL;
      SELF.nmes10 := NULL;
      SELF.nmes11 := NULL;
      SELF.nmes12 := NULL;
      SELF.fechaini := NULL;
      SELF.fechafin := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_ASEGURADOSMES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ASEGURADOSMES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ASEGURADOSMES" TO "PROGRAMADORESCSI";
