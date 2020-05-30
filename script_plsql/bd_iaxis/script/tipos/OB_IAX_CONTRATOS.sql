--------------------------------------------------------
--  DDL for Type OB_IAX_CONTRATOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CONTRATOS" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_CONTRATOS
   PROP�SITO:      Objeto para contener los contratos del agente.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/09/2008   AMC                1. Creaci�n del objeto.
   2.0        11/04/2011   APD                2. 0018225: AGM704 - Realizar la modificaci�n de precisi�n el cagente
******************************************************************************/
(
   cempres        NUMBER(2),   -- cod.de empresa
   tempres        VARCHAR2(40),   -- desc. de empresa
   cagente        NUMBER,   -- cod.del agente -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
   ncontrato      NUMBER,   -- n� de contrato
   ffircon        DATE,   --fecha firma del contrato
   CONSTRUCTOR FUNCTION ob_iax_contratos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CONTRATOS" AS
   CONSTRUCTOR FUNCTION ob_iax_contratos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cempres := NULL;
      SELF.tempres := NULL;
      SELF.cagente := NULL;
      SELF.ncontrato := NULL;
      SELF.ffircon := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTRATOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTRATOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTRATOS" TO "PROGRAMADORESCSI";
