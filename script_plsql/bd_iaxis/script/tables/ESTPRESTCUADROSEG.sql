--------------------------------------------------------
--  DDL for Table ESTPRESTCUADROSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTPRESTCUADROSEG" 
   (	"CTAPRES" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"FINICUASEG" DATE, 
	"FFINCUASEG" DATE, 
	"FEFECTO" DATE, 
	"FVENCIM" DATE, 
	"ICAPITAL" NUMBER, 
	"IINTERES" NUMBER, 
	"ICAPPEND" NUMBER, 
	"FALTA" DATE, 
	"IMORTACU" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTPRESTCUADROSEG"."CTAPRES" IS 'C�digo del pr�stamo';
   COMMENT ON COLUMN "AXIS"."ESTPRESTCUADROSEG"."SSEGURO" IS 'C�digo del seguro';
   COMMENT ON COLUMN "AXIS"."ESTPRESTCUADROSEG"."NMOVIMI" IS 'Movimiento del seguro';
   COMMENT ON COLUMN "AXIS"."ESTPRESTCUADROSEG"."FINICUASEG" IS 'Fecha de inicio del cuadro';
   COMMENT ON COLUMN "AXIS"."ESTPRESTCUADROSEG"."FFINCUASEG" IS 'Fecha fin del cuadro';
   COMMENT ON COLUMN "AXIS"."ESTPRESTCUADROSEG"."FEFECTO" IS 'Fecha de efecto de la cuota';
   COMMENT ON COLUMN "AXIS"."ESTPRESTCUADROSEG"."FVENCIM" IS 'Fecha venciento de la cuota';
   COMMENT ON COLUMN "AXIS"."ESTPRESTCUADROSEG"."ICAPITAL" IS 'Capital amortizado';
   COMMENT ON COLUMN "AXIS"."ESTPRESTCUADROSEG"."IINTERES" IS 'Importe interes impendiente';
   COMMENT ON COLUMN "AXIS"."ESTPRESTCUADROSEG"."ICAPPEND" IS 'Capital pendiente';
   COMMENT ON COLUMN "AXIS"."ESTPRESTCUADROSEG"."FALTA" IS 'Fecha de alta del pr�stamo';
   COMMENT ON COLUMN "AXIS"."ESTPRESTCUADROSEG"."IMORTACU" IS 'Import mort acumulable';
   COMMENT ON TABLE "AXIS"."ESTPRESTCUADROSEG"  IS 'Cuadro de amortizaci�n para el seguro';
  GRANT UPDATE ON "AXIS"."ESTPRESTCUADROSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPRESTCUADROSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTPRESTCUADROSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTPRESTCUADROSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPRESTCUADROSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTPRESTCUADROSEG" TO "PROGRAMADORESCSI";
