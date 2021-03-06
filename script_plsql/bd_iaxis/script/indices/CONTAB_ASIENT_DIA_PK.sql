--------------------------------------------------------
--  DDL for Index CONTAB_ASIENT_DIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CONTAB_ASIENT_DIA_PK" ON "AXIS"."CONTAB_ASIENT_DIA" ("CPAIS", "FEFEADM", "CPROCES", "CCUENTA", "NLINEA", "NASIENT", "CEMPRES", "FCONTA", "TDESCRI", "CMANUAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
