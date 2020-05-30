--------------------------------------------------------
--  DDL for Type OB_IAX_PROVINCIASCOMARCAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROVINCIASCOMARCAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PROVINCIASCOMARCAS
   PROPOSITO:    Provincias comarcas

   REVISIONES:
   Ver        Fecha        Autor             Descripci√≥n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. Creaci√≥n del objeto.
   2.0        20/05/2015   MNUSTES           1. 33977-0201044 Precision de los campos cprovin, cpoblac
******************************************************************************/
(
   ccomarcas      NUMBER,   --CÛdigo de comarca.
   tcomarcas      VARCHAR2(100),   -- CÛdigo de comarca.
   cprovin        NUMBER,   --Codigo de Provincia Bug 33977-0201044 20/05/2015 - precision NUMBER
   tprovin        VARCHAR2(100),   -- Nombre de Provincia
   idccaa         NUMBER(2),   --Identificador comunidad autonoma.
   CONSTRUCTOR FUNCTION ob_iax_provinciascomarcas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROVINCIASCOMARCAS" AS
   CONSTRUCTOR FUNCTION ob_iax_provinciascomarcas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccomarcas := NULL;
      SELF.tcomarcas := NULL;
      SELF.cprovin := NULL;
      SELF.tprovin := NULL;
      SELF.idccaa := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROVINCIASCOMARCAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROVINCIASCOMARCAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROVINCIASCOMARCAS" TO "PROGRAMADORESCSI";
