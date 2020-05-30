--------------------------------------------------------
--  DDL for Type OB_IAX_INTERTECSEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INTERTECSEG" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_INTERTECSEG
   PROPÓSITO:  Contiene información de los intereses tecnicos de la poliza

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/12/2009   APD                1. Creación del objeto.
******************************************************************************/
(
   sseguro        NUMBER,   --Identificador del seguro
   fefemov        DATE,   --Fecha efecto de movimiento. Es la fecha que se utilizará para averiguar el interés
   nmovimi        NUMBER,   --Número de Movimiento de la Póliza (alta o renovación)
   fmovdia        DATE,   --Fecha día que se hace el movimiento
   pinttec        NUMBER,   --Porcentaje de interés técnico
   ndesde         NUMBER,   --Inicio tramo
   nhasta         NUMBER,   --Fin tramo
   ninttec        NUMBER,   -- Porcentaje de interés parametrizado en el momento de la inserción.
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
