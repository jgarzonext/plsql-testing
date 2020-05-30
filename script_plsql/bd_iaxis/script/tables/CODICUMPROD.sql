--------------------------------------------------------
--  DDL for Table CODICUMPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODICUMPROD" 
   (	"CCUMPROD" NUMBER(6,0), 
	"TOBSERV" VARCHAR2(100 BYTE), 
	"CMAXCUM" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODICUMPROD"."CCUMPROD" IS 'Codi de c�mul per producte';
   COMMENT ON COLUMN "AXIS"."CODICUMPROD"."TOBSERV" IS 'Observacions';
   COMMENT ON COLUMN "AXIS"."CODICUMPROD"."CMAXCUM" IS 'Utilitzar el maxims del c�mul 0-No, 1-Si';
   COMMENT ON TABLE "AXIS"."CODICUMPROD"  IS 'C�muls per producte';
  GRANT UPDATE ON "AXIS"."CODICUMPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODICUMPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODICUMPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODICUMPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODICUMPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODICUMPROD" TO "PROGRAMADORESCSI";