--------------------------------------------------------
--  DDL for Table LOCALIZATRAMI
--------------------------------------------------------

  CREATE TABLE "AXIS"."LOCALIZATRAMI" 
   (	"NSINIES" NUMBER(8,0), 
	"NTRAMIT" NUMBER(4,0), 
	"NLOCALI" NUMBER(3,0), 
	"CPAIS" NUMBER(3,0), 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER, 
	"CPOSTAL" VARCHAR2(30 BYTE), 
	"TLOCALI" VARCHAR2(100 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUBAJ" VARCHAR2(20 BYTE), 
	"FBAJA" DATE, 
	"FLOCALI" DATE, 
	"SPERSON" NUMBER(10,0), 
	"TUBICAC" VARCHAR2(100 BYTE), 
	"TCONTAC" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."LOCALIZATRAMI"."NSINIES" IS 'Numero de siniestro';
   COMMENT ON COLUMN "AXIS"."LOCALIZATRAMI"."NTRAMIT" IS 'Numero de tramitacion';
   COMMENT ON COLUMN "AXIS"."LOCALIZATRAMI"."NLOCALI" IS 'Numero de Orden de localizacion';
   COMMENT ON COLUMN "AXIS"."LOCALIZATRAMI"."CPAIS" IS 'Codigo de Pais';
   COMMENT ON COLUMN "AXIS"."LOCALIZATRAMI"."CPROVIN" IS 'Codigo de Provincia';
   COMMENT ON COLUMN "AXIS"."LOCALIZATRAMI"."CPOBLAC" IS 'Codigo de poblacion';
   COMMENT ON COLUMN "AXIS"."LOCALIZATRAMI"."CPOSTAL" IS 'Codigo Postal';
   COMMENT ON COLUMN "AXIS"."LOCALIZATRAMI"."TLOCALI" IS 'Observaciones de localizacion';
   COMMENT ON TABLE "AXIS"."LOCALIZATRAMI"  IS 'Valoraciones por garantia/tramitacion/siniestro';
  GRANT UPDATE ON "AXIS"."LOCALIZATRAMI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LOCALIZATRAMI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LOCALIZATRAMI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LOCALIZATRAMI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LOCALIZATRAMI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LOCALIZATRAMI" TO "PROGRAMADORESCSI";
