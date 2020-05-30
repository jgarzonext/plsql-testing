--------------------------------------------------------
--  DDL for Type OB_IAX_IMPUESTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_IMPUESTOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_IMPUESTOS
   PROP�SITO:  Contiene los impuestos deprofesional la persona

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/01/2019   WAJ                1. Creaci�n del objeto.
******************************************************************************/
(
   ccodimp        NUMBER,   --codigo impuesto
   tdesimp        VARCHAR2(200),   --Descripcion impuesto
   ctipind        NUMBER,   --tipo indicador
   tindica        VARCHAR2(200),   --Descripci�n tipo indicador
   cusuari        VARCHAR2(200),   --usuari alta
   falta          DATE,   -- fecha alta
   CONSTRUCTOR FUNCTION ob_iax_impuestos
      RETURN SELF AS RESULT
);

/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_IMPUESTOS" AS
   CONSTRUCTOR FUNCTION ob_iax_impuestos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodimp := 0;
      SELF.tdesimp := NULL;
      SELF.ctipind := 0;
      SELF.tindica := NULL;
      SELF.cusuari := NULL;
      SELF.falta := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_IMPUESTOS" TO "AXIS00";
