--------------------------------------------------------
--  DDL for Table CLAUSUPARA_VALORES
--------------------------------------------------------

  CREATE TABLE "AXIS"."CLAUSUPARA_VALORES" 
   (	"SCLAGEN" NUMBER(4,0), 
	"NPARAME" NUMBER(2,0), 
	"CIDIOMA" NUMBER(2,0), 
	"CPARAME" NUMBER(20,0), 
	"TPARAME" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CLAUSUPARA_VALORES"."SCLAGEN" IS 'C�digo CLAUSULA';
   COMMENT ON COLUMN "AXIS"."CLAUSUPARA_VALORES"."NPARAME" IS 'C�digo del par�metro';
   COMMENT ON COLUMN "AXIS"."CLAUSUPARA_VALORES"."CIDIOMA" IS 'C�digo de Idioma';
   COMMENT ON COLUMN "AXIS"."CLAUSUPARA_VALORES"."CPARAME" IS 'C�digo del valor';
   COMMENT ON COLUMN "AXIS"."CLAUSUPARA_VALORES"."TPARAME" IS 'Valor del par�metro';
   COMMENT ON TABLE "AXIS"."CLAUSUPARA_VALORES"  IS 'Valores de los par�metros de las clausulas';
  GRANT UPDATE ON "AXIS"."CLAUSUPARA_VALORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CLAUSUPARA_VALORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CLAUSUPARA_VALORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CLAUSUPARA_VALORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CLAUSUPARA_VALORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CLAUSUPARA_VALORES" TO "PROGRAMADORESCSI";
