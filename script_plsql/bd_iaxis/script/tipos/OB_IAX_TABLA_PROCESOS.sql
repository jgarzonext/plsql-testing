--------------------------------------------------------
--  DDL for Type OB_IAX_TABLA_PROCESOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_TABLA_PROCESOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_TABLA_PROCESOS
   PROPÓSITO:  Contiene la información de la tabla intermedia de gestion de porcesos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        05/07/2010   XPL             1. Creación del objeto.
******************************************************************************/
(
   nombre_tabla   VARCHAR2(500),
   info_tabla     t_iax_info,
   CONSTRUCTOR FUNCTION ob_iax_tabla_procesos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_TABLA_PROCESOS" AS
/******************************************************************************
   NOMBRE:       OB_IAX_TABLA_PROCESOS
   PROPÓSITO:  Contiene la información de la tabla intermedia de gestion de porcesos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        05/07/2010   XPL             1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_tabla_procesos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nombre_tabla := '';
      SELF.info_tabla := t_iax_info();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_TABLA_PROCESOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TABLA_PROCESOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TABLA_PROCESOS" TO "PROGRAMADORESCSI";
