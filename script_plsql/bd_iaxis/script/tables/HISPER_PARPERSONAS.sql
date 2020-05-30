--------------------------------------------------------
--  DDL for Table HISPER_PARPERSONAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISPER_PARPERSONAS" 
   (	"SPARPERS" NUMBER, 
	"CPARAM" VARCHAR2(20 BYTE), 
	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"NVALPAR" NUMBER(20,0), 
	"TVALPAR" VARCHAR2(100 BYTE), 
	"FVALPAR" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FUSUMOD" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISPER_PARPERSONAS"."SPARPERS" IS 'Secuencia';
   COMMENT ON COLUMN "AXIS"."HISPER_PARPERSONAS"."CPARAM" IS 'C�digo del par�metro';
   COMMENT ON COLUMN "AXIS"."HISPER_PARPERSONAS"."SPERSON" IS 'C�digo de la persona';
   COMMENT ON COLUMN "AXIS"."HISPER_PARPERSONAS"."CAGENTE" IS 'C�digo del agente';
   COMMENT ON COLUMN "AXIS"."HISPER_PARPERSONAS"."NVALPAR" IS 'C�digo del par�metro';
   COMMENT ON COLUMN "AXIS"."HISPER_PARPERSONAS"."TVALPAR" IS 'Texto del par�metro';
   COMMENT ON COLUMN "AXIS"."HISPER_PARPERSONAS"."FVALPAR" IS 'Fecha del par�metro';
   COMMENT ON COLUMN "AXIS"."HISPER_PARPERSONAS"."CUSUARI" IS 'usuario de Alta';
   COMMENT ON COLUMN "AXIS"."HISPER_PARPERSONAS"."FMOVIMI" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."HISPER_PARPERSONAS"."CUSUMOD" IS 'usuario de modificaci�n';
   COMMENT ON COLUMN "AXIS"."HISPER_PARPERSONAS"."FUSUMOD" IS 'fecha de modificaci�n';
   COMMENT ON TABLE "AXIS"."HISPER_PARPERSONAS"  IS 'Hist�rico PER_PARPERSONAS';
  GRANT UPDATE ON "AXIS"."HISPER_PARPERSONAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPER_PARPERSONAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISPER_PARPERSONAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISPER_PARPERSONAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPER_PARPERSONAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISPER_PARPERSONAS" TO "PROGRAMADORESCSI";