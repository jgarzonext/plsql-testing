--------------------------------------------------------
--  DDL for Type OB_IAX_SINIESTRO_REFERENCIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SINIESTRO_REFERENCIAS" AS OBJECT
/******************************************************************************
   NOMBRE:      OB_IAX_SINIESTRO_REFERENCIAS
   PROPÓSITO:  Contiene la información de las referencias del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        09/08/2011   JRB                1. Creación del objeto.
******************************************************************************/
(
   srefext        NUMBER(6),   --Secuencia Referencias Externas
   nsinies        VARCHAR2(14),   --Número Siniestro
   ctipref        NUMBER(2),   --Código Tipo de Referencia
   trefext        VARCHAR2(50),   --Referencia Externa
   frefini        DATE,   --Fecha inicio referencia
   freffin        DATE,   --Fecha fin referencia
   cusualt        VARCHAR2(20),   --Código Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --Código Usuario Modificación
   fmodifi        DATE,   --Fecha Modificación
   ttipref        VARCHAR2(200),   ---Código Tipo de Referencia
   CONSTRUCTOR FUNCTION ob_iax_siniestro_referencias
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SINIESTRO_REFERENCIAS" AS
   CONSTRUCTOR FUNCTION ob_iax_siniestro_referencias
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SINIESTRO_REFERENCIAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SINIESTRO_REFERENCIAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SINIESTRO_REFERENCIAS" TO "PROGRAMADORESCSI";
