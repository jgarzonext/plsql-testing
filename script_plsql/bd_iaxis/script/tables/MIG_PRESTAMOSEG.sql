--------------------------------------------------------
--  DDL for Table MIG_PRESTAMOSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_PRESTAMOSEG" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"CTAPRES" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"FINIPREST" DATE, 
	"FFINPREST" DATE, 
	"PPORCEN" NUMBER(5,2), 
	"NRIESGO" NUMBER(6,0) DEFAULT 1, 
	"CTIPCUENTA" NUMBER(3,0), 
	"CTIPBAN" NUMBER(3,0), 
	"CTIPIMP" NUMBER(3,0), 
	"ISALDO" NUMBER, 
	"PORCEN" NUMBER(5,2), 
	"ILIMITE" NUMBER, 
	"ICAPMAX" NUMBER, 
	"ICAPITAL" NUMBER, 
	"CMONEDA" VARCHAR2(10 BYTE), 
	"ICAPASEG" NUMBER, 
	"FALTA" DATE, 
	"DESCRIPCION" VARCHAR2(3000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."MIG_PK" IS 'Clave �nica de MIG_PRESTAMOSEG';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."MIG_FK" IS 'Clave externa para la p�liza (MIG_SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."CESTMIG" IS 'Estado del registro valor inicial 1';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."CTAPRES" IS 'C�digo del pr�stamo';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."SSEGURO" IS 'C�digo del seguro';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."NMOVIMI" IS 'Movimiento del seguro';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."FINIPREST" IS 'Fecha inicio del efecto de la asociaci�n de prestamo con el seguro y con el porcentaje indicado';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."FFINPREST" IS 'Fecha fin del efecto de la asociaci�n de prestamo con el seguro y con el porcentaje indicado';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."PPORCEN" IS 'Porcentaje del titular del seguro en el pr�stamo';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."CTIPCUENTA" IS 'Valor fijo 401.Tipo de cuenta (cr�dito vivienda,pr�stamos)';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."CTIPIMP" IS 'Valor fijo 402.Tipo de importe en la cuenta.(saldo, porcentaje, etc)';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."ISALDO" IS 'Saldo  en la cuenta';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."PORCEN" IS 'Porcentaje  en la cuenta';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."ILIMITE" IS 'Importe l�mite  en la cuenta';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."ICAPMAX" IS 'Importe m�ximo en la cuenta';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."ICAPITAL" IS 'Importe en la cuenta';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."CMONEDA" IS 'Moneda';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."ICAPASEG" IS 'Capital asegurado en la cuenta';
   COMMENT ON COLUMN "AXIS"."MIG_PRESTAMOSEG"."FALTA" IS 'Fecha de alta del pr�stamo';
   COMMENT ON TABLE "AXIS"."MIG_PRESTAMOSEG"  IS 'Tabla intermedia Pr�stamos de un seguro';
  GRANT UPDATE ON "AXIS"."MIG_PRESTAMOSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PRESTAMOSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_PRESTAMOSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_PRESTAMOSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PRESTAMOSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_PRESTAMOSEG" TO "PROGRAMADORESCSI";
