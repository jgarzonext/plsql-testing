--------------------------------------------------------
--  DDL for Table DSICODIROLMEN
--------------------------------------------------------

  CREATE TABLE "AXIS"."DSICODIROLMEN" 
   (	"CROLMEN" VARCHAR2(20 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DSICODIROLMEN"."CROLMEN" IS 'NombreID del Role';
   COMMENT ON COLUMN "AXIS"."DSICODIROLMEN"."CUSUALT" IS 'Usuario que da de alta del role';
   COMMENT ON COLUMN "AXIS"."DSICODIROLMEN"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."DSICODIROLMEN"."CUSUMOD" IS 'Usuario que modifica el registro';
   COMMENT ON COLUMN "AXIS"."DSICODIROLMEN"."FMODIFI" IS 'Fecha de modificaci�n del registro';
   COMMENT ON TABLE "AXIS"."DSICODIROLMEN"  IS 'Roles de Usuario';
  GRANT UPDATE ON "AXIS"."DSICODIROLMEN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DSICODIROLMEN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DSICODIROLMEN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DSICODIROLMEN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DSICODIROLMEN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DSICODIROLMEN" TO "PROGRAMADORESCSI";