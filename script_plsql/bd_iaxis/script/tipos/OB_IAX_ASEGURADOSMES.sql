--------------------------------------------------------
--  DDL for Type OB_IAX_ASEGURADOSMES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_ASEGURADOSMES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_ASEGURADOSMES
   PROP�SITO:  Contiene la informaci�n del suplemento de regularizaci�n de asegurados

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/01/2015   JRH                1. Creaci�n del objeto.
******************************************************************************/
(
   nmovimi        NUMBER,   --Movimiento
   nriesgo        NUMBER,   --   Riesgo
   nmes1          NUMBER,   --   N�m asegurados Mes regularizaci�n 1
   nmes2          NUMBER,   --   N�m asegurados Mes regularizaci�n 2
   nmes3          NUMBER,   --   N�m asegurados Mes regularizaci�n 3
   nmes4          NUMBER,   --   N�m asegurados Mes regularizaci�n 4
   nmes5          NUMBER,   --   N�m asegurados Mes regularizaci�n 5
   nmes6          NUMBER,   -- N�m asegurados Mes regularizaci�n 6
   nmes7          NUMBER,   -- N�m asegurados Mes regularizaci�n 7
   nmes8          NUMBER,   --   N�m asegurados Mes regularizaci�n 8
   nmes9          NUMBER,   --N�m asegurados Mes regularizaci�n 9
   nmes10         NUMBER,   --   N�m asegurados Mes regularizaci�n 10
   nmes11         NUMBER,   --   N�m asegurados Mes regularizaci�n 11
   nmes12         NUMBER,   --N�m asegurados Mes regularizaci�n 12
   fechaini       DATE,   --  Fecha Inicio Regularizaci�n
   fechafin       DATE,   --Fecha Fin Regularizaci�n
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
