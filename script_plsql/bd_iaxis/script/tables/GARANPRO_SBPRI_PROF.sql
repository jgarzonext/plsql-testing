--------------------------------------------------------
--  DDL for Table GARANPRO_SBPRI_PROF
--------------------------------------------------------

  CREATE TABLE "AXIS"."GARANPRO_SBPRI_PROF" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CACTIVI" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"CPROFES" VARCHAR2(5 BYTE), 
	"NVALOR" NUMBER(8,5)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."GARANPRO_SBPRI_PROF"."NVALOR" IS 'Valor de la sobreprima';
   COMMENT ON TABLE "AXIS"."GARANPRO_SBPRI_PROF"  IS 'Mantenimiento de sobreprima a profesión';
  GRANT UPDATE ON "AXIS"."GARANPRO_SBPRI_PROF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANPRO_SBPRI_PROF" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GARANPRO_SBPRI_PROF" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."GARANPRO_SBPRI_PROF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANPRO_SBPRI_PROF" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GARANPRO_SBPRI_PROF" TO "PROGRAMADORESCSI";
