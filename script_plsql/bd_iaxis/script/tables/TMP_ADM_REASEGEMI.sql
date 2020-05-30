--------------------------------------------------------
--  DDL for Table TMP_ADM_REASEGEMI
--------------------------------------------------------

  CREATE TABLE "AXIS"."TMP_ADM_REASEGEMI" 
   (	"SREAEMI" NUMBER(8,0), 
	"SSEGURO" NUMBER, 
	"NRECIBO" NUMBER, 
	"NFACTOR" NUMBER, 
	"FEFECTE" DATE, 
	"FVENCIM" DATE, 
	"FCIERRE" DATE, 
	"FGENERA" DATE, 
	"CMOTCES" NUMBER(1,0), 
	"SPROCES" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TMP_ADM_REASEGEMI"."SREAEMI" IS 'Clave primaria';
   COMMENT ON COLUMN "AXIS"."TMP_ADM_REASEGEMI"."SSEGURO" IS 'Numero de seguro';
   COMMENT ON COLUMN "AXIS"."TMP_ADM_REASEGEMI"."NFACTOR" IS 'Factor de prorrateo aplicado';
   COMMENT ON COLUMN "AXIS"."TMP_ADM_REASEGEMI"."FEFECTE" IS 'Fecha efecto del recibo';
   COMMENT ON COLUMN "AXIS"."TMP_ADM_REASEGEMI"."FVENCIM" IS 'Fecha vencimiento del recibo';
   COMMENT ON COLUMN "AXIS"."TMP_ADM_REASEGEMI"."FCIERRE" IS 'Fecha cierre reaseguro';
   COMMENT ON COLUMN "AXIS"."TMP_ADM_REASEGEMI"."FGENERA" IS 'Fecha generaci�n del recibo';
   COMMENT ON COLUMN "AXIS"."TMP_ADM_REASEGEMI"."CMOTCES" IS 'Motivo cesi�n 1-Emisi�n, 2-Anulaci�n';
   COMMENT ON TABLE "AXIS"."TMP_ADM_REASEGEMI"  IS 'Table temporal de reasegemi';
  GRANT UPDATE ON "AXIS"."TMP_ADM_REASEGEMI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_ADM_REASEGEMI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_ADM_REASEGEMI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_ADM_REASEGEMI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_ADM_REASEGEMI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_ADM_REASEGEMI" TO "PROGRAMADORESCSI";
