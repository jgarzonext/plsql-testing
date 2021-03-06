--------------------------------------------------------
--  DDL for Table GDXCODIROLMEN
--------------------------------------------------------

  CREATE TABLE "GEDOX"."GDXCODIROLMEN" 
   (	"CROLMEN" VARCHAR2(20 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"TDESCRIP" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "GEDOX" ;

   COMMENT ON COLUMN "GEDOX"."GDXCODIROLMEN"."CROLMEN" IS 'NombreID del Role';
   COMMENT ON COLUMN "GEDOX"."GDXCODIROLMEN"."CUSUALT" IS 'Usuario que da de alta del role';
   COMMENT ON COLUMN "GEDOX"."GDXCODIROLMEN"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "GEDOX"."GDXCODIROLMEN"."CUSUMOD" IS 'Usuario que modifica el registro';
   COMMENT ON COLUMN "GEDOX"."GDXCODIROLMEN"."FMODIFI" IS 'Fecha de modificación del registro';
   COMMENT ON TABLE "GEDOX"."GDXCODIROLMEN"  IS 'Roles de Usuario';
