--------------------------------------------------------
--  DDL for Table SIN_CODCAUEST
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_CODCAUEST" 
   (	"CCAUEST" NUMBER(4,0), 
	"CESTSIN" NUMBER(2,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_CODCAUEST"."CCAUEST" IS 'C�digo Causa Estado';
   COMMENT ON COLUMN "AXIS"."SIN_CODCAUEST"."CESTSIN" IS 'Estado siniestro/tramitacion - VF 739';
   COMMENT ON COLUMN "AXIS"."SIN_CODCAUEST"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."SIN_CODCAUEST"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."SIN_CODCAUEST"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_CODCAUEST"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON TABLE "AXIS"."SIN_CODCAUEST"  IS 'Causa Estado Siniestro';
  GRANT UPDATE ON "AXIS"."SIN_CODCAUEST" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_CODCAUEST" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_CODCAUEST" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_CODCAUEST" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_CODCAUEST" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_CODCAUEST" TO "PROGRAMADORESCSI";
