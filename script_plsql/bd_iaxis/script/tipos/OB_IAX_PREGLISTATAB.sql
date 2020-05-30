--------------------------------------------------------
--  DDL for Type OB_IAX_PREGLISTATAB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PREGLISTATAB" AS OBJECT
/******************************************************************************
   NOMBRE:       ob_iax_preglistatab
   PROPÓSITO:  Contiene la información de las preguntes del riesgo o garantía

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/05/2012   XPL                1. Creación del objeto.
******************************************************************************/
(
   cpregun        NUMBER(9),
   columna        VARCHAR2(50),
   clista         NUMBER,
   cidioma        NUMBER(9),
   tlista         VARCHAR2(200),
   CONSTRUCTOR FUNCTION ob_iax_preglistatab
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PREGLISTATAB" AS
   CONSTRUCTOR FUNCTION ob_iax_preglistatab
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PREGLISTATAB" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PREGLISTATAB" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PREGLISTATAB" TO "PROGRAMADORESCSI";
