--------------------------------------------------------
--  DDL for Type OB_IAX_DIR_LOCALIDADES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DIR_LOCALIDADES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DIR_LOCALIDADES
   PROPOSITO:    Direcciones Localidades

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. CreaciÃ³n del objeto.
   2.0        20/05/2015   MNUSTES           1. 33977-0201044 Precision de los campos cprovin, cpoblac
******************************************************************************/
(
   idlocal        NUMBER(8),   --Identificador de localidad
   cprovin        NUMBER,   --Codigo de Provincia Bug 33977-0201044 20/05/2015 - precision NUMBER
   tprovin        VARCHAR2(100),   -- Nombre de Provincia
   cpoblac        NUMBER,   --Código de Población Bug 33977-0201044 20/05/2015 - precision NUMBER
   tpoblac        VARCHAR2(100),   -- Código de Población
   tlocali        VARCHAR2(100),   --Descripción de la Localidad
   cloccor        NUMBER(8),   --Código de la Localidad según Correos
   tloccor        VARCHAR2(100),   -- Código de la Localidad según Correos
   cfuente        NUMBER(1),   --Indica la fuente de procedencia (TeleAtlas, Correos, Manual, etc)
   tfuente        VARCHAR2(100),   -- Indica la fuente de procedencia (TeleAtlas, Correos, Manual, etc)
   cpostal        VARCHAR2(30),   --Código Postal
   tpostal        VARCHAR2(100),   -- Código Postal
   tlocbus        VARCHAR2(100),   --Descripción optimizada para búsquedas
   ctiploc        NUMBER(1),   --Tipo de localidad (Entidad de ámbito territorial inferior al municipio -EATIM-)
   ttiploc        VARCHAR2(100),   -- Tipo de localidad (Entidad de ámbito territorial inferior al municipio -EATIM-)
   cvalloc        NUMBER(1),   --Indica si la localidad está confirmada
   tvalloc        VARCHAR2(100),   -- Indica si la localidad está confirmada
   CONSTRUCTOR FUNCTION ob_iax_dir_localidades
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DIR_LOCALIDADES" AS
   CONSTRUCTOR FUNCTION ob_iax_dir_localidades
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.idlocal := NULL;
      SELF.cprovin := NULL;
      SELF.tprovin := NULL;
      SELF.cpoblac := NULL;
      SELF.tpoblac := NULL;
      SELF.tlocali := NULL;
      SELF.cloccor := NULL;
      SELF.tloccor := NULL;
      SELF.cfuente := NULL;
      SELF.tfuente := NULL;
      SELF.cpostal := NULL;
      SELF.tpostal := NULL;
      SELF.tlocbus := NULL;
      SELF.ctiploc := NULL;
      SELF.ttiploc := NULL;
      SELF.cvalloc := NULL;
      SELF.tvalloc := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_LOCALIDADES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_LOCALIDADES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_LOCALIDADES" TO "PROGRAMADORESCSI";
