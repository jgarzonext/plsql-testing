--------------------------------------------------------
--  DDL for Table HISESTADOSEG_CAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISESTADOSEG_CAR" 
   (	"SSEGURO" NUMBER, 
	"NORDEN" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
	"FCARPRO" DATE, 
	"FCARANT" DATE, 
	"FCARANU" DATE, 
	"FRENOVA" DATE, 
	"NRENOVA" NUMBER(4,0), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FEFECTO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISESTADOSEG_CAR"."SSEGURO" IS 'C�digo identificado del seguro';
   COMMENT ON COLUMN "AXIS"."HISESTADOSEG_CAR"."NORDEN" IS 'C�digo identificador del orden';
   COMMENT ON COLUMN "AXIS"."HISESTADOSEG_CAR"."NMOVIMI" IS 'C�digo identificador del movimiento';
   COMMENT ON COLUMN "AXIS"."HISESTADOSEG_CAR"."FCARPRO" IS 'Fecha de pr�ximo recibo';
   COMMENT ON COLUMN "AXIS"."HISESTADOSEG_CAR"."FCARANT" IS 'Fecha de cartera anterior';
   COMMENT ON COLUMN "AXIS"."HISESTADOSEG_CAR"."FCARANU" IS 'Fecha de cartera anual';
   COMMENT ON COLUMN "AXIS"."HISESTADOSEG_CAR"."FRENOVA" IS 'Fecha de renovaci�n';
   COMMENT ON COLUMN "AXIS"."HISESTADOSEG_CAR"."NRENOVA" IS 'Numeracion de renovaci�n';
   COMMENT ON COLUMN "AXIS"."HISESTADOSEG_CAR"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."HISESTADOSEG_CAR"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."HISESTADOSEG_CAR"."FEFECTO" IS 'Fecha de efecto de la p�liza';
   COMMENT ON TABLE "AXIS"."HISESTADOSEG_CAR"  IS 'Tabla de historico de fechas de cartera';
  GRANT UPDATE ON "AXIS"."HISESTADOSEG_CAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISESTADOSEG_CAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISESTADOSEG_CAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISESTADOSEG_CAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISESTADOSEG_CAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISESTADOSEG_CAR" TO "PROGRAMADORESCSI";
