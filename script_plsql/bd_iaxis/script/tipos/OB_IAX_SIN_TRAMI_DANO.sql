--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_DANO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_DANO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_DANO
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
   ctipinf        NUMBER(2),   ---Código Tipo Daño
   ttipinf        VARCHAR2(100),   --DEsc tipo daño
   tdano          VARCHAR2(5000),   --Descripción Daño
   cusualt        VARCHAR2(500),   --Código Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --Código Usuario Modificación
   fmodifi        DATE,   --Fecha Modificación
   detalle        t_iax_sin_trami_detdano,
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_dano
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_DANO" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_dano
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      detalle := t_iax_sin_trami_detdano();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DANO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DANO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DANO" TO "PROGRAMADORESCSI";
