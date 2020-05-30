--------------------------------------------------------
--  DDL for Type OB_IAX_INFO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INFO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_INFO
   PROPÓSITO:  Contiene la información de la tabla intermedia de gestion de procesos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        05/07/2010   XPL             1. Creación del objeto.
******************************************************************************/
(
   nombre_columna VARCHAR2(200),
   valor_columna  VARCHAR2(30000),
   tipo_columna   VARCHAR2(400),
   seleccionado   NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_info
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INFO" AS
   CONSTRUCTOR FUNCTION ob_iax_info
/******************************************************************************
   NOMBRE:       OB_IAX_INFO
   PROPÓSITO:  Contiene información de la tabla intermedia de gestion de porcesos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        05/07/2010   XPL             1. Creación del objeto.
******************************************************************************/
   RETURN SELF AS RESULT IS
   BEGIN
      SELF.nombre_columna := '';
      SELF.valor_columna := NULL;
      SELF.seleccionado := NULL;
      SELF.tipo_columna := '';
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INFO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INFO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INFO" TO "PROGRAMADORESCSI";
