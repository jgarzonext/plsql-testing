--------------------------------------------------------
--  DDL for Table SIN_PROF_TARIFA
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_PROF_TARIFA" 
   (	"SCONVEN" NUMBER, 
	"SPROFES" NUMBER, 
	"STARIFA" NUMBER, 
	"SPERSED" NUMBER, 
	"CESTADO" NUMBER, 
	"FESTADO" DATE, 
	"NCOMPLE" NUMBER, 
	"NPRIORM" NUMBER, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"TDESCRI" VARCHAR2(1000 BYTE), 
	"TERMINO" VARCHAR2(31 BYTE), 
	"CVALOR" NUMBER, 
	"CTIPO" NUMBER, 
	"NIMPORTE" NUMBER, 
	"NPORCENT" NUMBER, 
	"SGESTIO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."SCONVEN" IS 'Sequencial. Clave del convenio';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."SPROFES" IS 'Sequencial. Codigo de profesional';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."STARIFA" IS 'Clave tabla sin_tarifas';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."SPERSED" IS 'Clave sede (si la tarifa es exclusiva para una sede)';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."CESTADO" IS 'Estado. VF 729';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."FESTADO" IS 'Fecha estado';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."NCOMPLE" IS 'Nivel de complejidad. VF 730';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."NPRIORM" IS 'Prioridad de remision. VF 731';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."TDESCRI" IS 'Descripción';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."CVALOR" IS 'El tramitador puede autorizar gestiones';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."CTIPO" IS 'El tramitador puede autorizar gestiones';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."NIMPORTE" IS 'El tramitador puede autorizar gestiones';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."NPORCENT" IS 'El tramitador puede autorizar gestiones';
   COMMENT ON COLUMN "AXIS"."SIN_PROF_TARIFA"."SGESTIO" IS 'Indicativo convenio temporal. Codigo de gestion para el que se creo';
   COMMENT ON TABLE "AXIS"."SIN_PROF_TARIFA"  IS 'Tarifa de un profesional';
  GRANT UPDATE ON "AXIS"."SIN_PROF_TARIFA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PROF_TARIFA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_PROF_TARIFA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_PROF_TARIFA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_PROF_TARIFA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_PROF_TARIFA" TO "PROGRAMADORESCSI";
