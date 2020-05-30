--------------------------------------------------------
--  DDL for Type OB_IAX_DIR_CALLES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DIR_CALLES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DIR_CALLES
   PROPOSITO:    Calles

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   AMC                  1. CreaciÃ³n del objeto.
******************************************************************************/
(
   idcalle        NUMBER(10),   --Id Calle
   idlocal        NUMBER(8),   --Id Localidad
   tcalle         VARCHAR2(100),   --Nombre de la calle
   ctipvia        NUMBER(8),   --Tipo de calle
   ttipvia        VARCHAR2(100),   -- Tipo de calle
   csiglas        VARCHAR2(50),
   cfuente        NUMBER(8),   --Indica la fuente de procedencia (TeleAtlas, Correos, Manual, etc)
   tfuente        VARCHAR2(100),   -- Indica la fuente de procedencia (TeleAtlas, Correos, Manual, etc)
   tcalbus        VARCHAR2(100),   --Descripción optimizada para búsquedas
   cvalcal        NUMBER(1),   --Indica si la calle está validada
   CONSTRUCTOR FUNCTION ob_iax_dir_calles
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DIR_CALLES" AS
   CONSTRUCTOR FUNCTION ob_iax_dir_calles
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.idcalle := NULL;
      SELF.idlocal := NULL;
      SELF.tcalle := NULL;
      SELF.ctipvia := NULL;
      SELF.ttipvia := NULL;
      SELF.csiglas := NULL;
      SELF.cfuente := NULL;
      SELF.tfuente := NULL;
      SELF.tcalbus := NULL;
      SELF.cvalcal := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_CALLES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_CALLES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_CALLES" TO "PROGRAMADORESCSI";
