--------------------------------------------------------
--  DDL for Index MENU_OPCIONES_CMENPAD
--------------------------------------------------------

  CREATE INDEX "AXIS"."MENU_OPCIONES_CMENPAD" ON "AXIS"."MENU_OPCIONES" ("CMENPAD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS_IND" ;