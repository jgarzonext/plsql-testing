--------------------------------------------------------
--  DDL for Type OB_IAX_COBBANCARIOSEL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_COBBANCARIOSEL" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_COBBANCARIO
   PROPÓSITO: Objeto que sirve para tener la información de la selección de un cobrador bancario

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/09/2010   ICV                1. Creación del objeto.
   2.0        11/04/2011   APD                2. 0018225: AGM704 - Realizar la modificación de precisión el cagente
******************************************************************************/
(
   ccobban        NUMBER(3),   --Código de cobrador bancario
   norden         NUMBER(4),   --Orden prioridad en la selección
   cramo          NUMBER(8),   --Código ramo
   tramo          VARCHAR2(100),
   ctipseg        NUMBER(2),   --Código tipo de seguro
   ccolect        NUMBER(2),   --Código de colectividad
   cmodali        NUMBER(2),   --Código modalidad
   sproduc        NUMBER(6),
   ttitulo        VARCHAR2(100),
   cempres        NUMBER(2),   --Código de Empresa
   cbanco         NUMBER(4),   --Código de Banco
   tbanco         VARCHAR2(150),   --Descripción del banco
   cagente        NUMBER,   --Código de agente  -- Bug 18225 - APD - 11/04/2011 - la precisión debe ser NUMBER
   tagente        VARCHAR2(150),   --Descripción del agente
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
