--------------------------------------------------------
--  DDL for Table PLANPENSIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."PLANPENSIONES" 
   (	"CCODPLA" NUMBER(6,0), 
	"TNOMPLA" VARCHAR2(100 BYTE), 
	"FALTARE" DATE, 
	"FADMISI" DATE, 
	"CMODALI" NUMBER(2,0), 
	"CSISTEM" NUMBER(2,0), 
	"CCODFON" NUMBER(6,0), 
	"CCOMERC" VARCHAR2(1 BYTE), 
	"ICOMDEP" NUMBER(9,3), 
	"ICOMGES" NUMBER(9,3), 
	"CMESPAG" NUMBER(2,0), 
	"CTIPREN" NUMBER(2,0), 
	"CPERIOD" NUMBER(2,0), 
	"IVALORL" NUMBER, 
	"CLAPLA" NUMBER(4,0), 
	"NPARTOT" NUMBER(15,6), 
	"CODDGS" VARCHAR2(10 BYTE), 
	"FBAJARE" DATE, 
	"CLISTBLANC" NUMBER(1,0), 
	"CPLAPREF" NUMBER(1,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."CCODPLA" IS 'C�digo del PLAN';
   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."FALTARE" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."FADMISI" IS 'Fecha de ADMIISION';
   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."CMODALI" IS 'MODALIDAD';
   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."CCODFON" IS 'c�DIGO DEL FONDO';
   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."CCOMERC" IS 'Si comercializa la empresa';
   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."ICOMDEP" IS 'comi. depositaria';
   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."ICOMGES" IS 'comi. gestora';
   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."CMESPAG" IS 'MESES PAGA DOBLE';
   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."CTIPREN" IS 'TIPO DE RENTA';
   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."CODDGS" IS 'C�digoDGS impresi�n libreta';
   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."FBAJARE" IS 'Fecha de Baja';
   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."CLISTBLANC" IS 'El PP pertenece a Lista blanca (1/0)';
   COMMENT ON COLUMN "AXIS"."PLANPENSIONES"."CPLAPREF" IS 'Indica cual de los planes de un fondo es el preferente a la hora de generar los recibos de gastos de gesti�n(0.-No pref.; 1.-Pref.)';
   COMMENT ON TABLE "AXIS"."PLANPENSIONES"  IS 'Definici�n de FONDOS PENSIONES';
  GRANT UPDATE ON "AXIS"."PLANPENSIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PLANPENSIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PLANPENSIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PLANPENSIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PLANPENSIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PLANPENSIONES" TO "PROGRAMADORESCSI";