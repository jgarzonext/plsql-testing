--------------------------------------------------------
--  DDL for Table CFG_NOTIFICACION
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_NOTIFICACION" 
   (	"CEMPRES" NUMBER(2,0), 
	"CMODO" VARCHAR2(200 BYTE) DEFAULT 'GENERAL', 
	"TEVENTO" VARCHAR2(200 BYTE) DEFAULT 'GENERAL', 
	"SPRODUC" NUMBER(6,0) DEFAULT 0, 
	"SCORREO" NUMBER(7,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_NOTIFICACION"."CEMPRES" IS 'Código de la empresa';
   COMMENT ON COLUMN "AXIS"."CFG_NOTIFICACION"."CMODO" IS 'modo de configuración';
   COMMENT ON COLUMN "AXIS"."CFG_NOTIFICACION"."TEVENTO" IS 'Evento del cual se hace la llamada';
   COMMENT ON COLUMN "AXIS"."CFG_NOTIFICACION"."SPRODUC" IS 'Id. del producto';
   COMMENT ON COLUMN "AXIS"."CFG_NOTIFICACION"."SCORREO" IS 'seq. Correo';
   COMMENT ON TABLE "AXIS"."CFG_NOTIFICACION"  IS 'Configuració d''enviament de mails per empresa, modo, event i producte';
  GRANT UPDATE ON "AXIS"."CFG_NOTIFICACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_NOTIFICACION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_NOTIFICACION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_NOTIFICACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_NOTIFICACION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_NOTIFICACION" TO "PROGRAMADORESCSI";
