--------------------------------------------------------
--  DDL for Table TIPOS_CUENTADES
--------------------------------------------------------

  CREATE TABLE "AXIS"."TIPOS_CUENTADES" 
   (	"CTIPBAN" NUMBER(3,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TTIPO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TIPOS_CUENTADES"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."TIPOS_CUENTADES"."CIDIOMA" IS 'idioma';
   COMMENT ON COLUMN "AXIS"."TIPOS_CUENTADES"."TTIPO" IS 'Descripción de tipos o formatos de cuentas CCC';
   COMMENT ON TABLE "AXIS"."TIPOS_CUENTADES"  IS 'Descripción de tipos o formatos de cuentas CCC';
  GRANT UPDATE ON "AXIS"."TIPOS_CUENTADES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TIPOS_CUENTADES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TIPOS_CUENTADES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TIPOS_CUENTADES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TIPOS_CUENTADES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TIPOS_CUENTADES" TO "PROGRAMADORESCSI";
