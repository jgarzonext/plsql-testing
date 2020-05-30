--------------------------------------------------------
--  DDL for Table CTACARGOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CTACARGOS" 
   (	"SCUECAR" NUMBER(6,0), 
	"IIMPMAX" NUMBER, 
	"TTRANSF" VARCHAR2(1 BYTE), 
	"CCTACIA" VARCHAR2(50 BYTE), 
	"CCC" VARCHAR2(50 BYTE), 
	"CTIPBAN" NUMBER(3,0), 
	"CTIPBAN_CCTACIA" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CTACARGOS"."SCUECAR" IS 'CODIGO DE  LA CUENTA';
   COMMENT ON COLUMN "AXIS"."CTACARGOS"."IIMPMAX" IS 'iMPORTE M�XIMO POR CUENTA CORRIENTE';
   COMMENT ON COLUMN "AXIS"."CTACARGOS"."CCTACIA" IS 'Cuenta Corriente Cliente.';
   COMMENT ON COLUMN "AXIS"."CTACARGOS"."CCC" IS 'Cuenta corriente';
   COMMENT ON COLUMN "AXIS"."CTACARGOS"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."CTACARGOS"."CTIPBAN_CCTACIA" IS 'Tipo de cuenta cliente ( iban o cuenta bancaria). Valor fijo. 274';
  GRANT UPDATE ON "AXIS"."CTACARGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CTACARGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CTACARGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CTACARGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CTACARGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CTACARGOS" TO "PROGRAMADORESCSI";
