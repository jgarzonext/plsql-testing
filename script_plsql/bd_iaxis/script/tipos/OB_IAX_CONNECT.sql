--------------------------------------------------------
--  DDL for Type OB_IAX_CONNECT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CONNECT" AS OBJECT
(
  ctipo   NUMBER(5),
  cvalxml CLOB
);

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CONNECT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONNECT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONNECT" TO "PROGRAMADORESCSI";
