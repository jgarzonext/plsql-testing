--------------------------------------------------------
--  DDL for Table ESTDETMOVSEGURO
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTDETMOVSEGURO" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"CMOTMOV" NUMBER(3,0), 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER, 
	"TVALORA" VARCHAR2(1000 BYTE), 
	"TVALORD" VARCHAR2(1000 BYTE), 
	"CPREGUN" NUMBER, 
	"CPROPAGASUPL" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTDETMOVSEGURO"."SSEGURO" IS 'Id del estseguro';
   COMMENT ON COLUMN "AXIS"."ESTDETMOVSEGURO"."CMOTMOV" IS 'C�digo del motivo de movimiento';
   COMMENT ON COLUMN "AXIS"."ESTDETMOVSEGURO"."NRIESGO" IS 'Id.del riesgo';
   COMMENT ON COLUMN "AXIS"."ESTDETMOVSEGURO"."CGARANT" IS 'C�digo de la garantia';
   COMMENT ON COLUMN "AXIS"."ESTDETMOVSEGURO"."TVALORA" IS 'Valor antes del suplemento';
   COMMENT ON COLUMN "AXIS"."ESTDETMOVSEGURO"."TVALORD" IS 'Valor despues del suplemento';
   COMMENT ON COLUMN "AXIS"."ESTDETMOVSEGURO"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON COLUMN "AXIS"."ESTDETMOVSEGURO"."CPROPAGASUPL" IS 'Indica si se propaga el suplemento a sus certificados (v.f.1115)';
  GRANT UPDATE ON "AXIS"."ESTDETMOVSEGURO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTDETMOVSEGURO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTDETMOVSEGURO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTDETMOVSEGURO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTDETMOVSEGURO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTDETMOVSEGURO" TO "PROGRAMADORESCSI";