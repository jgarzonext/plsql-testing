--------------------------------------------------------
--  DDL for Table SEGUROS_AHO
--------------------------------------------------------

  CREATE TABLE "AXIS"."SEGUROS_AHO" 
   (	"SSEGURO" NUMBER, 
	"PINTTEC" NUMBER(8,2), 
	"PINTPAC" NUMBER(8,2), 
	"FSUSAPO" DATE, 
	"NDURPER" NUMBER(6,0), 
	"FREVISIO" DATE, 
	"NDURREV" NUMBER(6,0), 
	"PINTREV" NUMBER(7,2), 
	"FREVANT" DATE, 
	"CFPREST" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SEGUROS_AHO"."PINTTEC" IS 'Inter�s T�cnico';
   COMMENT ON COLUMN "AXIS"."SEGUROS_AHO"."PINTPAC" IS 'Inter�s pactado';
   COMMENT ON COLUMN "AXIS"."SEGUROS_AHO"."FSUSAPO" IS 'Fecha Suspension aportaciones';
   COMMENT ON COLUMN "AXIS"."SEGUROS_AHO"."NDURPER" IS 'Duraci�n periodo inter�s garantizado';
   COMMENT ON COLUMN "AXIS"."SEGUROS_AHO"."FREVISIO" IS 'Fecha de revisi�n/renovaci�n duraci�n per�odo inter�s garantizado';
   COMMENT ON COLUMN "AXIS"."SEGUROS_AHO"."NDURREV" IS 'Duraci�n a aplicar en la revisi�n/renovaci�n de la p�liza';
   COMMENT ON COLUMN "AXIS"."SEGUROS_AHO"."PINTREV" IS 'Inter�s t�cnico a aplicar en la revisi�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS_AHO"."FREVANT" IS 'Fecha revisi�n anterior';
   COMMENT ON COLUMN "AXIS"."SEGUROS_AHO"."CFPREST" IS 'Forma de pago de la prestaci�n. Valor fijo 205';
   COMMENT ON TABLE "AXIS"."SEGUROS_AHO"  IS 'Seguros Ahorro';
  GRANT INSERT ON "AXIS"."SEGUROS_AHO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SEGUROS_AHO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROS_AHO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SEGUROS_AHO" TO "PROGRAMADORESCSI";
  GRANT UPDATE ON "AXIS"."SEGUROS_AHO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROS_AHO" TO "R_AXIS";
