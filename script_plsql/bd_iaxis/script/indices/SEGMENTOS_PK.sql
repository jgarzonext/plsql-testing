--------------------------------------------------------
--  DDL for Index SEGMENTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SEGMENTOS_PK" ON "AXIS"."SEGMENTOS" ("MENSAJE", "SEGMENTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS_IND" ;
