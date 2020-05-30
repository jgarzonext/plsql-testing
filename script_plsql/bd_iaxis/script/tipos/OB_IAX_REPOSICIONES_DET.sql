--------------------------------------------------------
--  DDL for Type OB_IAX_REPOSICIONES_DET
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_REPOSICIONES_DET" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_REPOSICIONES_DET
   PROPÓSITO:  Contiene el detalle de una reposición

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/07/2011   APD                1. Creación del objeto.
   2.0        13/10/2011   APD                2. Modificacion de los nombres
   3.0        19/07/2013   RCL                3. Modificació ptasa de NUMBER(5,2) a NUMBER
******************************************************************************/
(
   ccodigo        NUMBER(5),   --    Código de reposición
   norden         NUMBER(3),   --    Orden
   icapacidad     NUMBER(14, 3),   --    Capacidad
   ptasa          NUMBER,   --    Tasa
   CONSTRUCTOR FUNCTION ob_iax_reposiciones_det
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_REPOSICIONES_DET" AS
   CONSTRUCTOR FUNCTION ob_iax_reposiciones_det
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodigo := 0;
      SELF.norden := 0;
      SELF.icapacidad := 0;
      SELF.ptasa := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_REPOSICIONES_DET" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REPOSICIONES_DET" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REPOSICIONES_DET" TO "PROGRAMADORESCSI";
