--------------------------------------------------------
--  DDL for Type OB_IAX_CAMPAPRD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CAMPAPRD" AS OBJECT
/******************************************************************************
   NOMBRE:  OB_IAX_CAMPAPRD
   PROPÃ“SITO:     Objeto para contener los datos de los prod/activ/garant asociados a campaña.

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/08/2011   FAL                1. CreaciÃ³n del objeto.
******************************************************************************/
(
   ccodigo        NUMBER,   -- codigo de la campaña
   sproduc        NUMBER,   -- código del producto
   tproduc        VARCHAR2(200),   -- descripcion del producto
   cactivi        NUMBER,   -- codigo de la actividad
   tactivi        VARCHAR2(200),   -- descripcion de la actividad
   cgarant        NUMBER,   -- codigo de la garantia
   tgarant        VARCHAR2(200),   -- descripcion de la garantia
   CONSTRUCTOR FUNCTION ob_iax_campaprd
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CAMPAPRD" AS
   CONSTRUCTOR FUNCTION ob_iax_campaprd
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodigo := NULL;
      SELF.sproduc := NULL;
      SELF.tproduc := NULL;
      SELF.cactivi := NULL;
      SELF.tactivi := NULL;
      SELF.cgarant := NULL;
      SELF.tgarant := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPAPRD" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPAPRD" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPAPRD" TO "PROGRAMADORESCSI";
