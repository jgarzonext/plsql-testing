--------------------------------------------------------
--  DDL for Table SUP_DIFERIDOSSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."SUP_DIFERIDOSSEG" 
   (	"CMOTMOV" NUMBER(3,0), 
	"SSEGURO" NUMBER, 
	"ESTADO" NUMBER(1,0), 
	"FECSUPL" DATE, 
	"FVALFUN" VARCHAR2(2000 BYTE), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"TVALORD" VARCHAR2(2000 BYTE), 
	"FANULA" DATE, 
	"NMOVIMI" NUMBER(4,0), 
	"NEJECU" NUMBER(4,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SUP_DIFERIDOSSEG"."CMOTMOV" IS 'Fecha de alta de la p�liza';
   COMMENT ON COLUMN "AXIS"."SUP_DIFERIDOSSEG"."SSEGURO" IS 'Identificador de seguro';
   COMMENT ON COLUMN "AXIS"."SUP_DIFERIDOSSEG"."ESTADO" IS 'Estado del suplemento diferido (Valor fijo 930) ';
   COMMENT ON COLUMN "AXIS"."SUP_DIFERIDOSSEG"."FECSUPL" IS 'Fecha efecto del suplemento';
   COMMENT ON COLUMN "AXIS"."SUP_DIFERIDOSSEG"."FVALFUN" IS 'Funci�n de validaci�n';
   COMMENT ON COLUMN "AXIS"."SUP_DIFERIDOSSEG"."CUSUARI" IS 'Usuario que ha programado el diferido';
   COMMENT ON COLUMN "AXIS"."SUP_DIFERIDOSSEG"."FALTA" IS 'Fecha de alta del diferido';
   COMMENT ON COLUMN "AXIS"."SUP_DIFERIDOSSEG"."TVALORD" IS 'Valor despues del suplemento';
   COMMENT ON COLUMN "AXIS"."SUP_DIFERIDOSSEG"."FANULA" IS 'Fecha de anulaci�n';
   COMMENT ON COLUMN "AXIS"."SUP_DIFERIDOSSEG"."NMOVIMI" IS 'N�mero de movimiento del certificado 0 (de movseguro)';
   COMMENT ON COLUMN "AXIS"."SUP_DIFERIDOSSEG"."NEJECU" IS 'N�mero de ejecuci�n del diferido para el mismo suplemento-seguro';
   COMMENT ON TABLE "AXIS"."SUP_DIFERIDOSSEG"  IS 'Parametrizaci�n via AXIS de suplementos diferidos';
  GRANT UPDATE ON "AXIS"."SUP_DIFERIDOSSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SUP_DIFERIDOSSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SUP_DIFERIDOSSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SUP_DIFERIDOSSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SUP_DIFERIDOSSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SUP_DIFERIDOSSEG" TO "PROGRAMADORESCSI";