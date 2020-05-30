----3.1.1.4.1	OB_IAX_CONVCOMESP (MODIFICAR)
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('OB_IAX_CONVCOMESP','TYPE');
END;
/

--------------------------------------------------------
--  DDL for Type OB_IAX_CONVCOMESP
--------------------------------------------------------

  CREATE OR REPLACE TYPE "AXIS"."OB_IAX_CONVCOMESP" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_CONVCOMESP
   PROPÓSITO:      Comvenio comisiones especiales

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        23/01/2013  AMC              1. Creación del objeto.
******************************************************************************/
(
   idconvcomesp   NUMBER(6),   -- Identificador del convenio
   tdesconv       VARCHAR2(500 BYTE),   -- Descripción del convenio
   finivig        DATE,   -- Fecha Inicio Vigencia
   ffinvig        DATE,   -- Fecha Fin Vigencia
   cagente        NUMBER,   -- Agente
   tnomage        VARCHAR2(500 BYTE),   -- Nombre agente
   asegurados	  t_iax_personas, --Asegurados	
   cusualt        VARCHAR2(20 BYTE),   -- Código del usuario que graba / autoriza el convenio
   comisiones     t_iax_gstcomision,
   productos      t_iax_info,
   CONSTRUCTOR FUNCTION ob_iax_convcomesp
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE TYPE BODY "AXIS"."OB_IAX_CONVCOMESP" AS
   CONSTRUCTOR FUNCTION ob_iax_convcomesp
      RETURN SELF AS RESULT IS
   BEGIN
     SELF.idconvcomesp := NULL;
      SELF.tdesconv := NULL;
      SELF.finivig := NULL;
      SELF.ffinvig := NULL;
      SELF.cagente := NULL;
      SELF.tnomage := NULL;
      SELF.cusualt := NULL;
      RETURN;
   END;
END;

/
