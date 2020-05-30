--------------------------------------------------------
--  DDL for Index LRE_VALIDACION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."LRE_VALIDACION_PK" ON "AXIS"."LRE_VALIDACION" ("CEMPRES", "SPRODUC", "CACTIVI", "NORDVAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;