--------------------------------------------------------
--  DDL for Table SIN_DESCAUEST
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_DESCAUEST" 
   (	"CCAUEST" NUMBER(4,0), 
	"CESTSIN" NUMBER(2,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TCAUEST" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_DESCAUEST"."CCAUEST" IS 'C�digo Causa Estado';
   COMMENT ON COLUMN "AXIS"."SIN_DESCAUEST"."CESTSIN" IS 'C�digo Estado Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_DESCAUEST"."CIDIOMA" IS 'C�digo Idioma';
   COMMENT ON COLUMN "AXIS"."SIN_DESCAUEST"."TCAUEST" IS 'Descripci�n Causa Estado';
   COMMENT ON TABLE "AXIS"."SIN_DESCAUEST"  IS 'Descripci�n Causa Estado Siniestro';
  GRANT UPDATE ON "AXIS"."SIN_DESCAUEST" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_DESCAUEST" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_DESCAUEST" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_DESCAUEST" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_DESCAUEST" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_DESCAUEST" TO "PROGRAMADORESCSI";