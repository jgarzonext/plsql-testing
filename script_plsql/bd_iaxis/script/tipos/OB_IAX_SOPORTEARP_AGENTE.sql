--------------------------------------------------------
--  DDL for Type OB_IAX_SOPORTEARP_AGENTE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SOPORTEARP_AGENTE" AS OBJECT
/******************************************************************************
   NOMBRE:  OB_IAX_SOPORTEARP_AGENTE
   PROPÓSITO:     Objeto para contener Valor del Soporte por ARP

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/09/2011   APD                1. 0019169: LCOL_C001 - Campos nuevos a añadir para Agentes
******************************************************************************/
(
   cagente        NUMBER,   --    Código de agente
   iimporte       NUMBER,   --NUMBER(13, 2),   --    Importe que se le asigna a algunas ADN''s por dar soporte administrativo
   finivig        DATE,   --    Fecha inicio vigencia
   ffinvig        DATE,   --    Fecha fin vigencia
   CONSTRUCTOR FUNCTION ob_iax_soportearp_agente
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SOPORTEARP_AGENTE" AS
   CONSTRUCTOR FUNCTION ob_iax_soportearp_agente
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cagente := NULL;
      SELF.iimporte := NULL;
      SELF.finivig := NULL;
      SELF.ffinvig := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SOPORTEARP_AGENTE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SOPORTEARP_AGENTE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SOPORTEARP_AGENTE" TO "PROGRAMADORESCSI";
