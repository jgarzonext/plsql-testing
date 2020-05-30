--------------------------------------------------------
--  DDL for Table TRAMITADOR
--------------------------------------------------------

  CREATE TABLE "AXIS"."TRAMITADOR" 
   (	"CTRAINT" VARCHAR2(20 BYTE), 
	"CACTIVO" NUMBER(1,0), 
	"SASIGGES" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TRAMITADOR"."CTRAINT" IS 'C�digo de tramitador';
   COMMENT ON COLUMN "AXIS"."TRAMITADOR"."CACTIVO" IS 'Activo Si/No';
   COMMENT ON COLUMN "AXIS"."TRAMITADOR"."SASIGGES" IS 'N�mero �ltima asignaci�n';
  GRANT UPDATE ON "AXIS"."TRAMITADOR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TRAMITADOR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TRAMITADOR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TRAMITADOR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TRAMITADOR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TRAMITADOR" TO "PROGRAMADORESCSI";
