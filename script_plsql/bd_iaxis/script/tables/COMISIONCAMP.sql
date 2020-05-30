--------------------------------------------------------
--  DDL for Table COMISIONCAMP
--------------------------------------------------------

  CREATE TABLE "AXIS"."COMISIONCAMP" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CACTIVI" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"CCAMPANYA" NUMBER(3,0), 
	"NVERSION" NUMBER(3,0), 
	"CCOMISI" NUMBER, 
	"CMODCOM" NUMBER(1,0), 
	"PCOMISI" NUMBER(6,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."COMISIONCAMP"."CRAMO" IS 'C�digo de Ramo';
   COMMENT ON COLUMN "AXIS"."COMISIONCAMP"."CMODALI" IS 'C�digo de Modalidad';
   COMMENT ON COLUMN "AXIS"."COMISIONCAMP"."CTIPSEG" IS 'C�digo de Tipo de Seguro';
   COMMENT ON COLUMN "AXIS"."COMISIONCAMP"."CCOLECT" IS 'C�digo de Colectividad';
   COMMENT ON COLUMN "AXIS"."COMISIONCAMP"."CACTIVI" IS 'C�digo de Actividad';
   COMMENT ON COLUMN "AXIS"."COMISIONCAMP"."CGARANT" IS 'C�digo de Garant�a';
   COMMENT ON COLUMN "AXIS"."COMISIONCAMP"."CCAMPANYA" IS 'C�digo de Campa�a';
   COMMENT ON COLUMN "AXIS"."COMISIONCAMP"."NVERSION" IS 'Versi�n Campa�a';
   COMMENT ON COLUMN "AXIS"."COMISIONCAMP"."CCOMISI" IS 'C�digo de Comisi�n';
   COMMENT ON COLUMN "AXIS"."COMISIONCAMP"."CMODCOM" IS 'Modalidad de la Comisi�n. CVALOR: 67';
   COMMENT ON COLUMN "AXIS"."COMISIONCAMP"."PCOMISI" IS 'Porcentaje de Comisi�n';
   COMMENT ON TABLE "AXIS"."COMISIONCAMP"  IS 'Comisiones a nivel de Campa�a';
  GRANT UPDATE ON "AXIS"."COMISIONCAMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMISIONCAMP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COMISIONCAMP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."COMISIONCAMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMISIONCAMP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COMISIONCAMP" TO "PROGRAMADORESCSI";