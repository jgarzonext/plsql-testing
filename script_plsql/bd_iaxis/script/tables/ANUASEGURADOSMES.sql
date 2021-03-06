--------------------------------------------------------
--  DDL for Table ANUASEGURADOSMES
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUASEGURADOSMES" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"NMES" NUMBER(2,0), 
	"NANYO" NUMBER(4,0), 
	"FREGUL" DATE, 
	"NASEG" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUASEGURADOSMES"."SSEGURO" IS 'Identificador de poliza (SEGUROS)';
   COMMENT ON COLUMN "AXIS"."ANUASEGURADOSMES"."NRIESGO" IS 'Nro de riesgo (RIESGOS)';
   COMMENT ON COLUMN "AXIS"."ANUASEGURADOSMES"."NMOVIMI" IS 'Nro de movimiento (MOVSEGURO)';
   COMMENT ON COLUMN "AXIS"."ANUASEGURADOSMES"."NMES" IS 'Mes regularización  (Defecto 0)';
   COMMENT ON COLUMN "AXIS"."ANUASEGURADOSMES"."NANYO" IS 'Año regularización  (Defecto 0)';
   COMMENT ON COLUMN "AXIS"."ANUASEGURADOSMES"."FREGUL" IS 'Fecha de Regularización';
   COMMENT ON COLUMN "AXIS"."ANUASEGURADOSMES"."NASEG" IS 'Nro asegurados en el mes (Defecto 0)';
   COMMENT ON TABLE "AXIS"."ANUASEGURADOSMES"  IS 'Asegurados(innominados) por mes en la regularización ANU';
  GRANT UPDATE ON "AXIS"."ANUASEGURADOSMES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUASEGURADOSMES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUASEGURADOSMES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUASEGURADOSMES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUASEGURADOSMES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUASEGURADOSMES" TO "PROGRAMADORESCSI";
