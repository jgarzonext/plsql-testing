--------------------------------------------------------
--  DDL for Type T_NOTIFICACIONPAGOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_NOTIFICACIONPAGOS" AS TABLE OF ob_notificacionpagos;

/

  GRANT EXECUTE ON "AXIS"."T_NOTIFICACIONPAGOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_NOTIFICACIONPAGOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_NOTIFICACIONPAGOS" TO "PROGRAMADORESCSI";
