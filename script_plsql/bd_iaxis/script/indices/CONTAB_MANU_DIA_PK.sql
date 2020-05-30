--------------------------------------------------------
--  DDL for Index CONTAB_MANU_DIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CONTAB_MANU_DIA_PK" ON "AXIS"."CONTAB_MANU_DIA" ("CPAIS", "FEFEADM", "CPROCES", "CCUENTA", "NLINEA", "NASIENT", "CEMPRES", "FCONTA", "TDESCRI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
