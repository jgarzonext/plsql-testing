--------------------------------------------------------
--  DDL for Table CODCAMPO
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODCAMPO" 
   (	"CCAMPO" VARCHAR2(8 BYTE), 
	"TCAMPO" VARCHAR2(50 BYTE), 
	"CUTILI" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODCAMPO"."CCAMPO" IS 'Codigo de Campo';
   COMMENT ON COLUMN "AXIS"."CODCAMPO"."TCAMPO" IS 'Descripci�n Campo';
   COMMENT ON COLUMN "AXIS"."CODCAMPO"."CUTILI" IS 'Donde se utilizan las f�rmulas (v.f. 203)';
  GRANT UPDATE ON "AXIS"."CODCAMPO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODCAMPO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODCAMPO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODCAMPO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODCAMPO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODCAMPO" TO "PROGRAMADORESCSI";
