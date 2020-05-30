--------------------------------------------------------
--  DDL for Index SGT_PREGUNTAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SGT_PREGUNTAS_PK" ON "AXIS"."SGT_PREGUNTAS" ("PREGUNTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS_IND" ;
