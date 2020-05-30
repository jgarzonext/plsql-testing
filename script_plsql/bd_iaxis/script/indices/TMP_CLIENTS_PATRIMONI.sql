--------------------------------------------------------
--  DDL for Index TMP_CLIENTS_PATRIMONI
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."TMP_CLIENTS_PATRIMONI" ON "AXIS"."TMP_CLIENTS_PATRIMONI" ("CPERHOS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS_IND" ;
  GRANT UPDATE ON "AXIS"."TMP_CLIENTS_PATRIMONI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_CLIENTS_PATRIMONI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_CLIENTS_PATRIMONI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_CLIENTS_PATRIMONI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_CLIENTS_PATRIMONI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_CLIENTS_PATRIMONI" TO "PROGRAMADORESCSI";
