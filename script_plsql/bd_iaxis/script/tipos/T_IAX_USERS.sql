--------------------------------------------------------
--  DDL for Type T_IAX_USERS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_IAX_USERS" AS TABLE OF ob_iax_users;

/

  GRANT EXECUTE ON "AXIS"."T_IAX_USERS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_IAX_USERS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_IAX_USERS" TO "PROGRAMADORESCSI";
