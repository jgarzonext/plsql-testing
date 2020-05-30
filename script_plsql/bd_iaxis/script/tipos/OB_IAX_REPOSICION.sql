--------------------------------------------------------
--  DDL for Type OB_IAX_REPOSICION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_REPOSICION" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_REPOSICION
   PROPÓSITO:  Contiene las reposiciones

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/07/2011   APD                1. Creación del objeto.
   2.0        13/10/2011   APD                2. Modificacion de los nombres
******************************************************************************/
(
   ccodigo        NUMBER(5),   -- Código de reposición
   tdescripcion   VARCHAR2(200),   -- Descripción reposición
   cdetalle       t_iax_reposiciones_det,
   CONSTRUCTOR FUNCTION ob_iax_reposicion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_REPOSICION" AS
   CONSTRUCTOR FUNCTION ob_iax_reposicion
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodigo := 0;
      SELF.tdescripcion := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_REPOSICION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REPOSICION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REPOSICION" TO "PROGRAMADORESCSI";
