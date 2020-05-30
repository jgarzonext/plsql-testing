--------------------------------------------------------
--  DDL for Type OB_IAX_RETORNO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_RETORNO" UNDER ob_iax_personas
/******************************************************************************
   NOMBRE:     OB_IAX_RETORNO
   PROPÓSITO:  Contiene la información retorno convenio beneficiario

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        03/09/2012   JMF                1. Creación del objeto.
   2.0        01/07/2013   RCL              2. 0024697: LCOL_T031-Tamaño del campo SSEGURO
******************************************************************************/
(
   sseguro        NUMBER,   -- Identificador del seguro
   nmovimi        NUMBER(4),   -- Número de movimiento
   pretorno       NUMBER(5, 2),   -- Porcentaje de Retorno
   idconvenio     NUMBER(6),   -- Identificador del convenio
   CONSTRUCTOR FUNCTION ob_iax_retorno
      RETURN SELF AS RESULT
)
;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_RETORNO" AS
   CONSTRUCTOR FUNCTION ob_iax_retorno
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.nmovimi := NULL;
      SELF.pretorno := NULL;
      SELF.idconvenio := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_RETORNO" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_RETORNO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_RETORNO" TO "R_AXIS";
