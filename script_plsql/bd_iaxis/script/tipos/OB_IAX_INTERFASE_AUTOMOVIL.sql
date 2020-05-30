--------------------------------------------------------
--  DDL for Type OB_IAX_INTERFASE_AUTOMOVIL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INTERFASE_AUTOMOVIL" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_INTERFASE_AUTOMOVIL
   PROPÓSITO:  Interfase con SIPO (Consultar Vehiculo Asegurado)

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/09/2013   ASN                1. Creación del objeto.
******************************************************************************/
(
   producto       VARCHAR2(6),
   numeropoliza   VARCHAR2(14),
   numerocertificado VARCHAR2(6),
   fechainiciovigenciapoliza DATE,
   fechafinvigenciapoliza DATE,
   polizacolectiva NUMBER,
   polizaactiva   NUMBER,
   codigofasecolda VARCHAR2(11),
   motor          VARCHAR2(100),
   chasis         VARCHAR2(100),
   vin            VARCHAR2(20),
   modelo         NUMBER,
   valorasegurado NUMBER,
   claveintermediario VARCHAR2(5),
   deducible      t_iax_interfase_deducibles,
   CONSTRUCTOR FUNCTION ob_iax_interfase_automovil
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INTERFASE_AUTOMOVIL" AS
/******************************************************************************
   NOMBRE:     OB_IAX_INTERFASE_AUTOMOVIL
   PROPÓSITO:  Interfase con SIPO (Consultar Vehiculo Asegurado)

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/09/2013   ASN                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_interfase_automovil
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.producto := NULL;
      SELF.numeropoliza := NULL;
      SELF.numerocertificado := NULL;
      SELF.fechainiciovigenciapoliza := NULL;
      SELF.fechafinvigenciapoliza := NULL;
      SELF.polizacolectiva := NULL;
      SELF.polizaactiva := NULL;
      SELF.codigofasecolda := NULL;
      SELF.motor := NULL;
      SELF.chasis := NULL;
      SELF.vin := NULL;
      SELF.valorasegurado := NULL;
      SELF.claveintermediario := NULL;
      SELF.deducible := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_AUTOMOVIL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_AUTOMOVIL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERFASE_AUTOMOVIL" TO "PROGRAMADORESCSI";
