--------------------------------------------------------
--  DDL for Type OB_IAX_COBBANCARIOSEL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_COBBANCARIOSEL" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_COBBANCARIO
   PROP�SITO: Objeto que sirve para tener la informaci�n de la selecci�n de un cobrador bancario

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/09/2010   ICV                1. Creaci�n del objeto.
   2.0        11/04/2011   APD                2. 0018225: AGM704 - Realizar la modificaci�n de precisi�n el cagente
******************************************************************************/
(
   ccobban        NUMBER(3),   --C�digo de cobrador bancario
   norden         NUMBER(4),   --Orden prioridad en la selecci�n
   cramo          NUMBER(8),   --C�digo ramo
   tramo          VARCHAR2(100),
   ctipseg        NUMBER(2),   --C�digo tipo de seguro
   ccolect        NUMBER(2),   --C�digo de colectividad
   cmodali        NUMBER(2),   --C�digo modalidad
   sproduc        NUMBER(6),
   ttitulo        VARCHAR2(100),
   cempres        NUMBER(2),   --C�digo de Empresa
   cbanco         NUMBER(4),   --C�digo de Banco
   tbanco         VARCHAR2(150),   --Descripci�n del banco
   cagente        NUMBER,   --C�digo de agente  -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
   tagente        VARCHAR2(150),   --Descripci�n del agente
   ctipage        NUMBER(2),   --Tipo de Agente
   CONSTRUCTOR FUNCTION ob_iax_cobbancariosel
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_COBBANCARIOSEL" AS
   CONSTRUCTOR FUNCTION ob_iax_cobbancariosel
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccobban := NULL;
      SELF.norden := NULL;
      SELF.cramo := NULL;
      SELF.ctipseg := NULL;
      SELF.cempres := NULL;
      SELF.ccolect := NULL;
      SELF.cbanco := NULL;
      SELF.cmodali := NULL;
      SELF.cagente := NULL;
      SELF.ctipage := NULL;
      SELF.tbanco := NULL;
      SELF.tagente := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_COBBANCARIOSEL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COBBANCARIOSEL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COBBANCARIOSEL" TO "PROGRAMADORESCSI";
