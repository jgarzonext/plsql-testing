--------------------------------------------------------
--  DDL for Type OB_IAX_INTERTECSEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INTERTECSEG" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_INTERTECSEG
   PROP�SITO:  Contiene informaci�n de los intereses tecnicos de la poliza

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/12/2009   APD                1. Creaci�n del objeto.
******************************************************************************/
(
   sseguro        NUMBER,   --Identificador del seguro
   fefemov        DATE,   --Fecha efecto de movimiento. Es la fecha que se utilizar� para averiguar el inter�s
   nmovimi        NUMBER,   --N�mero de Movimiento de la P�liza (alta o renovaci�n)
   fmovdia        DATE,   --Fecha d�a que se hace el movimiento
   pinttec        NUMBER,   --Porcentaje de inter�s t�cnico
   ndesde         NUMBER,   --Inicio tramo
   nhasta         NUMBER,   --Fin tramo
   ninttec        NUMBER,   -- Porcentaje de inter�s parametrizado en el momento de la inserci�n.
   CONSTRUCTOR FUNCTION ob_iax_intertecseg
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INTERTECSEG" AS
   CONSTRUCTOR FUNCTION ob_iax_intertecseg
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.fefemov := NULL;
      SELF.nmovimi := NULL;
      SELF.fmovdia := NULL;
      SELF.pinttec := NULL;
      SELF.ndesde := NULL;
      SELF.nhasta := NULL;
      SELF.ninttec := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERTECSEG" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERTECSEG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERTECSEG" TO "PROGRAMADORESCSI";
