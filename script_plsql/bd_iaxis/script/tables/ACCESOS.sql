--------------------------------------------------------
--  DDL for Table ACCESOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."ACCESOS" 
   (	"CUSUARI" VARCHAR2(20 BYTE), 
	"CNOMPRO" VARCHAR2(20 BYTE), 
	"TACCION" VARCHAR2(6 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ACCESOS"."CUSUARI" IS 'C�digo de usuario.';
   COMMENT ON COLUMN "AXIS"."ACCESOS"."CNOMPRO" IS 'Identificador del programa';
   COMMENT ON COLUMN "AXIS"."ACCESOS"."TACCION" IS 'C�digo de acci�n';
  GRANT UPDATE ON "AXIS"."ACCESOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ACCESOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ACCESOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ACCESOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ACCESOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ACCESOS" TO "PROGRAMADORESCSI";
