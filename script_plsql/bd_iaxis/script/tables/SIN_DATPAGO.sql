--------------------------------------------------------
--  DDL for Table SIN_DATPAGO
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_DATPAGO" 
   (	"CTIPPAG" NUMBER(1,0), 
	"CTIPDES" NUMBER(2,0), 
	"CCONPAG" NUMBER(2,0), 
	"CCAUIND" NUMBER(3,0), 
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

   COMMENT ON COLUMN "AXIS"."SIN_DATPAGO"."CTIPPAG" IS 'C�digo Tipo Pago';
   COMMENT ON COLUMN "AXIS"."SIN_DATPAGO"."CTIPDES" IS 'C�digo Tipo Destinatario';
   COMMENT ON COLUMN "AXIS"."SIN_DATPAGO"."CCONPAG" IS 'C�digo Concepto Pago';
   COMMENT ON COLUMN "AXIS"."SIN_DATPAGO"."CCAUIND" IS 'C�digo Causa Indemnizaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_DATPAGO"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."SIN_DATPAGO"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."SIN_DATPAGO"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_DATPAGO"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON TABLE "AXIS"."SIN_DATPAGO"  IS 'Conceptos y Causas Indemnizaci�n Pago';
  GRANT UPDATE ON "AXIS"."SIN_DATPAGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_DATPAGO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_DATPAGO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_DATPAGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_DATPAGO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_DATPAGO" TO "PROGRAMADORESCSI";
