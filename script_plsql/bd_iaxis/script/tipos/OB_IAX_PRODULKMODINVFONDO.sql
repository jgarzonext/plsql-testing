--------------------------------------------------------
--  DDL for Type OB_IAX_PRODULKMODINVFONDO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODULKMODINVFONDO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODULKMODINVFONDO
   PROP�SITO:  Contiene informaci�n de los productos unit linked
                modelos inversi�n fondos

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(
   ccodfon        NUMBER,   -- C�digo fondos
   tcodfon        VARCHAR2(50),   -- Descripci�n fondos
   tcodfonl       VARCHAR2(100),   --Desripcion fono largo
   pinvers        NUMBER,   -- Porcentage inversi�n
   cobliga        NUMBER,   --obligatorio.
   pmaxcont       NUMBER,   --% m�ximo contratable
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
