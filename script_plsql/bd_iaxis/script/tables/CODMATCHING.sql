--------------------------------------------------------
--  DDL for Table CODMATCHING
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODMATCHING" 
   (	"CMATCHING" NUMBER(2,0), 
	 CONSTRAINT "CODMATCHING_PK" PRIMARY KEY ("CMATCHING") ENABLE
   ) ORGANIZATION INDEX NOCOMPRESS PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" 
 PCTTHRESHOLD 50;

   COMMENT ON COLUMN "AXIS"."CODMATCHING"."CMATCHING" IS 'Codi de MATCHING';
  GRANT UPDATE ON "AXIS"."CODMATCHING" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODMATCHING" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODMATCHING" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODMATCHING" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODMATCHING" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODMATCHING" TO "PROGRAMADORESCSI";
