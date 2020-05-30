--------------------------------------------------------
--  DDL for Table DESTINATARIOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESTINATARIOS" 
   (	"NSINIES" NUMBER(8,0), 
	"SPERSON" NUMBER(10,0), 
	"CTIPDES" NUMBER(2,0), 
	"CPAGDES" NUMBER(1,0), 
	"IVALORA" NUMBER, 
	"CACTPRO" NUMBER(2,0), 
	"CREFPER" VARCHAR2(15 BYTE), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"PASIGNA" NUMBER(5,2), 
	"CPAISRESID" NUMBER(3,0), 
	"CTIPBAN" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESTINATARIOS"."NSINIES" IS 'N�mero de siniestro';
   COMMENT ON COLUMN "AXIS"."DESTINATARIOS"."SPERSON" IS 'Identificador �nico de la Personas';
   COMMENT ON COLUMN "AXIS"."DESTINATARIOS"."CTIPDES" IS 'Tipo de destinatario';
   COMMENT ON COLUMN "AXIS"."DESTINATARIOS"."CPAGDES" IS 'Indicador de si se paga o no';
   COMMENT ON COLUMN "AXIS"."DESTINATARIOS"."IVALORA" IS 'Importe de la valoraci�n al beneficiario';
   COMMENT ON COLUMN "AXIS"."DESTINATARIOS"."CACTPRO" IS 'C�digo actividad';
   COMMENT ON COLUMN "AXIS"."DESTINATARIOS"."CBANCAR" IS 'COMPTE BANCARIA DEL DESTINATARI (Transfer�ncies)';
   COMMENT ON COLUMN "AXIS"."DESTINATARIOS"."PASIGNA" IS 'Porcentaje de asignaci�n de la reserva';
   COMMENT ON COLUMN "AXIS"."DESTINATARIOS"."CPAISRESID" IS 'Pa�s de residencia del destinatario';
   COMMENT ON COLUMN "AXIS"."DESTINATARIOS"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
  GRANT UPDATE ON "AXIS"."DESTINATARIOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESTINATARIOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESTINATARIOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESTINATARIOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESTINATARIOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESTINATARIOS" TO "PROGRAMADORESCSI";
