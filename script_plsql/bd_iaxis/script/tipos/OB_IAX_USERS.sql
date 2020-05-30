--------------------------------------------------------
--  DDL for Type OB_IAX_USERS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_USERS" AS OBJECT(
   cusuari        VARCHAR2(20),   --C�digo de Usuario
   cidioma        NUMBER(2),   --C�digo del idioma, (1.- Catal�  2.- Castellano)
   cempres        NUMBER(2),   --C�digo de empresa
   cagente        NUMBER,   --C�digo de agente -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
   ctipusu        NUMBER(2),   --Codigo tipo usuario
   nombre         VARCHAR2(70),   --Nombre de usuario
   pool           NUMBER(1),   --1. conexi�n pool   2. conexi�n exclusiva
   cusuariodb     VARCHAR2(20),   --usuario con el que se deber� reconectar a la base de datos
   passworddb     VARCHAR2(100),   --constrase�a encryptada de conexi�n a la base de datos
   copcion        NUMBER(6),   --ID de la opcion
   tagente        VARCHAR2(200),   -- Descripci�n del agente (bug 18039-21/03/2011-AMC)
   fultimologin   DATE,
   CONSTRUCTOR FUNCTION ob_iax_users
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_USERS" AS
   CONSTRUCTOR FUNCTION ob_iax_users
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cusuari := '';
      SELF.cidioma := 0;
      SELF.cempres := 0;
      SELF.ctipusu := 0;
      SELF.copcion := 0;
      SELF.cagente := 0;
      SELF.nombre := '';
      SELF.pool := 1;   -- PER DEFECTE S'ESTABLEIX COM A LOGIC
      SELF.tagente := '';
      fultimologin := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_USERS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_USERS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_USERS" TO "PROGRAMADORESCSI";
