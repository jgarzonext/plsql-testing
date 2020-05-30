--------------------------------------------------------
--  DDL for Table ADM_LIQUIDA
--------------------------------------------------------

  CREATE TABLE "AXIS"."ADM_LIQUIDA" 
   (	"SPROLIQ" NUMBER, 
	"CEMPRES" NUMBER(2,0), 
	"CCOMPANI" NUMBER(8,0), 
	"FLIQUIDA" DATE, 
	"TLIQUIDA" VARCHAR2(400 BYTE), 
	"FINILIQ" DATE, 
	"FFINLIQ" DATE, 
	"CMONLIQ" VARCHAR2(3 BYTE), 
	"IIMPORT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ADM_LIQUIDA"."SPROLIQ" IS 'Secuencial Proceso Liquidaci�n';
   COMMENT ON COLUMN "AXIS"."ADM_LIQUIDA"."CEMPRES" IS 'Codigo empresa';
   COMMENT ON COLUMN "AXIS"."ADM_LIQUIDA"."CCOMPANI" IS 'Compa�ia que vamos a liquidar';
   COMMENT ON COLUMN "AXIS"."ADM_LIQUIDA"."FLIQUIDA" IS 'Fecha Liquidaci�n';
   COMMENT ON COLUMN "AXIS"."ADM_LIQUIDA"."TLIQUIDA" IS 'Observaciones Liquidaci�n';
   COMMENT ON COLUMN "AXIS"."ADM_LIQUIDA"."FINILIQ" IS 'Fecha Inicio Liquidaci�n';
   COMMENT ON COLUMN "AXIS"."ADM_LIQUIDA"."FFINLIQ" IS 'Fecha Fin Liquidaci�n';
   COMMENT ON COLUMN "AXIS"."ADM_LIQUIDA"."CMONLIQ" IS 'C�digo Moneda Liquidaci�n';
   COMMENT ON COLUMN "AXIS"."ADM_LIQUIDA"."IIMPORT" IS 'Importe liquidado';
   COMMENT ON TABLE "AXIS"."ADM_LIQUIDA"  IS 'Proceso liquidaci�n';
  GRANT UPDATE ON "AXIS"."ADM_LIQUIDA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ADM_LIQUIDA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ADM_LIQUIDA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ADM_LIQUIDA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ADM_LIQUIDA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ADM_LIQUIDA" TO "PROGRAMADORESCSI";