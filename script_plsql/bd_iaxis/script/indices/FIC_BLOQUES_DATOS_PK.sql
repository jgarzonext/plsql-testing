--------------------------------------------------------
--  DDL for Index FIC_BLOQUES_DATOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."FIC_BLOQUES_DATOS_PK" ON "AXIS"."FIC_BLOQUES_DATOS" ("TBLQDAT", "TGESTOR", "TFORMAT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;