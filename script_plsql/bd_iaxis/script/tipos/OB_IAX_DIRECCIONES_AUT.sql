--------------------------------------------------------
--  DDL for Type OB_IAX_DIRECCIONES_AUT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DIRECCIONES_AUT" AS OBJECT(
/******************************************************************************
   NOMBRE:       OB_IAX_DIRECCIONES_AUT
   PROP�SITO:  Contiene la informaci�n de la autorizacion de direcciones

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        31/01/2012   AMC                1. Creaci�n del objeto.
******************************************************************************/
   direccion      ob_iax_direcciones,   -- Contacto de la persona
   norden         NUMBER(5),   -- N�mero de orden de la modificaci�n de la direcci�n
   cusumod        VARCHAR2(20),   -- C�digo usuario modificaci�n
   fusumod        DATE,   -- Fecha modificaci�n registro
   fbaja          DATE,   -- Fecha de baja del contacto
   cusuaut        VARCHAR2(20),   -- C�digo usuario autorizaci�n
   fautoriz       DATE,   -- Fecha autorizaci�n / rechazo
   cestado        NUMBER(2),   -- Estado de la autorizaci�n
   testado        VARCHAR2(100),   -- Descripci�n del estado de la autorizaci�n
   tobserva       VARCHAR2(200),   -- Observaciones
   CONSTRUCTOR FUNCTION ob_iax_direcciones_aut
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DIRECCIONES_AUT" AS
   CONSTRUCTOR FUNCTION ob_iax_direcciones_aut
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.direccion := NULL;
      SELF.norden := NULL;
      SELF.cusumod := NULL;
      SELF.fusumod := NULL;
      SELF.fbaja := NULL;
      SELF.cusuaut := NULL;
      SELF.fautoriz := NULL;
      SELF.cestado := NULL;
      SELF.testado := NULL;
      SELF.tobserva := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DIRECCIONES_AUT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIRECCIONES_AUT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIRECCIONES_AUT" TO "PROGRAMADORESCSI";