--------------------------------------------------------
--  DDL for Index PSU_NIVEL_CONTROL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PSU_NIVEL_CONTROL_PK" ON "AXIS"."PSU_NIVEL_CONTROL" ("CCONTROL", "SPRODUC", "NVALINF") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;