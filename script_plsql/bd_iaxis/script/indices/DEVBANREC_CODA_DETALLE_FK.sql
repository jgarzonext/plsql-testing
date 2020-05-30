--------------------------------------------------------
--  DDL for Index DEVBANREC_CODA_DETALLE_FK
--------------------------------------------------------

  CREATE INDEX "AXIS"."DEVBANREC_CODA_DETALLE_FK" ON "AXIS"."DEVBANREC_CODA_DETALLE" ("SDEVOLU", "NNUMLIN", "CBANCAR1", "NNUMORD", "FULTSALD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;