--------------------------------------------------------
--  DDL for Table DELPER_CCC
--------------------------------------------------------

  CREATE TABLE "AXIS"."DELPER_CCC" 
   (	"CUSUARIDEL" VARCHAR2(40 BYTE), 
	"FDEL" DATE, 
	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CTIPBAN" NUMBER(3,0), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"FBAJA" DATE, 
	"CDEFECTO" NUMBER(1,0), 
	"CUSUMOV" VARCHAR2(20 BYTE), 
	"FUSUMOV" DATE, 
	"CNORDBAN" NUMBER, 
	"CVALIDA" NUMBER(8,0) DEFAULT NULL, 
	"CPAGSIN" NUMBER(1,0), 
	"FVENCIM" DATE, 
	"TSEGURI" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUALTA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."SPERSON" IS 'Secuencia única de identificación de una persona (referencia a DELPER_personas)';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."CAGENTE" IS 'Código agente';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."CBANCAR" IS 'Mismo campo para la cuenta iban o ccc';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."FBAJA" IS 'Fecha de baja de la cuenta bancaria';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."CDEFECTO" IS 'Si será la cuenta bancaria por defecto que se cargará en la introducción de pólizas. VF: 828  1- Si 0-No';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."CUSUMOV" IS 'Usuario que realiza la última modificación (Referencia a usuarios)';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."FUSUMOV" IS 'Fecha de modificación';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."CNORDBAN" IS 'Código unico consecutivo que identifica la cuenta bancaria de la persona';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."CVALIDA" IS 'Estado de la matrícula en la tabla de cuentas bancarias / personas. VALORES=386';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."CPAGSIN" IS 'Indica si la cuenta es para pagos de siniestros  1- Si, 0 - No';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."FVENCIM" IS 'Fecha de vencimiento';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."TSEGURI" IS 'Código de seguridad';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."DELPER_CCC"."CUSUALTA" IS 'Usuario que realiza el alta';
   COMMENT ON TABLE "AXIS"."DELPER_CCC"  IS 'Tabla de DELPER_ccc';
  GRANT UPDATE ON "AXIS"."DELPER_CCC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_CCC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DELPER_CCC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DELPER_CCC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_CCC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DELPER_CCC" TO "PROGRAMADORESCSI";
