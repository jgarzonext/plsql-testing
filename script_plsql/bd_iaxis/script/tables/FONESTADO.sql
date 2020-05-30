--------------------------------------------------------
--  DDL for Table FONESTADO
--------------------------------------------------------

  CREATE TABLE "AXIS"."FONESTADO" 
   (	"CCODFON" NUMBER(6,0), 
	"FVALORA" DATE, 
	"CESTADO" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FONESTADO"."CCODFON" IS 'C�digo del pLAN';
   COMMENT ON COLUMN "AXIS"."FONESTADO"."FVALORA" IS 'Fecha VALOR estado del Plan';
   COMMENT ON COLUMN "AXIS"."FONESTADO"."CESTADO" IS 'Estado del PLAN en el d�a. Abierto/Cerrado';
  GRANT UPDATE ON "AXIS"."FONESTADO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FONESTADO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FONESTADO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FONESTADO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FONESTADO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FONESTADO" TO "PROGRAMADORESCSI";