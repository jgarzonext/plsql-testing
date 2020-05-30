--------------------------------------------------------
--  DDL for Table INTCOMPROGAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."INTCOMPROGAR" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CACTIVI" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"FINI" DATE, 
	"FFIN" DATE, 
	"PINTCOM" NUMBER(5,2), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIF" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INTCOMPROGAR"."FINI" IS 'Fecha Inicio Vigencia';
   COMMENT ON COLUMN "AXIS"."INTCOMPROGAR"."FFIN" IS 'Fecha Fin Vigencia';
   COMMENT ON COLUMN "AXIS"."INTCOMPROGAR"."PINTCOM" IS 'Porcentaje Interes Compa��a';
   COMMENT ON COLUMN "AXIS"."INTCOMPROGAR"."CUSUALT" IS 'C�digo Usuario de alta del registro';
   COMMENT ON COLUMN "AXIS"."INTCOMPROGAR"."FALTA" IS 'Fecha de Alta';
   COMMENT ON COLUMN "AXIS"."INTCOMPROGAR"."CUSUMOD" IS 'C�digo usuario que modifica el registro';
   COMMENT ON COLUMN "AXIS"."INTCOMPROGAR"."FMODIF" IS 'Fecha de Modificaci�n';
   COMMENT ON TABLE "AXIS"."INTCOMPROGAR"  IS 'Inter�s de la Compa��a';
  GRANT UPDATE ON "AXIS"."INTCOMPROGAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INTCOMPROGAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INTCOMPROGAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INTCOMPROGAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INTCOMPROGAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INTCOMPROGAR" TO "PROGRAMADORESCSI";