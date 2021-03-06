--------------------------------------------------------
--  DDL for Table MIG_CARGAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CARGAS" 
   (	"NCARGA" NUMBER, 
	"CEMPRES" VARCHAR2(20 BYTE), 
	"FINIORG" DATE, 
	"FFINORG" DATE, 
	"ESTORG" VARCHAR2(10 BYTE), 
	"ID" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_CARGAS"."NCARGA" IS 'N�mero Carga';
   COMMENT ON COLUMN "AXIS"."MIG_CARGAS"."CEMPRES" IS 'Codi Empresa (Cliente)';
   COMMENT ON COLUMN "AXIS"."MIG_CARGAS"."FINIORG" IS 'Fecha inicio carga de cliente a MIG';
   COMMENT ON COLUMN "AXIS"."MIG_CARGAS"."FFINORG" IS 'Fecha final carga de cliente a MIG';
   COMMENT ON COLUMN "AXIS"."MIG_CARGAS"."ESTORG" IS 'Estado carga de cliente a MIG';
   COMMENT ON COLUMN "AXIS"."MIG_CARGAS"."ID" IS 'Identificador de la carga';
   COMMENT ON TABLE "AXIS"."MIG_CARGAS"  IS 'Tabla Migraci�n Cargas';
  GRANT UPDATE ON "AXIS"."MIG_CARGAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CARGAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CARGAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_CARGAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CARGAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CARGAS" TO "PROGRAMADORESCSI";
