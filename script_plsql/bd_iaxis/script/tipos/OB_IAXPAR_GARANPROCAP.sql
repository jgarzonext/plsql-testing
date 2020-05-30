--------------------------------------------------------
--  DDL for Type OB_IAXPAR_GARANPROCAP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAXPAR_GARANPROCAP" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAXPAR_GARANPROCAP
   PROPÓSITO:  Contiene la información de las garantias lista capitales

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2007   ACC                1. Creación del objeto.
   2.0        26/02/2013   LCF                2. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
******************************************************************************/
(
   icapital       NUMBER,
   norden         NUMBER,
   cdefecto       NUMBER,
   CONSTRUCTOR FUNCTION ob_iaxpar_garanprocap
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAXPAR_GARANPROCAP" AS
   CONSTRUCTOR FUNCTION ob_iaxpar_garanprocap
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.icapital := 0;
      SELF.norden := 0;
      SELF.cdefecto := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_GARANPROCAP" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_GARANPROCAP" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_GARANPROCAP" TO "PROGRAMADORESCSI";
