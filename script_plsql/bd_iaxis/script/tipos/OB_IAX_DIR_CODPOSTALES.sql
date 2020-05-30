--------------------------------------------------------
--  DDL for Type OB_IAX_DIR_CODPOSTALES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DIR_CODPOSTALES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DIR_CODPOSTALES
   PROPOSITO:    Tabla de codigos postales

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   AMC                     1. Creación del objeto.
******************************************************************************/
(
   cpostal        VARCHAR2(30),   --Codigo postal
   idlocal        NUMBER(8),   --Identificador de localidad
   cvalcp         NUMBER(1),   --CP Validado
   geodirecciones t_iax_dir_geodirecciones,
   callespostales t_iax_dir_callescpostales,
   CONSTRUCTOR FUNCTION ob_iax_dir_codpostales
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DIR_CODPOSTALES" AS
   CONSTRUCTOR FUNCTION ob_iax_dir_codpostales
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cpostal := NULL;
      SELF.idlocal := NULL;
      SELF.cvalcp := NULL;
      SELF.geodirecciones := NULL;
      SELF.callespostales := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_CODPOSTALES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_CODPOSTALES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_CODPOSTALES" TO "PROGRAMADORESCSI";
