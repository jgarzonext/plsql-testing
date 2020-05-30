--------------------------------------------------------
--  DDL for Type OB_IAX_DESCCUADRODESCUENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DESCCUADRODESCUENTO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_desccuadrodescuento
   PROPÓSITO:  Contiene la información del cuadro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/03/2012   JRB                1. Creación del objeto.
******************************************************************************/
(
   cidioma        NUMBER,   -- Código idioma
   tidioma        VARCHAR2(100),   -- Descripción idioma
   cdesc          NUMBER(2),
   tdesc          VARCHAR2(500),
   CONSTRUCTOR FUNCTION ob_iax_desccuadrodescuento
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DESCCUADRODESCUENTO" AS
   CONSTRUCTOR FUNCTION ob_iax_desccuadrodescuento
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DESCCUADRODESCUENTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DESCCUADRODESCUENTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DESCCUADRODESCUENTO" TO "PROGRAMADORESCSI";
