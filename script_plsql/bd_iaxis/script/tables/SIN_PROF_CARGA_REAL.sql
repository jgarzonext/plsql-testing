--------------------------------------------------------
--  DDL for Table SIN_PROF_CARGA_REAL
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_PROF_CARGA_REAL" 
   (	"SPROFES" NUMBER(8,0), 
	"CTIPPRO" NUMBER(8,0), 
	"CSUBPRO" NUMBER(8,0), 
	"NCAPACI" NUMBER, 
	"NCARDIA" NUMBER, 
	"NCARSEM" NUMBER, 
	"NCARMES" NUMBER, 
	"FDESDE" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"FBAJA" DATE, 
	"CUSUBAJ" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_PROF_CARGA_REAL"."SPROFES" IS 'Sequencial. Codigo de profesional';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_CARGA_REAL"."CTIPPRO" IS 'Tipo Profesional. VF 724';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_CARGA_REAL"."CSUBPRO" IS 'Subtipo Profesional. VF 725';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_CARGA_REAL"."NCAPACI" IS 'Capacidad: 0% 50% 100%';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_CARGA_REAL"."NCARDIA" IS 'Limite asignacion diaria';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_CARGA_REAL"."NCARSEM" IS 'Limite asignacion semanal';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_CARGA_REAL"."NCARMES" IS 'Limite asignacion mensual';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_CARGA_REAL"."FDESDE" IS 'Fecha inicio';
   COMMENT ON TABLE "AXIS"."SIN_PROF_CARGA_REAL"  IS 'Carga de trabajo real';
  GRANT UPDATE ON "AXIS"."SIN_PROF_CARGA_REAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PROF_CARGA_REAL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_PROF_CARGA_REAL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_PROF_CARGA_REAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PROF_CARGA_REAL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_PROF_CARGA_REAL" TO "PROGRAMADORESCSI";
