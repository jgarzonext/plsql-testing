--------------------------------------------------------
--  DDL for Table HISPER_CCC
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISPER_CCC" 
   (	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CTIPBAN" NUMBER(3,0), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"FBAJA" DATE, 
	"CDEFECTO" NUMBER(1,0), 
	"CUSUMOV" VARCHAR2(20 BYTE), 
	"FUSUMOV" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"NORDEN" NUMBER, 
	"CNORDBAN" NUMBER, 
	"CVALIDA" NUMBER(8,0), 
	"CPAGSIN" NUMBER(1,0), 
	"FVENCIM" DATE, 
	"TSEGURI" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUALTA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."SPERSON" IS 'Secuencia única de identificación de una persona (referencia a per_personas)';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."CAGENTE" IS 'Código agente';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."CBANCAR" IS 'Mismo campo para la cuenta iban o ccc';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."FBAJA" IS 'Fecha de baja de la cuenta bancaria';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."CDEFECTO" IS 'Si será la cuenta bancaria por defecto que se cargará en la introducción de pólizas. VF: 828  1- Si 0-No';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."CUSUMOV" IS 'Usuario que realiza la última modificación (Referencia a usuarios)';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."FUSUMOV" IS 'Fecha de modificación';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."CUSUARI" IS 'Usuario de modificación histórica';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."FMOVIMI" IS 'Fecha de modificación histórica';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."NORDEN" IS 'Orden de historico';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."CNORDBAN" IS 'Código unico consecutivo que identifica la cuenta bancaria de la persona';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."CVALIDA" IS 'Estado de la matrícula en la tabla de cuentas bancarias / personas. VALORES=386';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."CPAGSIN" IS 'Indica si la cuenta es para pagos de siniestros  1- Si, 0 - No';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."FVENCIM" IS 'Fecha de vencimiento';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."TSEGURI" IS 'Código de seguridad';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."HISPER_CCC"."CUSUALTA" IS 'Usuario que realiza el alta';
  GRANT UPDATE ON "AXIS"."HISPER_CCC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPER_CCC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISPER_CCC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISPER_CCC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPER_CCC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISPER_CCC" TO "PROGRAMADORESCSI";
