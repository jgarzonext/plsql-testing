--------------------------------------------------------
--  DDL for Table FONPENSIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."FONPENSIONES" 
   (	"CCODFON" NUMBER(6,0), 
	"FALTARE" DATE, 
	"SPERSON" NUMBER(10,0), 
	"SPERTIT" NUMBER(10,0), 
	"FBAJARE" DATE, 
	"NTOMO" NUMBER(6,0), 
	"NFOLIO" NUMBER(6,0), 
	"NHOJA" NUMBER(6,0), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"CCOMERC" VARCHAR2(1 BYTE), 
	"CCODGES" NUMBER(6,0), 
	"CLAFON" NUMBER(3,0), 
	"CTIPBAN" NUMBER(3,0), 
	"CODDGS" VARCHAR2(10 BYTE), 
	"CCODDEP" NUMBER(4,0), 
	"CDIVISA" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FONPENSIONES"."CCODFON" IS 'C�digo del fondo';
   COMMENT ON COLUMN "AXIS"."FONPENSIONES"."FALTARE" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."FONPENSIONES"."SPERSON" IS 'C�digo persona';
   COMMENT ON COLUMN "AXIS"."FONPENSIONES"."SPERTIT" IS 'Persona titular';
   COMMENT ON COLUMN "AXIS"."FONPENSIONES"."FBAJARE" IS 'Fecha de baja';
   COMMENT ON COLUMN "AXIS"."FONPENSIONES"."NTOMO" IS 'tomo';
   COMMENT ON COLUMN "AXIS"."FONPENSIONES"."NFOLIO" IS 'folio';
   COMMENT ON COLUMN "AXIS"."FONPENSIONES"."NHOJA" IS 'hoja';
   COMMENT ON COLUMN "AXIS"."FONPENSIONES"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."FONPENSIONES"."CODDGS" IS 'C�digo de la DGS';
   COMMENT ON COLUMN "AXIS"."FONPENSIONES"."CCODDEP" IS 'C�digo de la Entidad Depositaria asociada al Fondo';
   COMMENT ON COLUMN "AXIS"."FONPENSIONES"."CDIVISA" IS 'Divisa del Fons';
   COMMENT ON TABLE "AXIS"."FONPENSIONES"  IS 'Definici�n de FONDOS PENSIONES';
  GRANT UPDATE ON "AXIS"."FONPENSIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FONPENSIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FONPENSIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FONPENSIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FONPENSIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FONPENSIONES" TO "PROGRAMADORESCSI";
