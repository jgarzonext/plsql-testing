--------------------------------------------------------
--  DDL for Sequence SIMPLOG
--------------------------------------------------------

   CREATE SEQUENCE  "AXIS"."SIMPLOG"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1955 CACHE 20 NOORDER  NOCYCLE   ;
  GRANT SELECT ON "AXIS"."SIMPLOG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIMPLOG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIMPLOG" TO "PROGRAMADORESCSI";