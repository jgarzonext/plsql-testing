--------------------------------------------------------
--  DDL for Type OB_IAX_COMARCAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_COMARCAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_COMARCAS
   PROPOSITO:    Tabla maestra de comarcas.

   REVISIONES:
   Ver        Fecha        Autor             Descripci√≥n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. Creaci√≥n del objeto.
******************************************************************************/
(
   ccomarcas      NUMBER,   --CÛdigo de comarca.
   tcomarcas      VARCHAR2(30),   --DescripciÛn de comarcas.
   idccaa         NUMBER(2),   --Identificador comunidad autonoma.
   CONSTRUCTOR FUNCTION ob_iax_comarcas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_COMARCAS" AS
   CONSTRUCTOR FUNCTION ob_iax_comarcas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccomarcas := NULL;
      SELF.tcomarcas := NULL;
      SELF.idccaa := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_COMARCAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COMARCAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COMARCAS" TO "PROGRAMADORESCSI";
