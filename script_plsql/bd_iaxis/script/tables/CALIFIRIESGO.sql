--------------------------------------------------------
--  DDL for Table CALIFIRIESGO
--------------------------------------------------------

  CREATE TABLE "AXIS"."CALIFIRIESGO" 
   (	"CCALIF1" VARCHAR2(1 BYTE), 
	"CCALIF2" NUMBER(2,0), 
	"SPLENO" NUMBER(6,0), 
	"NDESDE" NUMBER(13,4), 
	"NHASTA" NUMBER(13,4)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CALIFIRIESGO"."CCALIF1" IS 'Calificaci�n del riesgo';
   COMMENT ON COLUMN "AXIS"."CALIFIRIESGO"."CCALIF2" IS 'Subcalificaci�n del riesgo';
   COMMENT ON COLUMN "AXIS"."CALIFIRIESGO"."SPLENO" IS 'Identificador del Pleno';
   COMMENT ON COLUMN "AXIS"."CALIFIRIESGO"."NDESDE" IS 'Valor inicial';
   COMMENT ON COLUMN "AXIS"."CALIFIRIESGO"."NHASTA" IS 'Valor final';
  GRANT UPDATE ON "AXIS"."CALIFIRIESGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CALIFIRIESGO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CALIFIRIESGO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CALIFIRIESGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CALIFIRIESGO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CALIFIRIESGO" TO "PROGRAMADORESCSI";