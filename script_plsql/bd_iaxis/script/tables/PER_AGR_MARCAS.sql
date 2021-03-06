--------------------------------------------------------
--  DDL for Table PER_AGR_MARCAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."PER_AGR_MARCAS" 
   (	"CEMPRES" NUMBER(2,0), 
	"SPERSON" NUMBER(10,0), 
	"CMARCA" VARCHAR2(10 BYTE), 
	"NMOVIMI" NUMBER(4,0), 
	"CTIPO" NUMBER, 
	"CTOMADOR" NUMBER, 
	"CCONSORCIO" NUMBER, 
	"CASEGURADO" NUMBER, 
	"CCODEUDOR" NUMBER, 
	"CBENEF" NUMBER, 
	"CACCIONISTA" NUMBER, 
	"CINTERMED" NUMBER, 
	"CREPRESEN" NUMBER, 
	"CAPODERADO" NUMBER, 
	"CPAGADOR" NUMBER, 
	"OBSERVACION" VARCHAR2(2000 BYTE), 
	"CUSER" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CPROVEEDOR" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CMARCA" IS 'Codigo de marca';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."NMOVIMI" IS 'Numero de movimiento';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CTIPO" IS 'Tipo marca';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CTOMADOR" IS '0 Inactivo / 1 Activo';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CCONSORCIO" IS '0 Inactivo / 1 Activo';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CASEGURADO" IS '0 Inactivo / 1 Activo';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CCODEUDOR" IS '0 Inactivo / 1 Activo';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CBENEF" IS '0 Inactivo / 1 Activo';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CACCIONISTA" IS '0 Inactivo / 1 Activo';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CINTERMED" IS '0 Inactivo / 1 Activo';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CREPRESEN" IS '0 Inactivo / 1 Activo';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CAPODERADO" IS '0 Inactivo / 1 Activo';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CPAGADOR" IS '0 Inactivo / 1 Activo';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."OBSERVACION" IS 'Observacion';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CUSER" IS 'Usuario';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."PER_AGR_MARCAS"."CPROVEEDOR" IS '0 Inactivo / 1 Activo';
   COMMENT ON TABLE "AXIS"."PER_AGR_MARCAS"  IS 'marcas por persona';
  GRANT UPDATE ON "AXIS"."PER_AGR_MARCAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PER_AGR_MARCAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PER_AGR_MARCAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PER_AGR_MARCAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PER_AGR_MARCAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PER_AGR_MARCAS" TO "PROGRAMADORESCSI";
