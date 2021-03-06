--------------------------------------------------------
--  DDL for Table ZONASBONUS
--------------------------------------------------------

  CREATE TABLE "AXIS"."ZONASBONUS" 
   (	"CZBONUS" NUMBER(2,0), 
	"NFACCOR" NUMBER(3,2), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIF" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ZONASBONUS"."CZBONUS" IS 'Codigo zona de bonus';
   COMMENT ON COLUMN "AXIS"."ZONASBONUS"."NFACCOR" IS 'Factor de correccion';
   COMMENT ON TABLE "AXIS"."ZONASBONUS"  IS 'Tabla de zonasbonus';
  GRANT UPDATE ON "AXIS"."ZONASBONUS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ZONASBONUS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ZONASBONUS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ZONASBONUS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ZONASBONUS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ZONASBONUS" TO "PROGRAMADORESCSI";
