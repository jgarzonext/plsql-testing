--------------------------------------------------------
--  DDL for Table MIG_COMISIGARANSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_COMISIGARANSEG" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(10,0), 
	"CGARANT" NUMBER(10,0), 
	"NMOVIMI" NUMBER(10,0), 
	"FINIEFE" DATE, 
	"IPRIANU" NUMBER, 
	"PCOMISI" NUMBER(5,2), 
	"ICOMANU" NUMBER, 
	"ITOTCOM" NUMBER, 
	"NDETGAR" NUMBER(8,0), 
	"FFINPG" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."MIG_PK" IS 'Clave �nica de MIG_RECIBOS';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."MIG_FK" IS 'Clave externa para la p�liza (MIG_MOVSEGURO)';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."SSEGURO" IS 'Identificador del seguro, valor=0, lo calcula el proceso de migraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."NRIESGO" IS 'Identificador del riesgo';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."CGARANT" IS 'Identificador de la garant�a';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."NMOVIMI" IS 'Movimiento de alta';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."FINIEFE" IS 'Fecha de renovaci�n de la p�liza, efecto que crea el apunte de comisi�n';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."IPRIANU" IS 'Prima sobre la que se calculo la comisi�n';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."PCOMISI" IS 'Porcentaje de la comisi�n que se aplica';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."ICOMANU" IS 'Prima a liquidar durante un a�o';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."ITOTCOM" IS 'Prima a liquidar durante los 10 a�os';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."NDETGAR" IS 'N�mero de detalle de garant�a';
   COMMENT ON COLUMN "AXIS"."MIG_COMISIGARANSEG"."FFINPG" IS 'Fecha de vto de la comisi�n, la menor entre la fecha de vto de la garant�a/poliza o 10 a�os desde finiefe';
   COMMENT ON TABLE "AXIS"."MIG_COMISIGARANSEG"  IS 'Tabla intermedia de comisiones de cartera';
  GRANT UPDATE ON "AXIS"."MIG_COMISIGARANSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_COMISIGARANSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_COMISIGARANSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_COMISIGARANSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_COMISIGARANSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_COMISIGARANSEG" TO "PROGRAMADORESCSI";