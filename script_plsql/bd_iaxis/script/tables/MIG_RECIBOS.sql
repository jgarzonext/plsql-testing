--------------------------------------------------------
--  DDL for Table MIG_RECIBOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_RECIBOS" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NMOVIMI" NUMBER(4,0), 
	"FEMISIO" DATE, 
	"FEFECTO" DATE, 
	"FVENCIM" DATE, 
	"CTIPREC" NUMBER(4,0), 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"NRECIBO" NUMBER, 
	"CESTREC" NUMBER(1,0), 
	"FRECCOB" DATE, 
	"CESTIMP" NUMBER(2,0), 
	"ESCCERO" NUMBER(1,0), 
	"CRECCIA" VARCHAR2(50 BYTE), 
	"NRECAUX" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."MIG_PK" IS 'Clave �nica de MIG_RECIBOS';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."MIG_FK" IS 'Clave externa para la p�liza (MIG_SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."FEMISIO" IS 'Fecha de emisi�n del recibo';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."FEFECTO" IS 'Fecha efecto del recibo';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."FVENCIM" IS 'Fecha vencimiento del recibo';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."CTIPREC" IS 'Tipo de recibo VF:8';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."SSEGURO" IS 'N�mero de secuencia de seguro, valor=0, lo calcula el proceso de migraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."NRIESGO" IS 'Numero de riesgo, si s�lo afecta a uno';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."NRECIBO" IS 'Numero de recibo, si nulo lo calcula el proceso de migraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."CESTREC" IS 'Estado del recibo VF:1';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."FRECCOB" IS 'Fecha cobro recibo';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."CESTIMP" IS 'Estado de impresi�n del recibo (VALORES.CVALOR = 75)';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."ESCCERO" IS 'Indicador de si el recibo pertenece al Certificado 0 o no.';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."CRECCIA" IS 'Indicador de recibo en sistema externo';
   COMMENT ON COLUMN "AXIS"."MIG_RECIBOS"."NRECAUX" IS 'Identificador de recibo SAP';
   COMMENT ON TABLE "AXIS"."MIG_RECIBOS"  IS 'Tabla Intermedia migraci�n Cabecera de Recibos';
  GRANT UPDATE ON "AXIS"."MIG_RECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_RECIBOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_RECIBOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_RECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_RECIBOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_RECIBOS" TO "PROGRAMADORESCSI";
