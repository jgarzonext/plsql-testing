--------------------------------------------------------
--  DDL for Index COMISIONGAR_NIVEL_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."COMISIONGAR_NIVEL_INDEX1" ON "AXIS"."COMISIONGAR_NIVEL" ("CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "CACTIVI", "CGARANT", "CCOMISI", "CMODCOM", "FINIVIG", "NINIALT", "CCANAL", "CMEDIO", "CSEGMENTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
