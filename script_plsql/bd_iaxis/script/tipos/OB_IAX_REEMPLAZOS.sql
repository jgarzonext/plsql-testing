--------------------------------------------------------
--  DDL for Type OB_IAX_REEMPLAZOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_REEMPLAZOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_REEMPLAZOS
   PROP�SITO:  Contiene la informaci�n de los remplazos

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        20/09/2011   JBN                1. Creaci�n del objeto.
   2.0        04/12/2012   JLTS               2. BUG 24714 - Se adiciona el campo CTIPO
******************************************************************************/
(
   sseguro        NUMBER,   --Identificador de la p�liza que reemplaza a la otra (P�liza nueva)
   sreempl        NUMBER,   --Identificador de la p�liza a reemplazar (P�liza de reemplazo)
   fmovdia        DATE,   --Fecha de alta del registro
   cusuario       VARCHAR2(20),   --Usuario que da de alta el registro
   cagente        NUMBER,   --C�digo de agente que da de alta el registro
   tagente        VARCHAR2(200),   --C�digo de agente que da de alta el registro
   npolizareempl  NUMBER,   --N�mero de p�liza de la p�liza a reemplazar (P�liza de reemplazo)
   ncertifreempl  NUMBER,   --N�mero de certificado de la p�liza a reemplazar (P�liza de reemplazo)
   npolizanueva   NUMBER,   --N�mero de p�liza de la p�liza que reemplaza a la otra (P�liza nueva)
   ncertifnueva   NUMBER,   --N�mero de certificado de la p�liza que reemplaza a la otra (P�liza nueva)
   ctipo          NUMBER,   --Tipo de reemplazo
   CONSTRUCTOR FUNCTION ob_iax_reemplazos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_REEMPLAZOS" AS
/******************************************************************************
   NOMBRE:       OB_IAX_REEMPLAZOS
   PROP�SITO:  Contiene la informaci�n de los remplazos

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        20/09/2011   JBN                1. Creaci�n del objeto.
   2.0        04/12/2012   JLTS               2. BUG 24714 - Se adiciona el campo CTIPO
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_reemplazos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.sreempl := NULL;
      SELF.fmovdia := NULL;
      SELF.cusuario := NULL;
      SELF.cagente := NULL;
      SELF.tagente := NULL;
      SELF.npolizareempl := NULL;
      SELF.ncertifreempl := NULL;
      SELF.npolizanueva := NULL;
      SELF.ncertifnueva := NULL;
      SELF.ctipo := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_REEMPLAZOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REEMPLAZOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REEMPLAZOS" TO "PROGRAMADORESCSI";
