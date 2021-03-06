--------------------------------------------------------
--  DDL for Table MIG_CARGAS_TAB_MIG
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CARGAS_TAB_MIG" 
   (	"NCARGA" NUMBER, 
	"NTAB" NUMBER, 
	"TAB_ORG" VARCHAR2(100 BYTE), 
	"TAB_DES" VARCHAR2(100 BYTE), 
	"FINIDES" DATE, 
	"FFINDES" DATE, 
	"ESTDES" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_CARGAS_TAB_MIG"."NCARGA" IS 'N�mero Carga';
   COMMENT ON COLUMN "AXIS"."MIG_CARGAS_TAB_MIG"."TAB_ORG" IS 'Nombre tabla cliente';
   COMMENT ON COLUMN "AXIS"."MIG_CARGAS_TAB_MIG"."TAB_DES" IS 'Nombre tabla modelo MIG';
   COMMENT ON COLUMN "AXIS"."MIG_CARGAS_TAB_MIG"."FINIDES" IS 'Fecha inicio carga de MIG a AXIS';
   COMMENT ON COLUMN "AXIS"."MIG_CARGAS_TAB_MIG"."FFINDES" IS 'Fecha final carga de MIG a AXIS';
   COMMENT ON COLUMN "AXIS"."MIG_CARGAS_TAB_MIG"."ESTDES" IS 'Estado carga de MIG a AXIS';
   COMMENT ON TABLE "AXIS"."MIG_CARGAS_TAB_MIG"  IS 'Tabla Migraci�n Cargas';
  GRANT UPDATE ON "AXIS"."MIG_CARGAS_TAB_MIG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CARGAS_TAB_MIG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CARGAS_TAB_MIG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_CARGAS_TAB_MIG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CARGAS_TAB_MIG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CARGAS_TAB_MIG" TO "PROGRAMADORESCSI";
