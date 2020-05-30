--------------------------------------------------------
--  DDL for Type OB_IAX_POLMVTRETEN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_POLMVTRETEN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_POLMVTRETEN
   PROPÓSITO:  Contiene la información de los motivos por los que la póliza
               ha quedado retenida

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/12/2007   ACC                1. Creación del objeto.
   2.0        03/04/2009   DRA                0009423: IAX - Gestió propostes retingudes: detecció diferències al modificar capitals o afegir garanties
   3.0        06/10/2009   JRB                3. 0011196: Gestión de propuestas retenidas. añadidos campos
******************************************************************************/
(
   sseguro        NUMBER,   --código del seguro
   nriesgo        NUMBER,   --número del riesgo
   nmovimi        NUMBER,   --número del movimiento
   fmovimi        DATE,   --fecha del movimiento
   cmotret        NUMBER,   --código del motivo de retención VF 708
   tmotret        VARCHAR2(100),   --Descripción motivo retención
   cusuret        VARCHAR2(40),   --código del usuario que retiene la póliza
   freten         DATE,   --fecha/hora de la retención de la póliza
   cusuauto       VARCHAR2(40),   --usuario autoriza
   fusuauto       DATE,   --fecha autoriza
   cresulta       NUMBER,   --código resuelta VF 99
   tresulta       VARCHAR2(100),   --descripción resuelta
   tobserva       VARCHAR2(4000),   --observaciones  -- BUG9423:DRA:03-04-2009
   triesgo        VARCHAR2(500),   --descripción riesgo
   nmotret        NUMBER,   --número motivo retención
   cestgest       NUMBER,   --Estado gestión de la retención
   testgest       VARCHAR2(100),   --descripción estado gestión de la retención.
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
