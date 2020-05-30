--------------------------------------------------------
--  DDL for Type OB_IAX_DETMODCONTA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DETMODCONTA" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_DETMODCONTA
   PROPÓSITO: Contiene el detalle de cada uno de los modelos contables.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2008  SBG              1. Creación del objeto.
******************************************************************************/
(
   smodcon        NUMBER(6),   -- Código del modelo
   cempres        NUMBER(2),   -- Código de empresa
   nlinea         NUMBER(6),   -- Código de línea (DETMODCONTA.NLINEA)
   tdescri        VARCHAR2(100),   -- Descripción
   ccuenta        VARCHAR2(20),   -- Código de cuenta contable
   tcuenta        VARCHAR2(1),   -- Código del concepto (H/D)
   tscuadre       VARCHAR2(3000),   -- select de las tablas de cuadre para obtener el valor
   num_seq        NUMBER(6),   -- Número consecutivo que puede no corresponder con nlinea
   CONSTRUCTOR FUNCTION ob_iax_detmodconta
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DETMODCONTA" AS
   CONSTRUCTOR FUNCTION ob_iax_detmodconta
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.smodcon := NULL;
      SELF.cempres := NULL;
      SELF.nlinea := NULL;
      SELF.tdescri := NULL;
      SELF.ccuenta := NULL;
      SELF.tcuenta := NULL;
      SELF.tscuadre := NULL;
      SELF.num_seq := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DETMODCONTA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETMODCONTA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETMODCONTA" TO "PROGRAMADORESCSI";
