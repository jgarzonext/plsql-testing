--------------------------------------------------------
--  DDL for Table PARLIBRETA
--------------------------------------------------------

  CREATE TABLE "AXIS"."PARLIBRETA" 
   (	"CPARAME" VARCHAR2(15 BYTE), 
	"CTIPPAR" NUMBER(2,0), 
	"TVALPAR" VARCHAR2(100 BYTE), 
	"NVALPAR" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PARLIBRETA"."CPARAME" IS 'C�digo del par�metro';
   COMMENT ON COLUMN "AXIS"."PARLIBRETA"."CTIPPAR" IS 'Tipo de Par�metro: 1-NVALPAR, 2-TVALPAR';
   COMMENT ON COLUMN "AXIS"."PARLIBRETA"."TVALPAR" IS 'Valor del Par�metro si el tipo es texto';
   COMMENT ON COLUMN "AXIS"."PARLIBRETA"."NVALPAR" IS 'Valor del Par�metro si el tipo de n�merico';
  GRANT UPDATE ON "AXIS"."PARLIBRETA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARLIBRETA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PARLIBRETA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PARLIBRETA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PARLIBRETA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PARLIBRETA" TO "PROGRAMADORESCSI";
