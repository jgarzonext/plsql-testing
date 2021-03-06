--------------------------------------------------------
--  DDL for Table EXCEPCIONSEGU
--------------------------------------------------------

  CREATE TABLE "AXIS"."EXCEPCIONSEGU" 
   (	"SSEGURO" NUMBER, 
	"CCONCEP" NUMBER(3,0), 
	"CVALOR" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."EXCEPCIONSEGU"."SSEGURO" IS 'N�mero de seguro';
   COMMENT ON COLUMN "AXIS"."EXCEPCIONSEGU"."CCONCEP" IS 'Concepto de la excepcion (vf : 820)';
   COMMENT ON COLUMN "AXIS"."EXCEPCIONSEGU"."CVALOR" IS 'Si/No';
  GRANT UPDATE ON "AXIS"."EXCEPCIONSEGU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXCEPCIONSEGU" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EXCEPCIONSEGU" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EXCEPCIONSEGU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXCEPCIONSEGU" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EXCEPCIONSEGU" TO "PROGRAMADORESCSI";
