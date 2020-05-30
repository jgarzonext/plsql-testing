--------------------------------------------------------
--  DDL for Type OB_IAX_DTOSESPECIALES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DTOSESPECIALES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DTOSESPECIALES
   PROP�SITO:  Contiene la informaci�n de los descuentos especiales
   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/05/2013   AMC                1. Creaci�n del objeto.
******************************************************************************/
(
   ccampanya      NUMBER,
   tcampanya      VARCHAR2(100),
   finicio        DATE,
   ffin           DATE,
   detdtos        t_iax_dtosespeciales_det,
   CONSTRUCTOR FUNCTION ob_iax_dtosespeciales
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DTOSESPECIALES" AS
   CONSTRUCTOR FUNCTION ob_iax_dtosespeciales
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccampanya := NULL;
      SELF.tcampanya := NULL;
      SELF.finicio := NULL;
      SELF.ffin := NULL;
      SELF.detdtos := t_iax_dtosespeciales_det();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DTOSESPECIALES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DTOSESPECIALES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DTOSESPECIALES" TO "PROGRAMADORESCSI";
