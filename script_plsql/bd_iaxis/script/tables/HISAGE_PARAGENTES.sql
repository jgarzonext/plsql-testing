--------------------------------------------------------
--  DDL for Table HISAGE_PARAGENTES
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISAGE_PARAGENTES" 
   (	"CPARAM" VARCHAR2(20 BYTE), 
	"CAGENTE" NUMBER, 
	"NVALPAR" NUMBER(8,0), 
	"TVALPAR" VARCHAR2(100 BYTE), 
	"FVALPAR" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISAGE_PARAGENTES"."CPARAM" IS 'Código del parámetro';
   COMMENT ON COLUMN "AXIS"."HISAGE_PARAGENTES"."CAGENTE" IS 'Código del agente';
   COMMENT ON COLUMN "AXIS"."HISAGE_PARAGENTES"."NVALPAR" IS 'Código del parámetro';
   COMMENT ON COLUMN "AXIS"."HISAGE_PARAGENTES"."TVALPAR" IS 'Texto del parámetro';
   COMMENT ON COLUMN "AXIS"."HISAGE_PARAGENTES"."FVALPAR" IS 'Fecha del parámetro';
   COMMENT ON COLUMN "AXIS"."HISAGE_PARAGENTES"."CUSUARI" IS 'Código usuario modificación del registro';
   COMMENT ON COLUMN "AXIS"."HISAGE_PARAGENTES"."FMODIFI" IS 'Fecha modificación en la tabla age_paragentes';
   COMMENT ON TABLE "AXIS"."HISAGE_PARAGENTES"  IS 'Tabla que grabará todos los datos que se actualicen en la tabla AGE_PARAGENTES';
  GRANT UPDATE ON "AXIS"."HISAGE_PARAGENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISAGE_PARAGENTES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISAGE_PARAGENTES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISAGE_PARAGENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISAGE_PARAGENTES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISAGE_PARAGENTES" TO "PROGRAMADORESCSI";
