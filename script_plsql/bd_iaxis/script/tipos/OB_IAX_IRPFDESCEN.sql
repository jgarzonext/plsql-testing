--------------------------------------------------------
--  DDL for Type OB_IAX_IRPFDESCEN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_IRPFDESCEN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_IRPFDESCEN
   PROP�SITO:  Contiene la informaci�n del IRPF

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        09/02/2009   XPL                1. Creaci�n del objeto.
   2.0        25/03/2010   AMC                2. Se a�ade la fecha de adopci�n
   3.0        11/04/2011   APD                3. 0018225: AGM704 - Realizar la modificaci�n de precisi�n el cagente
******************************************************************************/
(
   sperson        NUMBER(10),   --C�digo de �nico de persona
   nano           NUMBER(4),   --N�mero de a�o
   cagente        NUMBER,   -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
   norden         NUMBER(5),   -- N�mero de orden de los descendientes
   fnacimi        DATE,   --Fecha de nacimiento
   fadopcion      DATE,   -- Fecha de adopci�n
   cgrado         NUMBER(1),   --Grado minusvalia. Valor fijo = 688
   tgrado         VARCHAR2(100),   --Descripci�n grado minusvalia.
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
