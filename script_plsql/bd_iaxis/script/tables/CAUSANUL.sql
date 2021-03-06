--------------------------------------------------------
--  DDL for Table CAUSANUL
--------------------------------------------------------

  CREATE TABLE "AXIS"."CAUSANUL" 
   (	"SPRODUC" NUMBER(6,0), 
	"CTIPBAJA" NUMBER(1,0), 
	"CMOTMOV" NUMBER(3,0), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CAUSANUL"."SPRODUC" IS 'C�digo de producto';
   COMMENT ON COLUMN "AXIS"."CAUSANUL"."CTIPBAJA" IS 'Tipo de baja VF=553';
   COMMENT ON COLUMN "AXIS"."CAUSANUL"."CMOTMOV" IS 'C�digo motivo movimiento anulaci�n';
   COMMENT ON COLUMN "AXIS"."CAUSANUL"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."CAUSANUL"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."CAUSANUL"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."CAUSANUL"."FMODIFI" IS 'Fecha en que se modifica el registro';
  GRANT UPDATE ON "AXIS"."CAUSANUL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CAUSANUL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CAUSANUL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CAUSANUL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CAUSANUL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CAUSANUL" TO "PROGRAMADORESCSI";
