--------------------------------------------------------
--  DDL for Table SOLGARANSEGGAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."SOLGARANSEGGAS" 
   (	"SSOLICIT" NUMBER(6,0), 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"CGASTOS" NUMBER(2,0), 
	"PVALOR" NUMBER(9,5), 
	"NPRIMA" NUMBER(1,0), 
	"PVALRES" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SOLGARANSEGGAS"."SSOLICIT" IS 'N�mero de Solicitud';
   COMMENT ON COLUMN "AXIS"."SOLGARANSEGGAS"."NRIESGO" IS 'N�mero Riesgo';
   COMMENT ON COLUMN "AXIS"."SOLGARANSEGGAS"."CGARANT" IS 'C�digo Garant�a';
   COMMENT ON COLUMN "AXIS"."SOLGARANSEGGAS"."CGASTOS" IS 'C�digo Gasto';
   COMMENT ON COLUMN "AXIS"."SOLGARANSEGGAS"."PVALOR" IS 'Porcentaje Gastos - Primera Anualidad';
   COMMENT ON COLUMN "AXIS"."SOLGARANSEGGAS"."NPRIMA" IS 'Indicador sobre que valor se aplica el porcentaje de gastos. VF=837';
   COMMENT ON COLUMN "AXIS"."SOLGARANSEGGAS"."PVALRES" IS 'Porcentaje Gastos - Resto Anualidades';
   COMMENT ON TABLE "AXIS"."SOLGARANSEGGAS"  IS 'Garant�as Seguros Gastos';
  GRANT UPDATE ON "AXIS"."SOLGARANSEGGAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SOLGARANSEGGAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SOLGARANSEGGAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SOLGARANSEGGAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SOLGARANSEGGAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SOLGARANSEGGAS" TO "PROGRAMADORESCSI";
