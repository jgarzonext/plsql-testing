--------------------------------------------------------
--  DDL for Type OB_IAX_POBLACIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_POBLACIONES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_POBLACIONES
   PROPOSITO:    Tabla Maestra Poblaciones

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. CreaciÃ³n del objeto.
   2.0        20/05/2015   MNUSTES           1. 33977-0201044 Precision de los campos cprovin, cpoblac
******************************************************************************/
(
   cprovin        NUMBER,   --Codigo de Provincia Bug 33977-0201044 20/05/2015 - precision NUMBER
   tprovin        VARCHAR2(100),   -- Nombre de Provincia
   cpoblac        NUMBER,   --Código de Población Bug 33977-0201044 20/05/2015 - precision NUMBER
   tpoblac        VARCHAR2(50),   --Nombre de la Poblacion
   cpobine        NUMBER(5),   --Codigo poblacion INE
   tpobine        VARCHAR2(100),   -- Nombre poblacion INE
   ccomarcas      NUMBER,   --Codigo de comarca.
   tcomarcas      VARCHAR2(100),   -- Nombre de comarca.
   cmuncor        NUMBER(10),   --Código de la Población según Correos
   tmuncor        VARCHAR2(100),   -- Código de la Población según Correos
   cfuente        NUMBER(1),   --Indica la fuente de procedencia (TeleAtlas, Correos, Manual, etc)
   tfuente        VARCHAR2(100),   -- Indica la fuente de procedencia (TeleAtlas, Correos, Manual, etc)
   tmunbus        VARCHAR2(100),   --Descripción optimizada para búsquedas
   cvalmun        NUMBER(1),   --Indica si la población está confirmada
   tvalmun        VARCHAR2(100),   -- Indica si la población está confirmada
   CONSTRUCTOR FUNCTION ob_iax_poblaciones
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_POBLACIONES" AS
   CONSTRUCTOR FUNCTION ob_iax_poblaciones
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cprovin := NULL;
      SELF.tprovin := NULL;
      SELF.cpoblac := NULL;
      SELF.tpoblac := NULL;
      SELF.cpobine := NULL;
      SELF.tpobine := NULL;
      SELF.ccomarcas := NULL;
      SELF.tcomarcas := NULL;
      SELF.cmuncor := NULL;
      SELF.tmuncor := NULL;
      SELF.cfuente := NULL;
      SELF.tfuente := NULL;
      SELF.tmunbus := NULL;
      SELF.cvalmun := NULL;
      SELF.tvalmun := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_POBLACIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_POBLACIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_POBLACIONES" TO "PROGRAMADORESCSI";
