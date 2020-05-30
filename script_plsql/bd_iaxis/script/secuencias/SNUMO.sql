--------------------------------------------------------
--  DDL for Sequence SNUMO
--------------------------------------------------------

   CREATE SEQUENCE  "AXIS"."SNUMO"  MINVALUE 0 MAXVALUE 999999 INCREMENT BY 1 START WITH 0 NOCACHE  NOORDER  NOCYCLE   ;
  GRANT SELECT ON "AXIS"."SNUMO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SNUMO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SNUMO" TO "PROGRAMADORESCSI";
