--------------------------------------------------------
--  DDL for Table SCAUMOT_CNV
--------------------------------------------------------

  CREATE TABLE "AXIS"."SCAUMOT_CNV" 
   (	"CCAUSIN_OLD" NUMBER(4,0), 
	"TCAUSIN_OLD" VARCHAR2(100 BYTE), 
	"CMOTSIN_OLD" NUMBER(4,0), 
	"TMOTSIN_OLD" VARCHAR2(100 BYTE), 
	"CCAUSIN_NEW" NUMBER(4,0), 
	"TCAUSIN_NEW" VARCHAR2(100 BYTE), 
	"CMOTSIN_NEW" NUMBER(4,0), 
	"TMOTSIN_NEW" VARCHAR2(100 BYTE), 
	"SCAUMOT_OLD" NUMBER(8,0), 
	"SCAUMOT_NEW" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON TABLE "AXIS"."SCAUMOT_CNV"  IS 'Tabla temporal para la creacion de siniestros LCOL';
  GRANT UPDATE ON "AXIS"."SCAUMOT_CNV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SCAUMOT_CNV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SCAUMOT_CNV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SCAUMOT_CNV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SCAUMOT_CNV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SCAUMOT_CNV" TO "PROGRAMADORESCSI";