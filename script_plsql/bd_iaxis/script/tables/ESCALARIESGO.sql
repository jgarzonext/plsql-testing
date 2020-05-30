--------------------------------------------------------
--  DDL for Table ESCALARIESGO
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESCALARIESGO" 
   (	"CESCRIE" NUMBER, 
	"NDESDE" NUMBER(16,2), 
	"NHASTA" NUMBER(16,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESCALARIESGO"."CESCRIE" IS 'Campo tipo lista los valores, CVALOR = 8001184  ';
   COMMENT ON COLUMN "AXIS"."ESCALARIESGO"."NDESDE" IS 'Campo de tipo num�rico ';
   COMMENT ON COLUMN "AXIS"."ESCALARIESGO"."NHASTA" IS 'Campo de tipo num�rico ';
  GRANT UPDATE ON "AXIS"."ESCALARIESGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESCALARIESGO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESCALARIESGO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESCALARIESGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESCALARIESGO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESCALARIESGO" TO "PROGRAMADORESCSI";
