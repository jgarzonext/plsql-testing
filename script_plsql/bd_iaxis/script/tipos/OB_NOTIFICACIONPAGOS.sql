--------------------------------------------------------
--  DDL for Type OB_NOTIFICACIONPAGOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_NOTIFICACIONPAGOS" AS OBJECT(
   tipo           VARCHAR2(100),
   tipo_moneda    VARCHAR2(3),
   valor          NUMBER,
   CONSTRUCTOR FUNCTION ob_notificacionpagos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_NOTIFICACIONPAGOS" AS
   CONSTRUCTOR FUNCTION ob_notificacionpagos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.tipo := NULL;
      SELF.tipo := NULL;
      SELF.valor := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_NOTIFICACIONPAGOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_NOTIFICACIONPAGOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_NOTIFICACIONPAGOS" TO "PROGRAMADORESCSI";
