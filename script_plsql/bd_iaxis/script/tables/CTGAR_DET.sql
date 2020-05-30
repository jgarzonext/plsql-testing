--------------------------------------------------------
--  DDL for Table CTGAR_DET
--------------------------------------------------------

  CREATE TABLE "AXIS"."CTGAR_DET" 
   (	"SCONTGAR" NUMBER, 
	"NMOVIMI" NUMBER, 
	"CPAIS" NUMBER(3,0), 
	"FEXPEDIC" DATE, 
	"CBANCO" NUMBER(4,0), 
	"TSUCURSAL" VARCHAR2(1000 BYTE), 
	"IINTERES" NUMBER, 
	"FVENCIMI" DATE, 
	"FVENCIMI1" DATE, 
	"FVENCIMI2" DATE, 
	"NPLAZO" NUMBER, 
	"IASEGURA" NUMBER, 
	"IINTCAP" NUMBER, 
	"SINMUEBLE" NUMBER, 
	"SVEHICULO" NUMBER, 
	"TITCDT" VARCHAR2(200 BYTE), 
	"NITTIT" VARCHAR2(50 BYTE), 
	"SPERFIDE" VARCHAR2(50 BYTE), 
	"TASA" VARCHAR2(100 BYTE), 
	"IVA" VARCHAR2(100 BYTE), 
	"FINIPAG" DATE, 
	"FFINPAG" DATE, 
	"CPOBLACPAG" NUMBER, 
	"CPROVINPAG" NUMBER, 
	"CPOBLACPAR" NUMBER, 
	"CPROVINPAR" NUMBER, 
	"CPOBLACFIR" NUMBER, 
	"CPROVINFIR" NUMBER, 
	"NSINIES" NUMBER(8,0), 
	"PORCENTAJE" NUMBER(3,0), 
	"FOBLIG" DATE, 
	"CCUENTA" NUMBER(1,0), 
	"NCUENTA" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."SCONTGAR" IS 'Identificador �nico / Secuencia de la contragarant�a';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."NMOVIMI" IS 'Numero de movimiento';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."CPAIS" IS 'Pais';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."FEXPEDIC" IS 'Fecha constituci�n o expedici�n';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."CBANCO" IS 'Entidad Fiduciaria - Bancaria';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."TSUCURSAL" IS 'Sucursal entidad bancaria emisora';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."IINTERES" IS 'Importe Inter�s';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."FVENCIMI" IS 'Fecha de vencimiento';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."FVENCIMI1" IS 'Fecha de vencimiento 1';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."FVENCIMI2" IS 'Fecha de vencimiento 2';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."NPLAZO" IS 'Plazo';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."IASEGURA" IS 'Importe asegurado';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."IINTCAP" IS 'Importe inter�s capitalizables';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."SINMUEBLE" IS 'Hipoteca del inmueble relacionado';
   COMMENT ON COLUMN "AXIS"."CTGAR_DET"."SVEHICULO" IS 'Pignoraci�n del veh�culo relacionado';
  GRANT UPDATE ON "AXIS"."CTGAR_DET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CTGAR_DET" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CTGAR_DET" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CTGAR_DET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CTGAR_DET" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CTGAR_DET" TO "PROGRAMADORESCSI";