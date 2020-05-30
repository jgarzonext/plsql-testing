--------------------------------------------------------
--  DDL for Type OB_IAX_DIR_RIESGOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DIR_RIESGOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DIR_RIESGOS
   PROPOSITO:    Direcciones de Riesgo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. Creación del objeto.
******************************************************************************/
(
   iddirrie		NUMBER(10),	--Identificador de la direcci�n de riesgo
   iddomici		NUMBER(10),	--Identificador del domicilio
   CONSTRUCTOR FUNCTION OB_IAX_DIR_RIESGOS
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DIR_RIESGOS" AS
   CONSTRUCTOR FUNCTION OB_IAX_DIR_RIESGOS
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.iddirrie := NULL;
      SELF.iddomici := NULL;

      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_RIESGOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_RIESGOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_RIESGOS" TO "PROGRAMADORESCSI";
