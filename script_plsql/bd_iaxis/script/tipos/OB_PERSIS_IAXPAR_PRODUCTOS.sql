--------------------------------------------------------
--  DDL for Type OB_PERSIS_IAXPAR_PRODUCTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_PERSIS_IAXPAR_PRODUCTOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_PERSIS_suplemento
   PROPÓSITO:  Contiene la información del detalle de suplemento

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   JLB              1. Creación del objeto.
******************************************************************************/
(
   vproducto      NUMBER,   --Codigo producto
   vcactivi       NUMBER,   --Codigo actividad por defecto 0
   vmodalidad     NUMBER,   --Codigo modalidad
   vempresa       NUMBER,   --Codigo empresa
   vidioma        NUMBER,   --Codigo idioma
   vccolect       NUMBER,   --Codigo de Colectividad del Producto
   vcramo         NUMBER,   --Codigo de Ramo del Producto
   vctipseg       NUMBER,   --Codigo de Tipo de Seguro del Producto
   CONSTRUCTOR FUNCTION ob_persis_iaxpar_productos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_PERSIS_IAXPAR_PRODUCTOS" AS
   CONSTRUCTOR FUNCTION ob_persis_iaxpar_productos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.vproducto := NULL;   --Codigo producto
      SELF.vcactivi := 0;   --Codigo actividad por defecto 0
      SELF.vmodalidad := NULL;   --Codigo modalidad
      SELF.vempresa := NULL;   --Codigo empresa
      SELF.vidioma := pac_md_common.f_get_cxtidioma;   --Codigo idioma
      SELF.vccolect := NULL;   --Codigo de Colectividad del Producto
      SELF.vcramo := NULL;   --Codigo de Ramo del Producto
      SELF.vctipseg := NULL;   --Codigo de Tipo de Seguro del Producto
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_PERSIS_IAXPAR_PRODUCTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_IAXPAR_PRODUCTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_IAXPAR_PRODUCTOS" TO "PROGRAMADORESCSI";
