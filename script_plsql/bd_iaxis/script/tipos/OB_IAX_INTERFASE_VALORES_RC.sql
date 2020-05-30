--------------------------------------------------------
--  DDL for Type OB_IAX_INTERFASE_VALORES_RC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INTERFASE_VALORES_RC" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_INTERFASE_VALORES_RC
   PROP�SITO:  Interfase con SIPO (NotificarValoresPerdidas)

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/09/2013   ASN                1. Creaci�n del objeto.
******************************************************************************/
(
   placavehiculocontrario VARCHAR2(12),
   valor          NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_interfase_valores_rc
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INTERFASE_VALORES_RC" AS
/******************************************************************************
   NOMBRE:     OB_IAX_INTERFASE_VALORES_RC
   PROP�SITO:  Interfase con SIPO (NotificarValoresPerdidas)

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/09/2013   ASN                1. Creaci�n del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_interfase_valores_rc
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.placavehiculocontrario := NULL;
      SELF.valor := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_VALORES_RC" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_VALORES_RC" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_VALORES_RC" TO "PROGRAMADORESCSI";
