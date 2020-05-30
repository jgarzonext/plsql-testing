--------------------------------------------------------
--  DDL for Type OB_IAX_DIR_RIESGOS_HIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DIR_RIESGOS_HIS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DIR_RIESGOS_HIS
   PROPOSITO:    Direcciones de Riesgo - Historico

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. CreaciÃ³n del objeto.
******************************************************************************/
(
   iddirrie		NUMBER(10),	--Identificador de la dirección de riesgo
   iddomicinew		NUMBER(10),	--Identificador del domicilio nuevo
   iddomiciold		NUMBER(10),	--Identificador del domicilio antiguo
   fultact		DATE,	--Fecha creación/modificación registro
   cusuario		VARCHAR2(1),	--Codigo de usuario
   tusuario		VARCHAR2(100),	-- Nombre de usuario
   CONSTRUCTOR FUNCTION OB_IAX_DIR_RIESGOS_HIS
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DIR_RIESGOS_HIS" AS
   CONSTRUCTOR FUNCTION OB_IAX_DIR_RIESGOS_HIS
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.iddirrie := NULL;
      SELF.iddomicinew := NULL;
      SELF.iddomiciold := NULL;
      SELF.fultact := NULL;
      SELF.cusuario := NULL;
      SELF.tusuario := NULL;

      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_RIESGOS_HIS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_RIESGOS_HIS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_RIESGOS_HIS" TO "PROGRAMADORESCSI";
