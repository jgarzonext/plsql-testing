--------------------------------------------------------
--  DDL for Table SIN_RESERVA_CAPITAL
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_RESERVA_CAPITAL" 
   (	"SPRODUC" NUMBER(6,0), 
	"CACTIVI" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"CCAUSIN" NUMBER(4,0), 
	"CMOTSIN" NUMBER(4,0), 
	"FINIVIG" DATE, 
	"FFINVIG" DATE, 
	"ICAPMIN" NUMBER, 
	"ICAPMAX" NUMBER, 
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

   COMMENT ON COLUMN "AXIS"."SIN_RESERVA_CAPITAL"."SPRODUC" IS 'Secuencia Producto';
   COMMENT ON COLUMN "AXIS"."SIN_RESERVA_CAPITAL"."CACTIVI" IS 'C�digo Actividad';
   COMMENT ON COLUMN "AXIS"."SIN_RESERVA_CAPITAL"."CGARANT" IS 'C�digo Garant�a';
   COMMENT ON COLUMN "AXIS"."SIN_RESERVA_CAPITAL"."CCAUSIN" IS 'C�digo Causa Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_RESERVA_CAPITAL"."CMOTSIN" IS 'C�digo Motivo Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_RESERVA_CAPITAL"."FINIVIG" IS 'Fecha inicio vigencia';
   COMMENT ON COLUMN "AXIS"."SIN_RESERVA_CAPITAL"."FFINVIG" IS 'Fecha final  vigencia';
   COMMENT ON COLUMN "AXIS"."SIN_RESERVA_CAPITAL"."ICAPMIN" IS 'Capital minimo reserva';
   COMMENT ON COLUMN "AXIS"."SIN_RESERVA_CAPITAL"."ICAPMAX" IS 'Capital m�ximo reserva';
   COMMENT ON COLUMN "AXIS"."SIN_RESERVA_CAPITAL"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."SIN_RESERVA_CAPITAL"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."SIN_RESERVA_CAPITAL"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_RESERVA_CAPITAL"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON TABLE "AXIS"."SIN_RESERVA_CAPITAL"  IS 'Causas y Motivos de siniestro por Producto, Actividad y Garant�a';
  GRANT UPDATE ON "AXIS"."SIN_RESERVA_CAPITAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_RESERVA_CAPITAL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_RESERVA_CAPITAL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_RESERVA_CAPITAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_RESERVA_CAPITAL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_RESERVA_CAPITAL" TO "PROGRAMADORESCSI";
