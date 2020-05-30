--------------------------------------------------------
--  DDL for Table PROFESIONALES
--------------------------------------------------------

  CREATE TABLE "AXIS"."PROFESIONALES" 
   (	"SPERSON" NUMBER(10,0), 
	"CACTPRO" NUMBER(2,0), 
	"CRETENC" NUMBER(2,0), 
	"CTIPIVA" NUMBER(2,0), 
	"NCOLEGI" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PROFESIONALES"."SPERSON" IS 'Identificador �nico de la Personas';
   COMMENT ON COLUMN "AXIS"."PROFESIONALES"."CACTPRO" IS 'C�digo actividad';
   COMMENT ON COLUMN "AXIS"."PROFESIONALES"."CRETENC" IS 'C�digo de retenci�n';
   COMMENT ON COLUMN "AXIS"."PROFESIONALES"."CTIPIVA" IS 'C�digo de IVA';
   COMMENT ON COLUMN "AXIS"."PROFESIONALES"."NCOLEGI" IS 'N�mero de colegiado';
  GRANT UPDATE ON "AXIS"."PROFESIONALES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROFESIONALES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PROFESIONALES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PROFESIONALES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROFESIONALES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PROFESIONALES" TO "PROGRAMADORESCSI";