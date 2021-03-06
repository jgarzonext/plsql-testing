--------------------------------------------------------
--  DDL for Table DETPARPRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."DETPARPRO" 
   (	"CPARPRO" VARCHAR2(20 BYTE), 
	"CIDIOMA" NUMBER(2,0), 
	"CVALPAR" NUMBER(8,0), 
	"TVALPAR" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON TABLE "AXIS"."DETPARPRO"  IS 'Valores de parametros por producto';
  GRANT UPDATE ON "AXIS"."DETPARPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETPARPRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DETPARPRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DETPARPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETPARPRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DETPARPRO" TO "PROGRAMADORESCSI";
