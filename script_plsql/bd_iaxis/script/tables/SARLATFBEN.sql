--------------------------------------------------------
--  DDL for Table SARLATFBEN
--------------------------------------------------------

  CREATE TABLE "AXIS"."SARLATFBEN" 
   (	"SSARLAFT" NUMBER, 
	"IDENTIFICACION" NUMBER, 
	"PPARTICI" NUMBER, 
	"TNOMBRE" VARCHAR2(2000 BYTE), 
	"CTIPIDEN" NUMBER, 
	"NNUMIDE" VARCHAR2(2000 BYTE), 
	"TSOCIEDAD" VARCHAR2(2000 BYTE), 
	"NNUMIDESOC" VARCHAR2(2000 BYTE), 
	"FREGISTRO" DATE, 
	"CUSER" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SARLATFBEN"."SSARLAFT" IS 'Identificador unico de la FFC';
   COMMENT ON COLUMN "AXIS"."SARLATFBEN"."IDENTIFICACION" IS 'Consecutivo por cada codigo sarlaft';
   COMMENT ON COLUMN "AXIS"."SARLATFBEN"."PPARTICI" IS 'Porcentaje participacion';
   COMMENT ON COLUMN "AXIS"."SARLATFBEN"."TNOMBRE" IS 'Nombre';
   COMMENT ON COLUMN "AXIS"."SARLATFBEN"."CTIPIDEN" IS 'Tipo identificacion';
   COMMENT ON COLUMN "AXIS"."SARLATFBEN"."NNUMIDE" IS 'Numero identificacion';
   COMMENT ON COLUMN "AXIS"."SARLATFBEN"."TSOCIEDAD" IS 'Razon social de la que es accionista';
   COMMENT ON COLUMN "AXIS"."SARLATFBEN"."NNUMIDESOC" IS 'NIT donde es accionista';
   COMMENT ON COLUMN "AXIS"."SARLATFBEN"."FREGISTRO" IS 'Fecha registro';
   COMMENT ON COLUMN "AXIS"."SARLATFBEN"."CUSER" IS 'Usuario de alta';
  GRANT SELECT ON "AXIS"."SARLATFBEN" TO "PROGRAMADORESCSI";
  GRANT DELETE ON "AXIS"."SARLATFBEN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SARLATFBEN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SARLATFBEN" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."SARLATFBEN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SARLATFBEN" TO "CONF_DWH";
