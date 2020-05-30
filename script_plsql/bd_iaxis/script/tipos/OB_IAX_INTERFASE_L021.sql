--------------------------------------------------------
--  DDL for Type OB_IAX_INTERFASE_L021
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INTERFASE_L021" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_INTERFASE_L021
   PROPÓSITO:  Interfase L021

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/04/2013   ASN                1. Creación del objeto.
******************************************************************************/
(
   producto       VARCHAR2(4),
   numerosiniestro VARCHAR2(14),
   fechaocurrencia DATE,
   fecharadicacion DATE,
   chasis         VARCHAR2(21),
   clase          VARCHAR2(2),
   cilindraje     NUMBER,
   marca          VARCHAR2(3),
   modelo         VARCHAR2(6),
   motor          VARCHAR2(21),
   servicio       NUMBER,
   tipo           VARCHAR2(3),
   tipoplaca      NUMBER,
   placa          VARCHAR2(10),
   vin            VARCHAR2(20),
   tipodocumento  VARCHAR2(2),
   numerodocumento VARCHAR2(50),
   ciudad         VARCHAR2(5),
   sede           VARCHAR2(100),
   valorautorizadomanoobra NUMBER,
   analista       VARCHAR2(200),
   garantiaafectada NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_interfase_l021
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INTERFASE_L021" AS
/******************************************************************************
   NOMBRE:       OB_IAX_INTERFASE_L021
   PROPÓSITO:    Datos interfase L021

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/04/2013   ASN                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_interfase_l021
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.producto := NULL;
      SELF.numerosiniestro := NULL;
      SELF.fechaocurrencia := NULL;
      SELF.fecharadicacion := NULL;
      SELF.chasis := NULL;
      SELF.clase := NULL;
      SELF.cilindraje := NULL;
      SELF.marca := NULL;
      SELF.modelo := NULL;
      SELF.motor := NULL;
      SELF.servicio := NULL;
      SELF.tipo := NULL;
      SELF.tipoplaca := NULL;
      SELF.placa := NULL;
      SELF.vin := NULL;
      SELF.tipodocumento := NULL;
      SELF.numerodocumento := NULL;
      SELF.ciudad := NULL;
      SELF.sede := NULL;
      SELF.valorautorizadomanoobra := NULL;
      SELF.analista := NULL;
      SELF.garantiaafectada := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_L021" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_L021" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_L021" TO "PROGRAMADORESCSI";
