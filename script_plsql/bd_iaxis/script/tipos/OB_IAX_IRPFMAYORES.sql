--------------------------------------------------------
--  DDL for Type OB_IAX_IRPFMAYORES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_IRPFMAYORES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_IRPFMAYORES
   PROP�SITO:  Contiene la informaci�n del IRPF mayores

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        09/02/2009   XPL                1. Creaci�n del objeto.
   2.0        11/04/2011   APD                2. 0018225: AGM704 - Realizar la modificaci�n de precisi�n el cagente
******************************************************************************/
(
   sperson        NUMBER(10),   --C�digo de �nico de persona
   nano           NUMBER(4),   --N�mero de a�o
   cagente        NUMBER,   -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
   norden         NUMBER(5),   -- N�mero de orden de los descendientes
   fnacimi        DATE,   --Fecha de nacimiento
   cgrado         NUMBER(1),   --Grado minusvalia. Valor fijo = 688
   tgrado         VARCHAR2(100),   --Descripci�n grado minusvalia.
   crenta         VARCHAR2(1),   --Nivel de Renta
   nviven         NUMBER(1),   -- Otros descendientes que vivan
   cusuari        VARCHAR2(20),   --Usuario que realiza la alta
   fmovimi        VARCHAR2(20),   --  Fecha de alta
   CONSTRUCTOR FUNCTION ob_iax_irpfmayores
      RETURN SELF AS RESULT
)
NOT FINAL;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_IRPFMAYORES" AS
   CONSTRUCTOR FUNCTION ob_iax_irpfmayores
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_IRPFMAYORES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_IRPFMAYORES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_IRPFMAYORES" TO "PROGRAMADORESCSI";
