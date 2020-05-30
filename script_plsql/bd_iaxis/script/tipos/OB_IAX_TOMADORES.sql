
  CREATE OR REPLACE  TYPE "OB_IAX_TOMADORES" UNDER OB_IAX_PERSONAS
/******************************************************************************
   NOMBRE:       OB_IAX_TOMADORES
   PROPÓSITO:  Contiene la información del tomador

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/09/2007   ACC                1. Creación del objeto.
   2.0        27/07/2012   FPG                2. Bug 23075 Figura del pagador
******************************************************************************/
(
   nordtom        NUMBER,   --Orden de los diferentes tomadores, 0 = Principal (Correo, ...)
   isaseg         NUMBER,   --Us intern especifica si es asegurat 1  0 no ho es
   cexistepagador NUMBER,   -- 'Indica si existe un pagador del recibo distinto del tomador (0=No 1=Si)'
   cagrupa        NUMBER,   -- agrupacion de Consorcios --IAXIS-2085 03/04/2019 AP
   CONSTRUCTOR FUNCTION OB_IAX_TOMADORES
      RETURN SELF AS RESULT
)
;
/
CREATE OR REPLACE  TYPE BODY "OB_IAX_TOMADORES" AS
   CONSTRUCTOR FUNCTION OB_IAX_TOMADORES
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nordtom := 0;
      SELF.isaseg := 0;
      SELF.cexistepagador := 0;
      SELF.cagrupa := 0; -- agrupacion de Consorcios --IAXIS-2085 03/04/2019 AP
      RETURN;
   END;
END;

/
