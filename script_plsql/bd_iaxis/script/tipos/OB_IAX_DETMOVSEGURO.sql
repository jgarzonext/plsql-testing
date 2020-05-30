--------------------------------------------------------
--  DDL for Type OB_IAX_DETMOVSEGURO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DETMOVSEGURO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DETMOVSEGURO
   PROPÓSITO:  Contiene la información del detalle del movimiento

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/02/2008   ACC                1. Creación del objeto.
   2.0        17/12/2012   APD                2. 0023940: LCOL_T010-LCOL - Certificado 0 renovable - Renovaci?n colectivos
******************************************************************************/
(
   fsuplem        DATE,   --Data del suplement mientras se hace este campo puede ser nulo
   tmotmov        VARCHAR2(100),   --Descripción motivo del suplemento
   cmotmov        NUMBER,   --Código del motivo de movimiento
   triesgo        VARCHAR2(1000),   --Descripción riesgo
   nriesgo        NUMBER,   --Número de riesgo
   cgarant        NUMBER,   --Código de garantia
   tvalora        VARCHAR2(1000),   --Valor antes del suplemento
   tvalord        VARCHAR2(1000),   --Valor despues del suplemento
   cpropagasupl   NUMBER(3),   -- Indica si se propaga el suplemento a sus certificados (v.f.1115) -- Bug 23940
   tpropagasupl   VARCHAR2(100),   -- Descripcion de propaga el suplemento a sus certificados-- Bug 23940
   CONSTRUCTOR FUNCTION ob_iax_detmovseguro
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DETMOVSEGURO" AS
   CONSTRUCTOR FUNCTION ob_iax_detmovseguro
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.fsuplem := NULL;
      SELF.cmotmov := NULL;
      SELF.nriesgo := NULL;
      SELF.cgarant := NULL;
      SELF.tvalora := NULL;
      SELF.tvalord := NULL;
      SELF.cpropagasupl := NULL;
      SELF.tpropagasupl := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DETMOVSEGURO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETMOVSEGURO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETMOVSEGURO" TO "PROGRAMADORESCSI";
