--------------------------------------------------------
--  DDL for Table FIS_FSE4507
--------------------------------------------------------

  CREATE TABLE "AXIS"."FIS_FSE4507" 
   (	"SFSE4507" NUMBER(8,0), 
	"CERROR" NUMBER(3,0), 
	"SFISCAB_P" NUMBER(8,0), 
	"SFISCAB_C" NUMBER(8,0), 
	"NANYFISC" NUMBER(6,0), 
	"TIPREG" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"DIA_FITXER" DATE, 
	"TEXT_ERROR" VARCHAR2(60 BYTE), 
	"CESTAT" NUMBER(1,0), 
	"NIF1" VARCHAR2(13 BYTE), 
	"NIF2" VARCHAR2(13 BYTE), 
	"SFSE4500" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FIS_FSE4507"."CERROR" IS 'Codi Error';
   COMMENT ON COLUMN "AXIS"."FIS_FSE4507"."NANYFISC" IS 'Periode Fiscal';
   COMMENT ON COLUMN "AXIS"."FIS_FSE4507"."TIPREG" IS 'Tipus de registre per a l''enviament';
   COMMENT ON COLUMN "AXIS"."FIS_FSE4507"."SSEGURO" IS 'Refer�ncia comunicaci� amb ATCA';
   COMMENT ON COLUMN "AXIS"."FIS_FSE4507"."DIA_FITXER" IS 'Data fitxer ATCA';
   COMMENT ON COLUMN "AXIS"."FIS_FSE4507"."TEXT_ERROR" IS 'Literal Error';
   COMMENT ON TABLE "AXIS"."FIS_FSE4507"  IS 'Informaci� fiscal - Retorn d''ATCA';
  GRANT UPDATE ON "AXIS"."FIS_FSE4507" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIS_FSE4507" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FIS_FSE4507" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FIS_FSE4507" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIS_FSE4507" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FIS_FSE4507" TO "PROGRAMADORESCSI";
