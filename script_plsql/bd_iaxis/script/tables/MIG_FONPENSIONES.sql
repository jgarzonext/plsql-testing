--------------------------------------------------------
--  DDL for Table MIG_FONPENSIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_FONPENSIONES" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"NNUMIDE" VARCHAR2(13 BYTE), 
	"TNOMFON" VARCHAR2(60 BYTE), 
	"CCC" VARCHAR2(50 BYTE), 
	"CCODFON" NUMBER, 
	"CCODGES" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_FONPENSIONES"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_FONPENSIONES"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_FONPENSIONES"."MIG_PK" IS 'C�digo de la DGS';
   COMMENT ON COLUMN "AXIS"."MIG_FONPENSIONES"."MIG_FK" IS 'Clave externa MIG_GESTORAS GESDGS';
   COMMENT ON COLUMN "AXIS"."MIG_FONPENSIONES"."MIG_FK2" IS 'Clave externa MIG_PERSONAS';
   COMMENT ON COLUMN "AXIS"."MIG_FONPENSIONES"."NNUMIDE" IS 'Identificador de la persona';
   COMMENT ON COLUMN "AXIS"."MIG_FONPENSIONES"."TNOMFON" IS 'Descripci�n del Fondo';
   COMMENT ON COLUMN "AXIS"."MIG_FONPENSIONES"."CCC" IS 'Cuenta Bancaria';
   COMMENT ON COLUMN "AXIS"."MIG_FONPENSIONES"."CCODFON" IS 'C�digo del Fondo (Interno)';
   COMMENT ON COLUMN "AXIS"."MIG_FONPENSIONES"."CCODGES" IS 'C�digo de la Gestora (Interno)';
   COMMENT ON TABLE "AXIS"."MIG_FONPENSIONES"  IS 'Tabla de Migraci�n';
  GRANT UPDATE ON "AXIS"."MIG_FONPENSIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_FONPENSIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_FONPENSIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_FONPENSIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_FONPENSIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_FONPENSIONES" TO "PROGRAMADORESCSI";
