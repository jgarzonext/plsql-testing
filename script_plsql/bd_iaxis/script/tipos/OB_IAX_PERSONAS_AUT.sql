--------------------------------------------------------
--  DDL for Type OB_IAX_PERSONAS_AUT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PERSONAS_AUT" AS OBJECT(
/******************************************************************************
   NOMBRE:       OB_IAX_PERSONAS_AUT
   PROP�SITO:  Contiene la informaci�n de la autorizacion de direcciones

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        31/01/2012   AMC                1. Creaci�n del objeto.
******************************************************************************/
   sperson        NUMBER(10),   -- Secuencia unica de identificaci�n de una persona
   cagente        NUMBER,   -- C�digo agente
   contactos_aut  t_iax_contactos_aut,   -- Lista de autorizaciones de modificaciones de contados
   direcciones_aut t_iax_direcciones_aut,   -- Lista de autorizaciones de modificaciones de direcciones
   CONSTRUCTOR FUNCTION ob_iax_personas_aut
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PERSONAS_AUT" AS
   CONSTRUCTOR FUNCTION ob_iax_personas_aut
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := NULL;
      SELF.cagente := NULL;
      SELF.contactos_aut := NULL;
      SELF.direcciones_aut := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PERSONAS_AUT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PERSONAS_AUT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PERSONAS_AUT" TO "PROGRAMADORESCSI";
