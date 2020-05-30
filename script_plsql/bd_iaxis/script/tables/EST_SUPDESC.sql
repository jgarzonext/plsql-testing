--------------------------------------------------------
--  DDL for Table EST_SUPDESC
--------------------------------------------------------

  CREATE TABLE "AXIS"."EST_SUPDESC" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(8,0), 
	"CMOTMOV" NUMBER(8,0), 
	"NRIESGO" NUMBER(8,0), 
	"CGARANT" NUMBER(8,0), 
	"TVALOR" VARCHAR2(1000 BYTE), 
	"CPREGUN" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."EST_SUPDESC"."SSEGURO" IS 'Id del estseguro';
   COMMENT ON COLUMN "AXIS"."EST_SUPDESC"."CMOTMOV" IS 'C�digo del motivo de movimiento';
   COMMENT ON COLUMN "AXIS"."EST_SUPDESC"."NRIESGO" IS 'Id.del riesgo';
   COMMENT ON COLUMN "AXIS"."EST_SUPDESC"."CGARANT" IS 'C�digo de la garantia';
   COMMENT ON COLUMN "AXIS"."EST_SUPDESC"."TVALOR" IS 'Descripcion del suplemento';
   COMMENT ON COLUMN "AXIS"."EST_SUPDESC"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON TABLE "AXIS"."EST_SUPDESC"  IS 'Tabla temporal para suplemento descriptivo';
  GRANT SELECT ON "AXIS"."EST_SUPDESC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EST_SUPDESC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EST_SUPDESC" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."EST_SUPDESC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EST_SUPDESC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EST_SUPDESC" TO "PROGRAMADORESCSI";