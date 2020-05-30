--------------------------------------------------------
--  DDL for Table CARENSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."CARENSEG" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"NMOVIMI" NUMBER(6,0), 
	"FINIEFE" DATE, 
	"NMOVIMA" NUMBER(4,0) DEFAULT 1, 
	"CCAREN" NUMBER(6,0), 
	"NMESCAR" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CARENSEG"."SSEGURO" IS 'codigo del seguro de la poliza';
   COMMENT ON COLUMN "AXIS"."CARENSEG"."NRIESGO" IS 'Riesgo asegurado';
   COMMENT ON COLUMN "AXIS"."CARENSEG"."CGARANT" IS 'Codigo de la garantia afectada';
   COMMENT ON COLUMN "AXIS"."CARENSEG"."NMOVIMI" IS 'Numero de movimiento';
   COMMENT ON COLUMN "AXIS"."CARENSEG"."FINIEFE" IS 'Efecto del movimiento';
   COMMENT ON COLUMN "AXIS"."CARENSEG"."NMOVIMA" IS 'Movimiento de alta';
   COMMENT ON COLUMN "AXIS"."CARENSEG"."CCAREN" IS 'Codigo de carencia';
   COMMENT ON COLUMN "AXIS"."CARENSEG"."NMESCAR" IS 'Meses de carencia definitivos de esta carencia para esta poliza';
   COMMENT ON TABLE "AXIS"."CARENSEG"  IS 'Caréncias del seguro por riesgo y garantia';
  GRANT UPDATE ON "AXIS"."CARENSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CARENSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CARENSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CARENSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CARENSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CARENSEG" TO "PROGRAMADORESCSI";
