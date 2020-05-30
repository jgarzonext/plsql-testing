--------------------------------------------------------
--  DDL for Table PERLOPD_CCC
--------------------------------------------------------

  CREATE TABLE "AXIS"."PERLOPD_CCC" 
   (	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CTIPBAN" NUMBER(3,0), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"FBAJA" DATE, 
	"CDEFECTO" NUMBER(1,0), 
	"CUSUMOV" VARCHAR2(20 BYTE), 
	"FUSUMOV" DATE, 
	"NUM_LOPD" NUMBER, 
	"FLOPD" DATE, 
	"CNORDBAN" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PERLOPD_CCC"."SPERSON" IS 'Secuencia única de identificación de una persona (referencia a per_personas)';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CCC"."CAGENTE" IS 'Código agente';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CCC"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CCC"."CBANCAR" IS 'Mismo campo para la cuenta iban o ccc';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CCC"."FBAJA" IS 'Fecha de baja de la cuenta bancaria';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CCC"."CDEFECTO" IS 'Si será la cuenta bancaria por defecto que se cargará en la introducción de pólizas. VF: 828  1- Si 0-No';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CCC"."CUSUMOV" IS 'Usuario que realiza la última modificación (Referencia a usuarios)';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CCC"."FUSUMOV" IS 'Fecha de modificación';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CCC"."NUM_LOPD" IS 'Número de orden de histórico';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CCC"."FLOPD" IS 'Fecha de traspaso a las tablas PERLOPD';
   COMMENT ON COLUMN "AXIS"."PERLOPD_CCC"."CNORDBAN" IS 'Código unico consecutivo que identifica la cuenta bancaria de la persona';
  GRANT UPDATE ON "AXIS"."PERLOPD_CCC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PERLOPD_CCC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PERLOPD_CCC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PERLOPD_CCC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PERLOPD_CCC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PERLOPD_CCC" TO "PROGRAMADORESCSI";
