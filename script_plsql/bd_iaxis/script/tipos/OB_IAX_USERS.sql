--------------------------------------------------------
--  DDL for Type OB_IAX_USERS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_USERS" AS OBJECT(
   cusuari        VARCHAR2(20),   --Código de Usuario
   cidioma        NUMBER(2),   --Código del idioma, (1.- Català  2.- Castellano)
   cempres        NUMBER(2),   --Código de empresa
   cagente        NUMBER,   --Código de agente -- Bug 18225 - APD - 11/04/2011 - la precisión debe ser NUMBER
   ctipusu        NUMBER(2),   --Codigo tipo usuario
   nombre         VARCHAR2(70),   --Nombre de usuario
   pool           NUMBER(1),   --1. conexión pool   2. conexión exclusiva
   cusuariodb     VARCHAR2(20),   --usuario con el que se deberá reconectar a la base de datos
   passworddb     VARCHAR2(100),   --constraseña encryptada de conexión a la base de datos
   copcion        NUMBER(6),   --ID de la opcion
   tagente        VARCHAR2(200),   -- Descripción del agente (bug 18039-21/03/2011-AMC)
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
