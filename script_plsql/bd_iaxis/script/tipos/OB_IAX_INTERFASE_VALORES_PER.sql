--------------------------------------------------------
--  DDL for Type OB_IAX_INTERFASE_VALORES_PER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INTERFASE_VALORES_PER" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_INTERFASE_VALORES_PER
   PROPÓSITO:  Interfase con SIPO (NotificarValoresPerdidas)

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/09/2013   ASN                1. Creación del objeto.
******************************************************************************/
(
   tipo           VARCHAR2(25),
   valor          NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_interfase_valores_per
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INTERFASE_VALORES_PER" AS
/******************************************************************************
   NOMBRE:     OB_IAX_INTERFASE_VALORES_PER
   PROPÓSITO:  Interfase con SIPO (NotificarValoresPerdidas)

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/09/2013   ASN                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_interfase_valores_per
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.tipo := NULL;
      SELF.valor := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_VALORES_PER" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_VALORES_PER" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_VALORES_PER" TO "PROGRAMADORESCSI";
