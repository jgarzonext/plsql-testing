--------------------------------------------------------
--  DDL for Table PER_VINCULOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."PER_VINCULOS" 
   (	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CVINCLO" NUMBER(4,0), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PER_VINCULOS"."SPERSON" IS 'Identificador �nico de la Personas';
   COMMENT ON COLUMN "AXIS"."PER_VINCULOS"."CVINCLO" IS 'C�digo v�nculo';
  GRANT UPDATE ON "AXIS"."PER_VINCULOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PER_VINCULOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PER_VINCULOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PER_VINCULOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PER_VINCULOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PER_VINCULOS" TO "PROGRAMADORESCSI";