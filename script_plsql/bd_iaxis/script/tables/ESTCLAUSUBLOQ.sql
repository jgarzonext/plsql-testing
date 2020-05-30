--------------------------------------------------------
--  DDL for Table ESTCLAUSUBLOQ
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTCLAUSUBLOQ" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"SCLAGEN" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTCLAUSUBLOQ"."SSEGURO" IS 'C�digo de seguro';
   COMMENT ON COLUMN "AXIS"."ESTCLAUSUBLOQ"."NMOVIMI" IS 'C�digo de movimiento';
   COMMENT ON COLUMN "AXIS"."ESTCLAUSUBLOQ"."NRIESGO" IS 'C�digo de riesgo';
   COMMENT ON COLUMN "AXIS"."ESTCLAUSUBLOQ"."SCLAGEN" IS 'C�digo de cl�usula';
   COMMENT ON TABLE "AXIS"."ESTCLAUSUBLOQ"  IS 'Tabla de control de bloqueo para automatismo de cl�usulas';
  GRANT UPDATE ON "AXIS"."ESTCLAUSUBLOQ" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTCLAUSUBLOQ" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTCLAUSUBLOQ" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTCLAUSUBLOQ" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTCLAUSUBLOQ" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTCLAUSUBLOQ" TO "PROGRAMADORESCSI";
