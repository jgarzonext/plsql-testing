--------------------------------------------------------
--  DDL for Table ESTPRESTAMOSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTPRESTAMOSEG" 
   (	"CTAPRES" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"FINIPREST" DATE, 
	"FFINPREST" DATE, 
	"PPORCEN" NUMBER(5,2), 
	"NRIESGO" NUMBER(6,0) DEFAULT 1, 
	"CTIPCUENTA" NUMBER(4,0), 
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

   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."CTAPRES" IS 'C�digo del pr�stamo';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."SSEGURO" IS 'C�digo del seguro';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."NMOVIMI" IS 'Movimiento del seguro';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."FINIPREST" IS 'Fecha inicio del efecto de la asociaci�n de prestamo con el seguro y con el porcentaje indicado';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."FFINPREST" IS 'Fecha fin del efecto de la asociaci�n de prestamo con el seguro y con el porcentaje indicado';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."PPORCEN" IS 'Porcentaje del titular del seguro en el pr�stamo';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."CTIPCUENTA" IS 'Valor fijo 401.Tipo de cuenta (cr�dito vivienda,pr�stamos)';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."CTIPIMP" IS 'Valor fijo 402.Tipo de importe en la cuenta.(saldo, porcentaje, etc)';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."ISALDO" IS 'Saldo  en la cuenta';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."PORCEN" IS 'Porcentaje  en la cuenta';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."ILIMITE" IS 'Importe l�mite  en la cuenta';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."ICAPMAX" IS 'Importe m�ximo en la cuenta';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."ICAPITAL" IS 'Importe en la cuenta';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."CMONEDA" IS 'Moneda';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."ICAPASEG" IS 'Capital asegurado en la cuenta';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."FALTA" IS 'Fecha de alta del pr�stamo';
   COMMENT ON COLUMN "AXIS"."ESTPRESTAMOSEG"."DESCRIPCION" IS 'Descripci�n de la cuenta';
   COMMENT ON TABLE "AXIS"."ESTPRESTAMOSEG"  IS 'Tabla temporal de los seguros de un pr�stamo';
  GRANT UPDATE ON "AXIS"."ESTPRESTAMOSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPRESTAMOSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTPRESTAMOSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTPRESTAMOSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPRESTAMOSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTPRESTAMOSEG" TO "PROGRAMADORESCSI";
