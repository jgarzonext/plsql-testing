--------------------------------------------------------
--  DDL for Table FLUJO_PASIVOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."FLUJO_PASIVOS" 
   (	"SPROCES" NUMBER, 
	"FVALOR" DATE, 
	"SSEGURO" NUMBER, 
	"FCALCUL" DATE, 
	"PROVPER" NUMBER, 
	"CFALLEC" NUMBER, 
	"RENTA" NUMBER, 
	"FALTA" DATE, 
	"FREVISIO" DATE, 
	"FVENCIM" DATE, 
	"FNACIMI1" DATE, 
	"CSEXO1" NUMBER(1,0), 
	"FNACIMI2" DATE, 
	"CSEXO2" NUMBER(1,0), 
	"FRAC1" NUMBER(9,7), 
	"FRAC2" NUMBER(9,7), 
	"FRACB" NUMBER(9,7), 
	"D0101VCTO" NUMBER(3,0), 
	"DFC3112" NUMBER(3,0), 
	"DFCVCTO" NUMBER(3,0), 
	"RESCATE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."SPROCES" IS 'Sproces identificador del flujo';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."FVALOR" IS 'Fecha valor del cálculo';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."SSEGURO" IS 'Seguro tratado en el flujo de cálculo';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."FCALCUL" IS 'Fecha de cálculo';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."PROVPER" IS 'Provisión matemática a la fecha de cálculo';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."CFALLEC" IS 'Capital de fallecimiento a la fecha de cálculo';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."RENTA" IS 'Renta a la fecha de cálculo';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."FALTA" IS 'Fecha de alta de la póliza';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."FREVISIO" IS 'Fecha de revisión de la póliza';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."FVENCIM" IS 'Fecha de vencimiento de la póliza';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."FNACIMI1" IS 'Fecha de nacimiento asegurado 1 de la póliza';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."CSEXO1" IS 'Sexo del asegurado 1 de la póliza';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."FNACIMI2" IS 'Fecha de nacimiento asegurado 2 de la póliza';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."CSEXO2" IS 'Sexo del asegurado 2 de la póliza';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."FRAC1" IS 'Fracción del cálculo 1 (primer ejercicio)';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."FRAC2" IS 'Fracción del cálculo 2 (último ejercicio)';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."FRACB" IS 'Fracción del cálculo 2 (alternativa último ejercicio)';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."D0101VCTO" IS 'Dias desde 01/01/xxxx hasta vencimiento';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."DFC3112" IS 'Dias desde fecha de cálculo hasta 31/12/xxxx';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."DFCVCTO" IS 'Dias desde fecha de cálculo hasta vencimiento';
   COMMENT ON COLUMN "AXIS"."FLUJO_PASIVOS"."RESCATE" IS 'Valor de rescate a la fecha de cálculo';
  GRANT UPDATE ON "AXIS"."FLUJO_PASIVOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FLUJO_PASIVOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FLUJO_PASIVOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FLUJO_PASIVOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FLUJO_PASIVOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FLUJO_PASIVOS" TO "PROGRAMADORESCSI";
