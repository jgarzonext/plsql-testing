--------------------------------------------------------
--  DDL for Table ALM_DETALLE
--------------------------------------------------------

  CREATE TABLE "AXIS"."ALM_DETALLE" 
   (	"CEMPRES" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"SPRODUC" NUMBER(3,0), 
	"NPOLIZA" NUMBER, 
	"FVALORA" DATE, 
	"FVENCIM" DATE, 
	"NEDADASE" NUMBER(4,0), 
	"CSEXO" NUMBER(1,0), 
	"CFORPAG" NUMBER(3,0), 
	"IPROMAT" NUMBER, 
	"ICAPGAR" NUMBER, 
	"PCREDIBI" NUMBER(5,4), 
	"PINTFUT" NUMBER(4,2), 
	"NDIAS" NUMBER, 
	"FVENEST" DATE, 
	"IPROYEC" NUMBER, 
	"FMODIF" DATE, 
	"PINTTEC" NUMBER(4,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."SSEGURO" IS 'Identificador del seguro';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."CRAMO" IS 'Ramo';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."CMODALI" IS 'Modalidad';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."CTIPSEG" IS 'Tipo de seguro';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."CCOLECT" IS 'Colectividad';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."SPRODUC" IS 'Identificador de producto';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."NPOLIZA" IS 'N�mero de p�liza';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."FVALORA" IS 'Fecha utilizada para realizar el calculo';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."FVENCIM" IS 'Fecha de vencimiento de la p�liza';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."NEDADASE" IS 'Edad del asegurado';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."CSEXO" IS 'Sexo del asegurado';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."CFORPAG" IS 'Forma de pago de la p�liza';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."IPROMAT" IS 'Provisi�n matem�tica a fecha FVALORA';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."ICAPGAR" IS 'Capital garantizado a fecha FVALORA';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."PCREDIBI" IS 'Porcentaje de credibilidad';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."PINTFUT" IS 'Inter�s futuro';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."NDIAS" IS 'D�as estimados';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."FVENEST" IS 'Fecha de vencimiento estimada';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."IPROYEC" IS 'Proyecci�n';
   COMMENT ON COLUMN "AXIS"."ALM_DETALLE"."FMODIF" IS 'Fecha en la que se ha realizado el c�lculo';
   COMMENT ON TABLE "AXIS"."ALM_DETALLE"  IS 'Detalle generado proceso ALM-Asset Liability Management';
  GRANT UPDATE ON "AXIS"."ALM_DETALLE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ALM_DETALLE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ALM_DETALLE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ALM_DETALLE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ALM_DETALLE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ALM_DETALLE" TO "PROGRAMADORESCSI";
