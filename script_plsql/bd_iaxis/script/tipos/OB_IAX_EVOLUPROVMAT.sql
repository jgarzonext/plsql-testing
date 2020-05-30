--------------------------------------------------------
--  DDL for Type OB_IAX_EVOLUPROVMAT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_EVOLUPROVMAT" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_EVOLUPROVMAT
   PROP�SITO:  Contiene la informaci�n de evoluci�n de provisiones, rescates, etc.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        23/06/2010  RSC                1. Creaci�n del objeto.
   2.0        02/06/2015  YDA                2. Se adiciona el campo nscenario
******************************************************************************/
(
   /* valores */
   nanyo       NUMBER (6),                                   -- N�mero de A�O
   fprovmat    DATE,                         -- Fecha de provisi�n matem�tica
   iprovmat    NUMBER, -- NUMBER(13, 2),   -- Importe de provisi�n matem�tica
   icapfall    NUMBER,
                    --NUMBER(13, 2),   -- Importe de capital de fallecimiento
   prescate    NUMBER (5, 2),                        -- Porcentaje de rescate
   pinttec     NUMBER (5, 2),                 -- Porcentaje de inter�s tipo 2
   iprovest    NUMBER,    --NUMBER(13, 2),   -- Importe de provisi�n estimada
   crevisio    VARCHAR2 (1 BYTE),                                -- Revisado?
   ivalres     NUMBER,                                  -- Importe de rescate
   iprima      NUMBER,                                    -- Prima a la fecha
   nscenario   NUMBER,      -- Numero de escenario de proyecci�n de intereses
   CONSTRUCTOR FUNCTION ob_iax_evoluprovmat
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_EVOLUPROVMAT" 
AS
   /******************************************************************************
      NOMBRE:     OB_IAX_EVOLUPROVMAT
      PROP�SITO:  Contiene la informaci�n de evoluci�n de provisiones, rescates, etc.

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        23/06/2010  RSC                1. Creaci�n del objeto.
	  2.0        02/06/2015  YDA                2. Se agrega el campo nscenario
   ******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_evoluprovmat
      RETURN SELF AS RESULT
   IS
   BEGIN
      SELF.nanyo := NULL;
      SELF.fprovmat := NULL;
      SELF.iprovmat := NULL;
      SELF.icapfall := NULL;
      SELF.prescate := NULL;
      SELF.pinttec := NULL;
      SELF.iprovest := NULL;
      SELF.crevisio := NULL;
      SELF.ivalres := NULL;
      SELF.iprima := NULL;
      SELF.nscenario := 1;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_EVOLUPROVMAT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_EVOLUPROVMAT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_EVOLUPROVMAT" TO "PROGRAMADORESCSI";
