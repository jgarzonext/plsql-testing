--------------------------------------------------------
--  DDL for Type OB_IAX_CCAAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CCAAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_CCAAS
   PROPOSITO:    Tabla maestra comunidades aut�nomas.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. Creación del objeto.
******************************************************************************/
(
   idccaa		NUMBER(2),	--Identificador comunidad autonoma.
   cpais		NUMBER(3),	--C�digo pais.
   tpais		VARCHAR2(100),	-- C�digo pais.
   tccaa		VARCHAR2(100),	--Nombre comunidad autonoma.
   cforal		NUMBER(1),	--Es foral 0=No, 1=Si
   tforal		VARCHAR2(100),	-- Es foral 0=No, 1=Si
   CONSTRUCTOR FUNCTION OB_IAX_CCAAS
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CCAAS" AS
   CONSTRUCTOR FUNCTION OB_IAX_CCAAS
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.idccaa := NULL;
      SELF.cpais := NULL;
      SELF.tpais := NULL;
      SELF.tccaa := NULL;
      SELF.cforal := NULL;
      SELF.tforal := NULL;

      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CCAAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CCAAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CCAAS" TO "PROGRAMADORESCSI";
