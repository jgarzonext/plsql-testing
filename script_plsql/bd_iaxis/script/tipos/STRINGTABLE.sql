--------------------------------------------------------
--  DDL for Type STRINGTABLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."STRINGTABLE" is table of VARCHAR2(5000);

/

  GRANT EXECUTE ON "AXIS"."STRINGTABLE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."STRINGTABLE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."STRINGTABLE" TO "PROGRAMADORESCSI";
