--------------------------------------------------------
--  DDL for Type OB_IAX_CLAUSUPARA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CLAUSUPARA" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_CLAUSUPARA
   PROPÓSITO:  Contiene la información de los parametros de las clausulas

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/11/2010   JBN                1. Creación del objeto.
******************************************************************************/
(
   sclagen        NUMBER(4),
   nparame        NUMBER(2),
   cformat        NUMBER(2),
   tparame        VARCHAR2(50),
   ttexto         VARCHAR2(50),
   tvalclau       VARCHAR2(100),
   nordcla        NUMBER,
   valores        t_iaxclausupara_valores,
   CONSTRUCTOR FUNCTION ob_iax_clausupara
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CLAUSUPARA" AS
   CONSTRUCTOR FUNCTION ob_iax_clausupara
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sclagen := 0;
      SELF.nparame := 0;
      SELF.cformat := 0;
      SELF.tparame := NULL;
      SELF.ttexto := NULL;
      SELF.tvalclau := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CLAUSUPARA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CLAUSUPARA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CLAUSUPARA" TO "PROGRAMADORESCSI";
