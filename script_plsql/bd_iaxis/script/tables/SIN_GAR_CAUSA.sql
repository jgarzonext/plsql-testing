--------------------------------------------------------
--  DDL for Table SIN_GAR_CAUSA
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_GAR_CAUSA" 
   (	"SPRODUC" NUMBER(6,0), 
	"CACTIVI" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"CCAUSIN" NUMBER(4,0), 
	"CMOTSIN" NUMBER(4,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"NUMSINI" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_GAR_CAUSA"."SPRODUC" IS 'Secuencia Producto';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_CAUSA"."CACTIVI" IS 'C�digo Actividad';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_CAUSA"."CGARANT" IS 'C�digo Garant�a';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_CAUSA"."CCAUSIN" IS 'C�digo Causa Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_CAUSA"."CMOTSIN" IS 'C�digo Motivo Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_CAUSA"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_CAUSA"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_CAUSA"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_CAUSA"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_GAR_CAUSA"."NUMSINI" IS 'N�mero m�ximo de siniestros que puede tener una p�liza para una causa, motivo y garantia.';
   COMMENT ON TABLE "AXIS"."SIN_GAR_CAUSA"  IS 'Causas y Motivos de siniestro por Producto, Actividad y Garant�a';
  GRANT UPDATE ON "AXIS"."SIN_GAR_CAUSA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_GAR_CAUSA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_GAR_CAUSA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_GAR_CAUSA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_GAR_CAUSA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_GAR_CAUSA" TO "PROGRAMADORESCSI";
