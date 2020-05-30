--------------------------------------------------------
--  DDL for Sequence SHISREC
--------------------------------------------------------

   CREATE SEQUENCE  "AXIS"."SHISREC"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 18235 CACHE 20 NOORDER  NOCYCLE   ;
  GRANT SELECT ON "AXIS"."SHISREC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SHISREC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SHISREC" TO "PROGRAMADORESCSI";