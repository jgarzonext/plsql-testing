--------------------------------------------------------
--  DDL for Table CONTROL_ERROR
--------------------------------------------------------

  CREATE TABLE "AXIS"."CONTROL_ERROR" 
   (	"FECHA" DATE, 
	"ID" VARCHAR2(30 BYTE), 
	"DONDE" VARCHAR2(60 BYTE), 
	"SUCESO" VARCHAR2(2000 BYTE), 
	"SEQERROR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CONTROL_ERROR"."FECHA" IS 'fecha';
   COMMENT ON COLUMN "AXIS"."CONTROL_ERROR"."ID" IS 'identificador';
   COMMENT ON COLUMN "AXIS"."CONTROL_ERROR"."DONDE" IS 'lugar donde se ha producido el error';
   COMMENT ON COLUMN "AXIS"."CONTROL_ERROR"."SUCESO" IS 'error';
   COMMENT ON TABLE "AXIS"."CONTROL_ERROR"  IS 'tabla de debugación - JFD';
  GRANT UPDATE ON "AXIS"."CONTROL_ERROR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTROL_ERROR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONTROL_ERROR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONTROL_ERROR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTROL_ERROR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONTROL_ERROR" TO "PROGRAMADORESCSI";
