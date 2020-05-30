--------------------------------------------------------
--  DDL for Table SOLPRESTCUADROSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."SOLPRESTCUADROSEG" 
   (	"SSOLICI" NUMBER(8,0), 
	"FEFECTO" DATE, 
	"FVENCIM" DATE, 
	"ICAPITAL" NUMBER, 
	"ICAPPEND" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SOLPRESTCUADROSEG"."SSOLICI" IS 'C�digo de la solicitud';
   COMMENT ON COLUMN "AXIS"."SOLPRESTCUADROSEG"."FEFECTO" IS 'Fecha de efecto de la cuota';
   COMMENT ON COLUMN "AXIS"."SOLPRESTCUADROSEG"."FVENCIM" IS 'Fecha venciento de la cuota';
   COMMENT ON COLUMN "AXIS"."SOLPRESTCUADROSEG"."ICAPITAL" IS 'Capital amortizado';
   COMMENT ON COLUMN "AXIS"."SOLPRESTCUADROSEG"."ICAPPEND" IS 'Capital pendiente';
   COMMENT ON TABLE "AXIS"."SOLPRESTCUADROSEG"  IS 'Cuadro de amortizaci�n para la solicitud';
  GRANT UPDATE ON "AXIS"."SOLPRESTCUADROSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SOLPRESTCUADROSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SOLPRESTCUADROSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SOLPRESTCUADROSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SOLPRESTCUADROSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SOLPRESTCUADROSEG" TO "PROGRAMADORESCSI";
