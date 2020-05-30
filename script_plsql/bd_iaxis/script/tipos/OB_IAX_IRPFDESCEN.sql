--------------------------------------------------------
--  DDL for Type OB_IAX_IRPFDESCEN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_IRPFDESCEN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_IRPFDESCEN
   PROPÓSITO:  Contiene la información del IRPF

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        09/02/2009   XPL                1. Creación del objeto.
   2.0        25/03/2010   AMC                2. Se añade la fecha de adopción
   3.0        11/04/2011   APD                3. 0018225: AGM704 - Realizar la modificación de precisión el cagente
******************************************************************************/
(
   sperson        NUMBER(10),   --Código de único de persona
   nano           NUMBER(4),   --Número de año
   cagente        NUMBER,   -- Bug 18225 - APD - 11/04/2011 - la precisión debe ser NUMBER
   norden         NUMBER(5),   -- Número de orden de los descendientes
   fnacimi        DATE,   --Fecha de nacimiento
   fadopcion      DATE,   -- Fecha de adopción
   cgrado         NUMBER(1),   --Grado minusvalia. Valor fijo = 688
   tgrado         VARCHAR2(100),   --Descripción grado minusvalia.
   center         NUMBER(1),   --Entero
   cusuari        VARCHAR2(20),   --Usuario que realiza la alta
   fmovimi        VARCHAR2(20),   --  Fecha de alta
   CONSTRUCTOR FUNCTION ob_iax_irpfdescen
      RETURN SELF AS RESULT
)
NOT FINAL;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_IRPFDESCEN" AS
   CONSTRUCTOR FUNCTION ob_iax_irpfdescen
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_IRPFDESCEN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_IRPFDESCEN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_IRPFDESCEN" TO "PROGRAMADORESCSI";
