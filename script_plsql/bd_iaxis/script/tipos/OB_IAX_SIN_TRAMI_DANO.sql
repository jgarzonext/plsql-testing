--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_DANO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_DANO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_DANO
   PROP�SITO:  Contiene la informaci�n del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creaci�n del objeto.
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --N�mero Siniestro
   ntramit        NUMBER(3),   --N�mero Tramitaci�n Siniestro
   ndano          NUMBER(3),   --N�mero Da�o Siniestro
   ctipinf        NUMBER(2),   ---C�digo Tipo Da�o
   ttipinf        VARCHAR2(100),   --DEsc tipo da�o
   tdano          VARCHAR2(5000),   --Descripci�n Da�o
   cusualt        VARCHAR2(500),   --C�digo Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --C�digo Usuario Modificaci�n
   fmodifi        DATE,   --Fecha Modificaci�n
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
