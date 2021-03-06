--------------------------------------------------------
--  DDL for Table SARLATFPEP
--------------------------------------------------------

  CREATE TABLE "AXIS"."SARLATFPEP" 
   (	"SSARLAFT" NUMBER, 
	"IDENTIFICACION" NUMBER, 
	"CTIPREL" NUMBER, 
	"TNOMBRE" VARCHAR2(2000 BYTE), 
	"CTIPIDEN" NUMBER, 
	"NNUMIDE" VARCHAR2(2000 BYTE), 
	"CPAIS" NUMBER, 
	"TPAIS" VARCHAR2(2000 BYTE), 
	"TENTIDAD" VARCHAR2(2000 BYTE), 
	"TCARGO" VARCHAR2(2000 BYTE), 
	"FDESVIN" DATE, 
	"FREGISTRO" DATE, 
	"CUSER" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SARLATFPEP"."SSARLAFT" IS 'Identificador unico de la FFC';
   COMMENT ON COLUMN "AXIS"."SARLATFPEP"."IDENTIFICACION" IS 'Consecutivo por cada codigo sarlaft';
   COMMENT ON COLUMN "AXIS"."SARLATFPEP"."CTIPREL" IS 'Vinculo Relacion';
   COMMENT ON COLUMN "AXIS"."SARLATFPEP"."TNOMBRE" IS 'Nombre';
   COMMENT ON COLUMN "AXIS"."SARLATFPEP"."CTIPIDEN" IS 'Tipo identificacion';
   COMMENT ON COLUMN "AXIS"."SARLATFPEP"."NNUMIDE" IS 'Numero identificacion';
   COMMENT ON COLUMN "AXIS"."SARLATFPEP"."CPAIS" IS 'País';
   COMMENT ON COLUMN "AXIS"."SARLATFPEP"."TPAIS" IS 'Descripcion de nacionalidad';
   COMMENT ON COLUMN "AXIS"."SARLATFPEP"."TENTIDAD" IS 'Entidad';
   COMMENT ON COLUMN "AXIS"."SARLATFPEP"."TCARGO" IS 'Cargo';
   COMMENT ON COLUMN "AXIS"."SARLATFPEP"."FDESVIN" IS 'Fecha desvinculacion';
   COMMENT ON COLUMN "AXIS"."SARLATFPEP"."FREGISTRO" IS 'Fecha de alta en el sistema';
   COMMENT ON COLUMN "AXIS"."SARLATFPEP"."CUSER" IS 'Usuario de alta';
  GRANT SELECT ON "AXIS"."SARLATFPEP" TO "PROGRAMADORESCSI";
  GRANT DELETE ON "AXIS"."SARLATFPEP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SARLATFPEP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SARLATFPEP" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."SARLATFPEP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SARLATFPEP" TO "CONF_DWH";
