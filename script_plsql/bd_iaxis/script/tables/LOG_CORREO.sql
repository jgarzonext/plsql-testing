--------------------------------------------------------
--  DDL for Table LOG_CORREO
--------------------------------------------------------

  CREATE TABLE "AXIS"."LOG_CORREO" 
   (	"SEQLOGCORREO" NUMBER, 
	"FEVENTO" DATE, 
	"CMAILRECEP" VARCHAR2(100 BYTE), 
	"CUSUENVIO" VARCHAR2(20 BYTE), 
	"ASUNTO" VARCHAR2(250 BYTE), 
	"ERROR" VARCHAR2(1000 BYTE), 
	"COFICINA" VARCHAR2(10 BYTE), 
	"CTERM" VARCHAR2(10 BYTE), 
	"SSEGURO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."LOG_CORREO"."SEQLOGCORREO" IS 'Secuencia';
   COMMENT ON COLUMN "AXIS"."LOG_CORREO"."FEVENTO" IS 'Fecha de envio';
   COMMENT ON COLUMN "AXIS"."LOG_CORREO"."CMAILRECEP" IS 'Dirección email receptor';
   COMMENT ON COLUMN "AXIS"."LOG_CORREO"."CUSUENVIO" IS 'Usuario que envia el correo';
   COMMENT ON COLUMN "AXIS"."LOG_CORREO"."ASUNTO" IS 'Asunto del mail';
   COMMENT ON COLUMN "AXIS"."LOG_CORREO"."ERROR" IS 'Error si se produce en el envio';
   COMMENT ON COLUMN "AXIS"."LOG_CORREO"."COFICINA" IS 'Oficina';
   COMMENT ON COLUMN "AXIS"."LOG_CORREO"."CTERM" IS 'Terminal';
   COMMENT ON COLUMN "AXIS"."LOG_CORREO"."SSEGURO" IS 'Codigo del seguro relacionado al envio del correo';
   COMMENT ON TABLE "AXIS"."LOG_CORREO"  IS 'Tabla de envios de correos electrónicos';
  GRANT UPDATE ON "AXIS"."LOG_CORREO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LOG_CORREO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LOG_CORREO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LOG_CORREO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LOG_CORREO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LOG_CORREO" TO "PROGRAMADORESCSI";
