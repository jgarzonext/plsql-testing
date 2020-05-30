--------------------------------------------------------
--  DDL for Type OB_IAX_DIR_DOMICILIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DIR_DOMICILIOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DIR_DOMICILIOS
   PROPOSITO:    Direcciones domicilios

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   AMC                1. Creación del objeto.
******************************************************************************/
(
   iddomici       NUMBER(10),   --Id interno de Domicilio
   idfinca        NUMBER(10),   --Id interno de la Finca
   idportal       NUMBER(2),   --Secuencial del Portal en la Finca
   idgeodir       NUMBER(10),   --Id interno de la GEODirecci�n
   cescale        VARCHAR2(10),   --Escalera (o vac�o)
   cplanta        VARCHAR2(10),   --Planta (o vac�o)
   cpuerta        VARCHAR2(10),   --Puerta (o vac�o)
   ccatast        VARCHAR2(30),   --Referencia Catastral (o vac�o)
   nm2cons        NUMBER(6),   --M2 Departamento (o vac�o)
   ctipdpt        NUMBER(1),   --Tipo de departamento (Vivienda, Garaje, Almac�n,�)
   talias         VARCHAR2(50),   --Alias del domicilio del inmueble
   cnoaseg        NUMBER(1),   --Indica si el domicilio est� identificado como no asegurable
   tnoaseg        NUMBER(2),   --Tipificaci�n de no asegurable
   tdomici        VARCHAR2(1000),   -- Descripci�n del domicilio
   CONSTRUCTOR FUNCTION ob_iax_dir_domicilios
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DIR_DOMICILIOS" AS
   CONSTRUCTOR FUNCTION ob_iax_dir_domicilios
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.iddomici := NULL;
      SELF.idfinca := NULL;
      SELF.idportal := NULL;
      SELF.idgeodir := NULL;
      SELF.cescale := NULL;
      SELF.cplanta := NULL;
      SELF.cpuerta := NULL;
      SELF.ccatast := NULL;
      SELF.nm2cons := NULL;
      SELF.ctipdpt := NULL;
      SELF.talias := NULL;
      SELF.cnoaseg := NULL;
      SELF.tnoaseg := NULL;
      SELF.tdomici := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_DOMICILIOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_DOMICILIOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_DOMICILIOS" TO "PROGRAMADORESCSI";
