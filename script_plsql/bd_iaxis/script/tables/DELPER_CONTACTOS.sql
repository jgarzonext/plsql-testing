--------------------------------------------------------
--  DDL for Table DELPER_CONTACTOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DELPER_CONTACTOS" 
   (	"CUSUARIDEL" VARCHAR2(40 BYTE), 
	"FDEL" DATE, 
	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CMODCON" NUMBER, 
	"CTIPCON" NUMBER(2,0), 
	"TCOMCON" VARCHAR2(100 BYTE), 
	"TVALCON" VARCHAR2(100 BYTE), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"COBLIGA" NUMBER(1,0) DEFAULT 0, 
	"CDOMICI" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS"."SPERSON" IS 'Secuencia unica de identificacion de una persona';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS"."CAGENTE" IS 'C�digo agente';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS"."CMODCON" IS 'Secuencia modo contacto';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS"."CTIPCON" IS 'C�digo tipo contacto';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS"."TCOMCON" IS 'Especificaci�n del medio';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS"."TVALCON" IS 'Valor contacto';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS"."CUSUARI" IS 'C�digo usuario modificaci�n registro';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS"."FMOVIMI" IS 'Fecha modificaci�n registro';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS"."COBLIGA" IS 'Codigo de contaco �nico (Si: 1, No: 0)';
   COMMENT ON TABLE "AXIS"."DELPER_CONTACTOS"  IS 'Tabla con los contactos de la persona';
  GRANT UPDATE ON "AXIS"."DELPER_CONTACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_CONTACTOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DELPER_CONTACTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DELPER_CONTACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_CONTACTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DELPER_CONTACTOS" TO "PROGRAMADORESCSI";
