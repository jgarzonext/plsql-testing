--------------------------------------------------------
--  DDL for Table INT_DATOS_CUENTA
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_DATOS_CUENTA" 
   (	"SINTERF" NUMBER, 
	"CMAPEAD" VARCHAR2(5 BYTE), 
	"SMAPEAD" NUMBER, 
	"CTIPBAN" NUMBER(8,0), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"CROL" NUMBER(8,0), 
	"CESTADO" NUMBER(8,0), 
	"CSALDO" NUMBER(8,0), 
	"CMONEDA" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_DATOS_CUENTA"."SINTERF" IS 'Secuencia para la interfaz';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_CUENTA"."CTIPBAN" IS 'Tipo de cuenta (1 ? ccc Espa�a, 2 ? Iban, etc)';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_CUENTA"."CBANCAR" IS 'N�mero de cuenta bancaria';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_CUENTA"."CROL" IS 'Id del rol de la persona (titular, apoderado, etc)';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_CUENTA"."CESTADO" IS 'Estado de la cuenta, operativa o no (1/0)';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_CUENTA"."CSALDO" IS 'Control de saldo. Indica si el saldo es positivo o negativo (1/0).';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_CUENTA"."CMONEDA" IS 'Id de la moneda de la cuenta bancaria';
  GRANT UPDATE ON "AXIS"."INT_DATOS_CUENTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_DATOS_CUENTA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_DATOS_CUENTA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_DATOS_CUENTA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_DATOS_CUENTA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_DATOS_CUENTA" TO "PROGRAMADORESCSI";
