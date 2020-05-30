--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_PERSONAREL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_PERSONAREL" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_PERSONAREL
   PROPÓSITO:  Contiene la información del siniestro
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        11/03/2009   LCF                1. Creación del objeto.
   2.0        19/11/2011   APD                2. 0019587: LCOL_P001 - PER - Validaciones dependiendo del tipo de documento
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --Número Siniestro
   ntramit        NUMBER(3),   --Número Tramitación Siniestro
   npersrel       NUMBER(4),   --Número Persona relacionada
   ctipide        NUMBER(3),   --Código Tipo Persona
   ttipide        VARCHAR2(100),   --Des Tipo Persona
   nnumide        VARCHAR2(50),
   tnombre        VARCHAR2(200),   --Nombre persona rel --Bug 29738/169099 - 13/03/2014 - AMC
   tapelli1       VARCHAR2(200),   --Primer Apellido persona rel - Bug 29738/166356 - 17/02/2014 - AMC
   tapelli2       VARCHAR2(60),   --Segundo apellido persona rel
   ttelefon       VARCHAR2(60),   --Teléfono persona rel
   sperson        NUMBER,   --Cod. persona
   persona_relacionada ob_iax_personas,   --Objeto persona
   tdesc          VARCHAR2(2000),   -- Descripcion persona relacionada
   tnombre2       VARCHAR2(60),
   tmovil         VARCHAR2(60),
   temail         VARCHAR2(60),
   ctiprel        NUMBER(3),   -- Tipo de persona relacionada VF.800111 - Bug 22256/122456 - 27/09/2012 - AMC
   ttiprel        VARCHAR2(100),
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_personarel
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_PERSONAREL" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_personarel
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.ctiprel := NULL;   -- Tipo de persona relacionada VF.800111 - Bug 22256/122456 - 27/09/2012 - AMC
      SELF.ttiprel := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_PERSONAREL" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_PERSONAREL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_PERSONAREL" TO "R_AXIS";
