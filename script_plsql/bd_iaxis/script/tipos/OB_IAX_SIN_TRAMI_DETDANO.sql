--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_DETDANO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_DETDANO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_DETDANO
   PROPÓSITO:  Contiene la información del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creación del objeto.
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --Número Siniestro
   ntramit        NUMBER(3),   --Número Tramitación Siniestro
   ndano          NUMBER(3),   --Número Daño Siniestro
   ndetdano       NUMBER(3),   --Número detalle Daño Siniestro
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_detdano
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_DETDANO" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_detdano
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DETDANO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DETDANO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DETDANO" TO "PROGRAMADORESCSI";
