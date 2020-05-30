--------------------------------------------------------
--  DDL for Table LOG_INTERFASES
--------------------------------------------------------

  CREATE TABLE "AXIS"."LOG_INTERFASES" 
   (	"CUSUARIO" VARCHAR2(20 BYTE), 
	"FINTERF" DATE, 
	"SINTERF" NUMBER, 
	"CINTERF" VARCHAR2(20 BYTE), 
	"NRESULT" NUMBER, 
	"TERROR" VARCHAR2(250 BYTE), 
	"TINDENTIFICADOR" VARCHAR2(20 BYTE), 
	"NIDENTIFICADOR" VARCHAR2(15 BYTE), 
	"OBSERVACIONES" VARCHAR2(250 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."LOG_INTERFASES"."CUSUARIO" IS 'C�digo de usuario';
   COMMENT ON COLUMN "AXIS"."LOG_INTERFASES"."FINTERF" IS 'Fecha interface';
   COMMENT ON COLUMN "AXIS"."LOG_INTERFASES"."SINTERF" IS 'C�digo de seq�encia de interface';
   COMMENT ON COLUMN "AXIS"."LOG_INTERFASES"."CINTERF" IS 'C�digo de interface';
   COMMENT ON COLUMN "AXIS"."LOG_INTERFASES"."NRESULT" IS 'Resutado';
   COMMENT ON COLUMN "AXIS"."LOG_INTERFASES"."TINDENTIFICADOR" IS 'Texto identificador';
   COMMENT ON COLUMN "AXIS"."LOG_INTERFASES"."NIDENTIFICADOR" IS 'Codigo identificador';
   COMMENT ON COLUMN "AXIS"."LOG_INTERFASES"."OBSERVACIONES" IS 'Observaciones';
  GRANT UPDATE ON "AXIS"."LOG_INTERFASES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LOG_INTERFASES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LOG_INTERFASES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LOG_INTERFASES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LOG_INTERFASES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LOG_INTERFASES" TO "PROGRAMADORESCSI";
