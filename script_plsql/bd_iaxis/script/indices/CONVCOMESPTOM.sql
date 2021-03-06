--------------------------------------------------------
--  DDL for Index CONVCOMESPTOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CONVCOMESPTOM" ON "AXIS"."CONVCOMESPTOM" ("IDCONVCOMESP", "SPERSON") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."CONVCOMESPTOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONVCOMESPTOM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONVCOMESPTOM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONVCOMESPTOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONVCOMESPTOM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONVCOMESPTOM" TO "PROGRAMADORESCSI";
