--------------------------------------------------------
--  DDL for Table CODISUBAGRUPOL
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODISUBAGRUPOL" 
   (	"CAGRUPA" NUMBER(4,0), 
	"CSUBAGRUPA" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON TABLE "AXIS"."CODISUBAGRUPOL"  IS 'Tabla de subagrupaciones de p�lizas.';
  GRANT UPDATE ON "AXIS"."CODISUBAGRUPOL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODISUBAGRUPOL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODISUBAGRUPOL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODISUBAGRUPOL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODISUBAGRUPOL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODISUBAGRUPOL" TO "PROGRAMADORESCSI";
