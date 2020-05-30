--------------------------------------------------------
--  DDL for Type OB_IAX_PRODULKMODINVFONDO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODULKMODINVFONDO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODULKMODINVFONDO
   PROPÓSITO:  Contiene información de los productos unit linked
                modelos inversión fondos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(
   ccodfon        NUMBER,   -- Código fondos
   tcodfon        VARCHAR2(50),   -- Descripción fondos
   tcodfonl       VARCHAR2(100),   --Desripcion fono largo
   pinvers        NUMBER,   -- Porcentage inversión
   cobliga        NUMBER,   --obligatorio.
   pmaxcont       NUMBER,   --% máximo contratable
   cmodabo        NUMBER,   --modo de abono
   ivalact        NUMBER,   --importe valor actual
   nuniact        NUMBER,   --numero de unidades
   CONSTRUCTOR FUNCTION ob_iax_produlkmodinvfondo
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODULKMODINVFONDO" AS
   CONSTRUCTOR FUNCTION ob_iax_produlkmodinvfondo
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodfon := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODULKMODINVFONDO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODULKMODINVFONDO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODULKMODINVFONDO" TO "PROGRAMADORESCSI";
