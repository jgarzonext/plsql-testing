--------------------------------------------------------
--  DDL for View TAB_ERROR
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."TAB_ERROR" ("FERROR", "CUSUARI", "TOBJETO", "NTRAZA", "TDESCRIP", "TERROR") AS 
  select "FERROR","CUSUARI","TOBJETO","NTRAZA","TDESCRIP","TERROR" from
(
select * from tab_error_d01
union all
select * from tab_error_d02
union all
select * from tab_error_d03
union all
select * from tab_error_d04
union all
select * from tab_error_d05
union all
select * from tab_error_d06
union all
select * from tab_error_d07
)
order by ferror desc
;
  GRANT DELETE ON "AXIS"."TAB_ERROR" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."TAB_ERROR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TAB_ERROR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TAB_ERROR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TAB_ERROR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TAB_ERROR" TO "PROGRAMADORESCSI";
