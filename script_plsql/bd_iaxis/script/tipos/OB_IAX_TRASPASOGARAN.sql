--------------------------------------------------------
--  DDL for Type OB_IAX_TRASPASOGARAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_TRASPASOGARAN" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_TRASPASOGARAN
   PROP�SITO:  Contiene la informaci�n de evoluci�n de provisiones, rescates, etc.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/07/2010  RSC              1. Creaci�n del objeto.
   2.0        01/07/2013   RCL            2. 0024697: LCOL_T031-Tama�o del campo SSEGURO
******************************************************************************/
(
   sseguro        NUMBER,
   nriesgo        NUMBER(6),
   cgarant        NUMBER(4),
   tgarant        VARCHAR2(120),
   icapred        NUMBER,   --NUMBER(13, 2),
   cobliga        NUMBER(1),
   --RESCATE        NUMBER (1),
   garantraspasar t_iax_garantraspasar,
   CONSTRUCTOR FUNCTION ob_iax_traspasogaran
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_TRASPASOGARAN" AS
   /******************************************************************************
      NOMBRE:     OB_IAX_TRASPASOGARAN
      PROP�SITO:  Contiene la informaci�n de traspaso de garant�as.

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        02/07/2010  RSC              1. Creaci�n del objeto.
   ******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_traspasogaran
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.nriesgo := NULL;
      SELF.cgarant := NULL;
      SELF.tgarant := NULL;
      SELF.icapred := NULL;
      SELF.cobliga := NULL;
      --SELF.RESCATE := NULL;
      SELF.garantraspasar := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_TRASPASOGARAN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TRASPASOGARAN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TRASPASOGARAN" TO "PROGRAMADORESCSI";
