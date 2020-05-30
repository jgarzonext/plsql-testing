--------------------------------------------------------
--  DDL for Table PRESTAPLAN
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRESTAPLAN" 
   (	"SPRESTAPLAN" NUMBER(6,0), 
	"SSEGURO" NUMBER, 
	"SPERSON" NUMBER(10,0), 
	"CTIPREN" NUMBER(1,0), 
	"CTIPJUB" NUMBER(1,0), 
	"FACCION" DATE, 
	"NNIVEL" NUMBER(3,0), 
	"FCREACION" DATE, 
	"CESTADO" NUMBER(1,0), 
	"NSINIES" NUMBER(8,0), 
	"NPARTI" NUMBER(25,6), 
	"NPARRET" NUMBER(25,6), 
	"NPARTRASRET" NUMBER(25,10), 
	"SOLNIF" VARCHAR2(9 BYTE), 
	"SOLNOMBRE" VARCHAR2(30 BYTE), 
	"SOLTEL" VARCHAR2(15 BYTE), 
	"CUSUALTA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PRESTAPLAN"."NPARRET" IS 'Participaciones retenidas';
   COMMENT ON COLUMN "AXIS"."PRESTAPLAN"."SOLNIF" IS 'Nif del que comunica la contingencia';
   COMMENT ON COLUMN "AXIS"."PRESTAPLAN"."SOLNOMBRE" IS 'Nombre del que comunica la contingencia';
   COMMENT ON COLUMN "AXIS"."PRESTAPLAN"."SOLTEL" IS 'Telefono del que comunicala contingencia';
   COMMENT ON COLUMN "AXIS"."PRESTAPLAN"."CUSUALTA" IS 'Usuario que da de alta la solicitud de prestación';
  GRANT UPDATE ON "AXIS"."PRESTAPLAN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRESTAPLAN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRESTAPLAN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRESTAPLAN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRESTAPLAN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRESTAPLAN" TO "PROGRAMADORESCSI";
