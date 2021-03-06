--------------------------------------------------------
--  DDL for Table CODMOTIVOANUL
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODMOTIVOANUL" 
   (	"CMOTMOV" NUMBER(3,0), 
	"CMOTANU" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODMOTIVOANUL"."CMOTMOV" IS 'C�digo causa anulacion';
   COMMENT ON COLUMN "AXIS"."CODMOTIVOANUL"."CMOTANU" IS 'C�digo motivo anulacion';
   COMMENT ON TABLE "AXIS"."CODMOTIVOANUL"  IS 'C�digo motivo anulaci�n';
  GRANT UPDATE ON "AXIS"."CODMOTIVOANUL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODMOTIVOANUL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODMOTIVOANUL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODMOTIVOANUL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODMOTIVOANUL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODMOTIVOANUL" TO "PROGRAMADORESCSI";
