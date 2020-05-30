--------------------------------------------------------
--  DDL for Type OB_IAX_PERAUTCARNETS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PERAUTCARNETS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_autcarnets
   PROPÓSITO:  Contiene la información de los carnets

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/03/2012   XPL                1. Creación del objeto.

******************************************************************************/
(
   sperson        NUMBER(10),   --Código de Persona
   cagente        NUMBER,   --Código del agente
   ctipcar        NUMBER,
   ttipcar        VARCHAR2(200),
   fcarnet        DATE,
   cdefecto       NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_perautcarnets
      RETURN SELF AS RESULT
)
NOT FINAL;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PERAUTCARNETS" AS
   CONSTRUCTOR FUNCTION ob_iax_perautcarnets
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PERAUTCARNETS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PERAUTCARNETS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PERAUTCARNETS" TO "PROGRAMADORESCSI";
