--------------------------------------------------------
--  DDL for Type OB_PERSIS_PERSONA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_PERSIS_PERSONA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_PERSIS_suplemento
   PROPÓSITO:  Contiene la información del detalle de suplemento

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/11/2011   JLB              1. Creación del objeto.
******************************************************************************/
(
   persona        ob_iax_personas,   --Objeto persona
   gidioma        NUMBER,   --Código idioma
   v_obirpf       ob_iax_irpf,
   parpersonas    t_iax_par_personas,
   CONSTRUCTOR FUNCTION ob_persis_persona
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_PERSIS_PERSONA" AS
   CONSTRUCTOR FUNCTION ob_persis_persona
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.persona := ob_iax_personas();   --Objeto persona
      SELF.gidioma := pac_md_common.f_get_cxtidioma();   --Código idioma
      SELF.v_obirpf := ob_iax_irpf();
      SELF.parpersonas := t_iax_par_personas();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_PERSIS_PERSONA" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_PERSONA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_PERSONA" TO "R_AXIS";
