--------------------------------------------------------
--  DDL for Type OB_IAX_FACTURACARPETA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_FACTURACARPETA" AS OBJECT
/******************************************************************************
   NOMBRE:       ob_iax_facturacarpeta
   PROPOSITO:  Contiene la informaci�n de la factura (a partir de la carpeta)
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/02/2014   JMF             1. Creación del objeto.
******************************************************************************/
(
   destipdoc      VARCHAR2(100),
   ninicio        NUMBER,
   nfinal         NUMBER,
   total          NUMBER,
   asignadas      NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_facturacarpeta
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_FACTURACARPETA" AS
   CONSTRUCTOR FUNCTION ob_iax_facturacarpeta
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.destipdoc := NULL;
      SELF.ninicio := NULL;
      SELF.nfinal := NULL;
      SELF.total := NULL;
      SELF.asignadas := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_FACTURACARPETA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_FACTURACARPETA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_FACTURACARPETA" TO "PROGRAMADORESCSI";
