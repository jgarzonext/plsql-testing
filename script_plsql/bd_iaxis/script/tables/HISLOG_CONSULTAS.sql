--------------------------------------------------------
--  DDL for Table HISLOG_CONSULTAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISLOG_CONSULTAS" 
   (	"SLOGCONSUL" NUMBER(8,0), 
	"FCONSULTA" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"CORIGEN" NUMBER(2,0), 
	"CTIPO" NUMBER(1,0), 
	"TCONSULTA" VARCHAR2(4000 BYTE), 
	"TLLAMADA" VARCHAR2(100 BYTE), 
	"FTRASPASO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 ROW STORE COMPRESS ADVANCED LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISLOG_CONSULTAS"."SLOGCONSUL" IS 'Secuencia slogconsul';
   COMMENT ON COLUMN "AXIS"."HISLOG_CONSULTAS"."FCONSULTA" IS 'Fecha en que se realiza la consulta.';
   COMMENT ON COLUMN "AXIS"."HISLOG_CONSULTAS"."CUSUARI" IS 'Usuario que ha realizado la consulta.';
   COMMENT ON COLUMN "AXIS"."HISLOG_CONSULTAS"."CORIGEN" IS 'Donde se ha realizado la consulta.  0:Indefinido, 1:Personas, 2:P�lizas, 3:Administraci�n, 4: Siniestros. Vf. 289. ';
   COMMENT ON COLUMN "AXIS"."HISLOG_CONSULTAS"."CTIPO" IS 'Tipo de consulta: 1: B�squeda, 2:Selecci�n';
   COMMENT ON COLUMN "AXIS"."HISLOG_CONSULTAS"."TCONSULTA" IS 'Consulta Realizada';
   COMMENT ON COLUMN "AXIS"."HISLOG_CONSULTAS"."TLLAMADA" IS 'Nombre de la funci�n desde donde se llama.';
   COMMENT ON COLUMN "AXIS"."HISLOG_CONSULTAS"."FTRASPASO" IS 'Fecha de cuando se realiza el traspaso de LOG_CONSULTAS a HISLOG_CONSULTAS';
  GRANT UPDATE ON "AXIS"."HISLOG_CONSULTAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISLOG_CONSULTAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISLOG_CONSULTAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISLOG_CONSULTAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISLOG_CONSULTAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISLOG_CONSULTAS" TO "PROGRAMADORESCSI";