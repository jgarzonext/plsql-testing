--------------------------------------------------------
--  DDL for Type OB_IAX_POLMVTRETEN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_POLMVTRETEN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_POLMVTRETEN
   PROP�SITO:  Contiene la informaci�n de los motivos por los que la p�liza
               ha quedado retenida

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/12/2007   ACC                1. Creaci�n del objeto.
   2.0        03/04/2009   DRA                0009423: IAX - Gesti� propostes retingudes: detecci� difer�ncies al modificar capitals o afegir garanties
   3.0        06/10/2009   JRB                3. 0011196: Gesti�n de propuestas retenidas. a�adidos campos
******************************************************************************/
(
   sseguro        NUMBER,   --c�digo del seguro
   nriesgo        NUMBER,   --n�mero del riesgo
   nmovimi        NUMBER,   --n�mero del movimiento
   fmovimi        DATE,   --fecha del movimiento
   cmotret        NUMBER,   --c�digo del motivo de retenci�n VF 708
   tmotret        VARCHAR2(100),   --Descripci�n motivo retenci�n
   cusuret        VARCHAR2(40),   --c�digo del usuario que retiene la p�liza
   freten         DATE,   --fecha/hora de la retenci�n de la p�liza
   cusuauto       VARCHAR2(40),   --usuario autoriza
   fusuauto       DATE,   --fecha autoriza
   cresulta       NUMBER,   --c�digo resuelta VF 99
   tresulta       VARCHAR2(100),   --descripci�n resuelta
   tobserva       VARCHAR2(4000),   --observaciones  -- BUG9423:DRA:03-04-2009
   triesgo        VARCHAR2(500),   --descripci�n riesgo
   nmotret        NUMBER,   --n�mero motivo retenci�n
   cestgest       NUMBER,   --Estado gesti�n de la retenci�n
   testgest       VARCHAR2(100),   --descripci�n estado gesti�n de la retenci�n.
   CONSTRUCTOR FUNCTION ob_iax_polmvtreten
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_POLMVTRETEN" AS
   CONSTRUCTOR FUNCTION ob_iax_polmvtreten
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_POLMVTRETEN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_POLMVTRETEN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_POLMVTRETEN" TO "PROGRAMADORESCSI";
