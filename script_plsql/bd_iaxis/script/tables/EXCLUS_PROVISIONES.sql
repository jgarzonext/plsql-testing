--------------------------------------------------------
--  DDL for Table EXCLUS_PROVISIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."EXCLUS_PROVISIONES" 
   (	"NPOLIZA" NUMBER, 
	"NRECIBO" NUMBER, 
	"COBSERVEXC" VARCHAR2(200 BYTE), 
	"CPROVISI" NUMBER, 
	"COBSERVP" VARCHAR2(200 BYTE), 
	"CNPROVISI" NUMBER, 
	"COBSERVNP" VARCHAR2(200 BYTE), 
	"FALTA" DATE, 
	"FBAJA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."EXCLUS_PROVISIONES"."NPOLIZA" IS 'N�mero de P�liza';
   COMMENT ON COLUMN "AXIS"."EXCLUS_PROVISIONES"."NRECIBO" IS 'N�mero de Recibo';
   COMMENT ON COLUMN "AXIS"."EXCLUS_PROVISIONES"."COBSERVEXC" IS 'Observaci�n de Exclusi�n';
   COMMENT ON COLUMN "AXIS"."EXCLUS_PROVISIONES"."CPROVISI" IS 'Se provisiona  CVALOR 8001174';
   COMMENT ON COLUMN "AXIS"."EXCLUS_PROVISIONES"."COBSERVP" IS 'Observaci�n si se provisiona';
   COMMENT ON COLUMN "AXIS"."EXCLUS_PROVISIONES"."CNPROVISI" IS 'No se provisiona CVALOR 8001175';
   COMMENT ON COLUMN "AXIS"."EXCLUS_PROVISIONES"."COBSERVNP" IS 'Observaci�n no se provisiona';
   COMMENT ON COLUMN "AXIS"."EXCLUS_PROVISIONES"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."EXCLUS_PROVISIONES"."FBAJA" IS 'Fecha baja';
  GRANT UPDATE ON "AXIS"."EXCLUS_PROVISIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXCLUS_PROVISIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EXCLUS_PROVISIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EXCLUS_PROVISIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXCLUS_PROVISIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EXCLUS_PROVISIONES" TO "PROGRAMADORESCSI";
