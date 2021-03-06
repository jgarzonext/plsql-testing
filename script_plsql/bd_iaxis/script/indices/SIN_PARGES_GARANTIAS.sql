--------------------------------------------------------
--  DDL for Index SIN_PARGES_GARANTIAS
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SIN_PARGES_GARANTIAS" ON "AXIS"."SIN_PARGES_GARANTIAS" ("SPRODUC", "CACTIVI", "CGARANT", "CTIPREG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."SIN_PARGES_GARANTIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PARGES_GARANTIAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_PARGES_GARANTIAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_PARGES_GARANTIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PARGES_GARANTIAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_PARGES_GARANTIAS" TO "PROGRAMADORESCSI";
