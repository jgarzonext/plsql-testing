--------------------------------------------------------
--  DDL for Type OB_IAX_UNDERWRT_IF01
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_UNDERWRT_IF01" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_UNDERWRT_IF01
   PROPÓSITO:    Contiene la información del prestamo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/11/2011   RSC               1. Creació del objecte
******************************************************************************/
(
   caseid         NUMBER,
   screenurl      VARCHAR2(500),
   CONSTRUCTOR FUNCTION ob_iax_underwrt_if01
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_UNDERWRT_IF01" AS
   CONSTRUCTOR FUNCTION ob_iax_underwrt_if01
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.caseid := NULL;
      SELF.screenurl := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_UNDERWRT_IF01" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_UNDERWRT_IF01" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_UNDERWRT_IF01" TO "PROGRAMADORESCSI";
