--------------------------------------------------------
--  DDL for Type OB_IAX_SINIESTRO_REFERENCIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SINIESTRO_REFERENCIAS" AS OBJECT
/******************************************************************************
   NOMBRE:      OB_IAX_SINIESTRO_REFERENCIAS
   PROP�SITO:  Contiene la informaci�n de las referencias del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        09/08/2011   JRB                1. Creaci�n del objeto.
******************************************************************************/
(
   srefext        NUMBER(6),   --Secuencia Referencias Externas
   nsinies        VARCHAR2(14),   --N�mero Siniestro
   ctipref        NUMBER(2),   --C�digo Tipo de Referencia
   trefext        VARCHAR2(50),   --Referencia Externa
   frefini        DATE,   --Fecha inicio referencia
   freffin        DATE,   --Fecha fin referencia
   cusualt        VARCHAR2(20),   --C�digo Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --C�digo Usuario Modificaci�n
   fmodifi        DATE,   --Fecha Modificaci�n
   ttipref        VARCHAR2(200),   ---C�digo Tipo de Referencia
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
