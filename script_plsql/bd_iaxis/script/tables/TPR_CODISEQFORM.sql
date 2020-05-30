--------------------------------------------------------
--  DDL for Table TPR_CODISEQFORM
--------------------------------------------------------

  CREATE TABLE "AXIS"."TPR_CODISEQFORM" 
   (	"SFORM" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TPR_CODISEQFORM"."SFORM" IS 'Identificativo unico';
   COMMENT ON TABLE "AXIS"."TPR_CODISEQFORM"  IS 'Codigos de secuencias de pantallas';
  GRANT UPDATE ON "AXIS"."TPR_CODISEQFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TPR_CODISEQFORM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TPR_CODISEQFORM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TPR_CODISEQFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TPR_CODISEQFORM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TPR_CODISEQFORM" TO "PROGRAMADORESCSI";