--------------------------------------------------------
--  DDL for Type OB_IAX_PAISES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PAISES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PAISES
   PROPOSITO:    Paises

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. Creación del objeto.
******************************************************************************/
(
   cpais          NUMBER(3),   --Codigo de Pais
   cunieur        NUMBER(1),   --Pertenece o no a la Union Europea
   tunieur        VARCHAR2(100),   -- Pertenece o no a la Union Europea
   pretenc        NUMBER(7),   --
   codiso         VARCHAR2(3),   --C�digo ISO num�rico
   todiso         VARCHAR2(100),   -- C�digo ISO num�rico
   codisoiban     VARCHAR2(2),   --C�digo ISO texto
   todisoiban     VARCHAR2(100),   -- C�digo ISO texto
   tpais          VARCHAR2(100),   -- Nombre del Pais
   codisotel      NUMBER(5),   --Prefijo telef�nico internacional ITU (International Telecommunications Union)
   todisotel      VARCHAR2(100),   -- Prefijo telef�nico internacional ITU (International Telecommunications Union)
   codisoa3       VARCHAR2(3),   --C�digo ISO-3166-1 texto A3
   todisoa3       VARCHAR2(100),   -- C�digo ISO-3166-1 texto A3
   tpaisiso       VARCHAR2(100),   --C�digo ISO-3166-1 Nombre Pa�s
   isomoneda      VARCHAR2(3),   --C�digo ISO-4217 Moneda Pa�s
   tpostalfmt     VARCHAR2(10),   --Formato Validaci�n CPOSTAL (p.ej:AAA.NN-A:alfa,N:num,resto el caracter fijo)
   cpostalval     NUMBER(1),   --Indica si debemos validar los CPOSTAL con direcciones
   tpostalval     VARCHAR2(100),   -- Indica si debemos validar los CPOSTAL con direcciones
   cdiraseg       NUMBER(1),   --Indica si se pueden asegurar riesgos de direcci�n (inmuebles) en el pa�s
   tdiraseg       VARCHAR2(100),   -- Indica si se pueden asegurar riesgos de direcci�n (inmuebles) en el pa�s
   caltpob        NUMBER(1),   --Indica si se pueden crear datos de �mbito igual o superior a municipio (o poblaci�n)  en el pa�s (localidades s� que se pueden crear)
   taltpob        VARCHAR2(100),   -- Indica si se pueden crear datos de �mbito igual o superior a municipio (o poblaci�n)  en el pa�s (localidades s� que se pueden crear)
   CONSTRUCTOR FUNCTION ob_iax_paises
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PAISES" AS
   CONSTRUCTOR FUNCTION ob_iax_paises
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cpais := NULL;
      SELF.tpais := NULL;
      SELF.cunieur := NULL;
      SELF.tunieur := NULL;
      SELF.pretenc := NULL;
      SELF.codiso := NULL;
      SELF.todiso := NULL;
      SELF.codisoiban := NULL;
      SELF.todisoiban := NULL;
      SELF.codisotel := NULL;
      SELF.todisotel := NULL;
      SELF.codisoa3 := NULL;
      SELF.todisoa3 := NULL;
      SELF.tpaisiso := NULL;
      SELF.isomoneda := NULL;
      SELF.tpostalfmt := NULL;
      SELF.cpostalval := NULL;
      SELF.tpostalval := NULL;
      SELF.cdiraseg := NULL;
      SELF.tdiraseg := NULL;
      SELF.caltpob := NULL;
      SELF.taltpob := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PAISES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PAISES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PAISES" TO "PROGRAMADORESCSI";
