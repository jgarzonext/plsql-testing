--------------------------------------------------------
--  DDL for Type OB_IAX_PAISES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PAISES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PAISES
   PROPOSITO:    Paises

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. CreaciÃ³n del objeto.
******************************************************************************/
(
   cpais          NUMBER(3),   --Codigo de Pais
   cunieur        NUMBER(1),   --Pertenece o no a la Union Europea
   tunieur        VARCHAR2(100),   -- Pertenece o no a la Union Europea
   pretenc        NUMBER(7),   --
   codiso         VARCHAR2(3),   --Código ISO numérico
   todiso         VARCHAR2(100),   -- Código ISO numérico
   codisoiban     VARCHAR2(2),   --Código ISO texto
   todisoiban     VARCHAR2(100),   -- Código ISO texto
   tpais          VARCHAR2(100),   -- Nombre del Pais
   codisotel      NUMBER(5),   --Prefijo telefónico internacional ITU (International Telecommunications Union)
   todisotel      VARCHAR2(100),   -- Prefijo telefónico internacional ITU (International Telecommunications Union)
   codisoa3       VARCHAR2(3),   --Código ISO-3166-1 texto A3
   todisoa3       VARCHAR2(100),   -- Código ISO-3166-1 texto A3
   tpaisiso       VARCHAR2(100),   --Código ISO-3166-1 Nombre País
   isomoneda      VARCHAR2(3),   --Código ISO-4217 Moneda País
   tpostalfmt     VARCHAR2(10),   --Formato Validación CPOSTAL (p.ej:AAA.NN-A:alfa,N:num,resto el caracter fijo)
   cpostalval     NUMBER(1),   --Indica si debemos validar los CPOSTAL con direcciones
   tpostalval     VARCHAR2(100),   -- Indica si debemos validar los CPOSTAL con direcciones
   cdiraseg       NUMBER(1),   --Indica si se pueden asegurar riesgos de dirección (inmuebles) en el país
   tdiraseg       VARCHAR2(100),   -- Indica si se pueden asegurar riesgos de dirección (inmuebles) en el país
   caltpob        NUMBER(1),   --Indica si se pueden crear datos de ámbito igual o superior a municipio (o población)  en el país (localidades sí que se pueden crear)
   taltpob        VARCHAR2(100),   -- Indica si se pueden crear datos de ámbito igual o superior a municipio (o población)  en el país (localidades sí que se pueden crear)
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
