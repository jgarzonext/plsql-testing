--------------------------------------------------------
--  DDL for Table CODICNAE
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODICNAE" 
   (	"CCNAE" VARCHAR2(4 BYTE), 
	"CNIVEL" NUMBER(1,0), 
	"CCNAEINTEGR" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODICNAE"."CCNAE" IS 'Codigo CNAE';
   COMMENT ON COLUMN "AXIS"."CODICNAE"."CNIVEL" IS 'Nivel del c�digo (Valores posibles: 2,3,4)';
   COMMENT ON COLUMN "AXIS"."CODICNAE"."CCNAEINTEGR" IS 'C�digo intergrado CNAE';
   COMMENT ON TABLE "AXIS"."CODICNAE"  IS 'Tabla de codigos CNAE';
  GRANT UPDATE ON "AXIS"."CODICNAE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODICNAE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODICNAE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODICNAE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODICNAE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODICNAE" TO "PROGRAMADORESCSI";