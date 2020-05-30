--------------------------------------------------------
--  DDL for Type OB_IAX_DIR_CALLESCPOSTALES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DIR_CALLESCPOSTALES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DIR_CALLESCPOSTALES
   PROPOSITO:    Calles

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   AMC                  1. CreaciÃ³n del objeto.
******************************************************************************/
(
   idcalle        NUMBER(10),   --Id Calle
   cpostal        VARCHAR2(10),   --Codigo Postal Calle
   tpostal        VARCHAR2(100),   -- Nombre Postal Calle
   numpinf        NUMBER(5),   --Número Impar Inferior
   nparinf        NUMBER(5),   --Número Par Inferior
   nimpsup        NUMBER(5),   --Número Impar Superior
   npassup        NUMBER(5),   --Número Par Superior
   cvalccp        NUMBER(1),   --Calle-CP Validado
   tvalccp        VARCHAR2(100),   -- Calle-CP Validado
   CONSTRUCTOR FUNCTION ob_iax_dir_callescpostales
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DIR_CALLESCPOSTALES" AS
   CONSTRUCTOR FUNCTION ob_iax_dir_callescpostales
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.idcalle := NULL;
      SELF.cpostal := NULL;
      SELF.tpostal := NULL;
      SELF.numpinf := NULL;
      SELF.nparinf := NULL;
      SELF.nimpsup := NULL;
      SELF.npassup := NULL;
      SELF.cvalccp := NULL;
      SELF.tvalccp := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_CALLESCPOSTALES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_CALLESCPOSTALES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_CALLESCPOSTALES" TO "PROGRAMADORESCSI";
