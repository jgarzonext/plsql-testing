--------------------------------------------------------
--  DDL for Type OB_IAX_INTERFASE_DEDUCIBLES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INTERFASE_DEDUCIBLES" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_INTERFASE_DEDUCIBLES
   PROP�SITO:  Interfase con SIPO (Consultar Vehiculo Asegurado)

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/09/2013   ASN                1. Creaci�n del objeto.
******************************************************************************/
(
   amparo         VARCHAR2(5),
   porcentaje     NUMBER,
   valor          NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_interfase_deducibles
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INTERFASE_DEDUCIBLES" AS
/******************************************************************************
   NOMBRE:     OB_IAX_INTERFASE_DEDUCIBLES
   PROP�SITO:  Interfase con SIPO (Consultar Vehiculo Asegurado)

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/09/2013   ASN                1. Creaci�n del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_interfase_deducibles
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.amparo := NULL;
      SELF.porcentaje := NULL;
      SELF.valor := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_DEDUCIBLES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_DEDUCIBLES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_DEDUCIBLES" TO "PROGRAMADORESCSI";
