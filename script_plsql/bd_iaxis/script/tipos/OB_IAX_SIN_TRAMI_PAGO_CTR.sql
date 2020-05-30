--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_PAGO_CTR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_PAGO_CTR" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_PAGO_CTR
   PROPÓSITO:  Contiene la información de los contratos que nos devuelve SAP

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/12/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   crp            VARCHAR2(10),
   poscrp         VARCHAR2(3),
   contrato       VARCHAR2(8),
   cdp            VARCHAR2(10),
   posres         VARCHAR2(14),
   cgestor        VARCHAR2(16),
   imp_moneda_local NUMBER,
   desc_contrato  VARCHAR2(40),
   mensaje        VARCHAR2(2000),
   status         VARCHAR2(1),
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_pago_ctr
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_PAGO_CTR" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_pago_ctr
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.crp := NULL;
      SELF.poscrp := NULL;
      SELF.contrato := NULL;
      SELF.cdp := NULL;
      SELF.posres := NULL;
      SELF.cgestor := NULL;
      SELF.imp_moneda_local := NULL;
      SELF.desc_contrato := NULL;
      SELF.mensaje := NULL;
      SELF.status := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_PAGO_CTR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_PAGO_CTR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_PAGO_CTR" TO "PROGRAMADORESCSI";
