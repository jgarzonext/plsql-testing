--------------------------------------------------------
--  DDL for Table SIN_DESMOTCAU
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_DESMOTCAU" 
   (	"CCAUSIN" NUMBER(4,0), 
	"CMOTSIN" NUMBER(4,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TMOTSIN" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_DESMOTCAU"."CCAUSIN" IS 'C�digo Causa Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_DESMOTCAU"."CMOTSIN" IS 'C�digo Motivo Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_DESMOTCAU"."CIDIOMA" IS 'C�digo Idioma';
   COMMENT ON COLUMN "AXIS"."SIN_DESMOTCAU"."TMOTSIN" IS 'Descripci�n Motivo Siniestro';
   COMMENT ON TABLE "AXIS"."SIN_DESMOTCAU"  IS 'Descripci�n Motivos de Causas de Siniestro';
  GRANT UPDATE ON "AXIS"."SIN_DESMOTCAU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_DESMOTCAU" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_DESMOTCAU" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_DESMOTCAU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_DESMOTCAU" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_DESMOTCAU" TO "PROGRAMADORESCSI";