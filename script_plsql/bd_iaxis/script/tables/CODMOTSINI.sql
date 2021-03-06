--------------------------------------------------------
--  DDL for Table CODMOTSINI
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODMOTSINI" 
   (	"CRAMO" NUMBER(8,0), 
	"CCAUSIN" NUMBER(4,0), 
	"CMOTSIN" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODMOTSINI"."CRAMO" IS 'Id del ramo';
   COMMENT ON COLUMN "AXIS"."CODMOTSINI"."CCAUSIN" IS 'Id de la causa del siniestro';
   COMMENT ON COLUMN "AXIS"."CODMOTSINI"."CMOTSIN" IS 'Id del motivo del siniestro';
   COMMENT ON TABLE "AXIS"."CODMOTSINI"  IS 'Motivos de siniestro por ramo y causa';
  GRANT UPDATE ON "AXIS"."CODMOTSINI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODMOTSINI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODMOTSINI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODMOTSINI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODMOTSINI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODMOTSINI" TO "PROGRAMADORESCSI";
