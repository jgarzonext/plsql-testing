--------------------------------------------------------
--  DDL for Table AGD_HISAPUNTE
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGD_HISAPUNTE" 
   (	"IDAPUNTE" NUMBER(8,0), 
	"NHISAPU" NUMBER(8,0), 
	"FINIAPU" DATE, 
	"FFINAPU" DATE, 
	"CCONAPU" NUMBER(2,0), 
	"CTIPAPU" NUMBER(1,0), 
	"TTITAPU" VARCHAR2(100 BYTE), 
	"TAPUNTE" VARCHAR2(2000 BYTE), 
	"FAPUNTE" DATE, 
	"FRECORDATORIO" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AGD_HISAPUNTE"."IDAPUNTE" IS 'Identificador Apunte';
   COMMENT ON COLUMN "AXIS"."AGD_HISAPUNTE"."NHISAPU" IS 'N. Historico Apunte';
   COMMENT ON COLUMN "AXIS"."AGD_HISAPUNTE"."FINIAPU" IS 'Fecha inicio hist. Apunte';
   COMMENT ON COLUMN "AXIS"."AGD_HISAPUNTE"."FFINAPU" IS 'Fecha fin hist. Apunte';
   COMMENT ON COLUMN "AXIS"."AGD_HISAPUNTE"."CCONAPU" IS 'C�digo Concepto Apunte';
   COMMENT ON COLUMN "AXIS"."AGD_HISAPUNTE"."CTIPAPU" IS 'C�digo Tipo Apunte V.F.323';
   COMMENT ON COLUMN "AXIS"."AGD_HISAPUNTE"."TTITAPU" IS 'T�tulo Apunte';
   COMMENT ON COLUMN "AXIS"."AGD_HISAPUNTE"."TAPUNTE" IS 'Descripci�n Apunte';
   COMMENT ON COLUMN "AXIS"."AGD_HISAPUNTE"."FAPUNTE" IS 'Fecha Aviso Apunte';
   COMMENT ON COLUMN "AXIS"."AGD_HISAPUNTE"."FRECORDATORIO" IS 'Fecha Recordatorio';
   COMMENT ON COLUMN "AXIS"."AGD_HISAPUNTE"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."AGD_HISAPUNTE"."FALTA" IS 'Fecha Alta';
   COMMENT ON TABLE "AXIS"."AGD_HISAPUNTE"  IS 'Apuntes';
  GRANT UPDATE ON "AXIS"."AGD_HISAPUNTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGD_HISAPUNTE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGD_HISAPUNTE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGD_HISAPUNTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGD_HISAPUNTE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGD_HISAPUNTE" TO "PROGRAMADORESCSI";