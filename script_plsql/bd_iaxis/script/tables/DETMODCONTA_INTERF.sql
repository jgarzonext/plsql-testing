--------------------------------------------------------
--  DDL for Table DETMODCONTA_INTERF
--------------------------------------------------------

  CREATE TABLE "AXIS"."DETMODCONTA_INTERF" 
   (	"SMODCON" NUMBER(6,0), 
	"CEMPRES" NUMBER(2,0), 
	"NLINEA" NUMBER(6,0), 
	"TTIPPAG" NUMBER(2,0), 
	"CCUENTA" VARCHAR2(50 BYTE), 
	"TSELDIA" VARCHAR2(4000 BYTE), 
	"CLAENLACE" VARCHAR2(4 BYTE), 
	"TLIBRO" VARCHAR2(40 BYTE), 
	"TIPOFEC" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DETMODCONTA_INTERF"."SMODCON" IS 'Secuencia del modulo contable';
   COMMENT ON COLUMN "AXIS"."DETMODCONTA_INTERF"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."DETMODCONTA_INTERF"."NLINEA" IS 'N� de l�nea en este asiento';
   COMMENT ON COLUMN "AXIS"."DETMODCONTA_INTERF"."TTIPPAG" IS 'Tipo de pago al que pertenece la cuenta';
   COMMENT ON COLUMN "AXIS"."DETMODCONTA_INTERF"."CCUENTA" IS 'Cuenta bancaria';
   COMMENT ON COLUMN "AXIS"."DETMODCONTA_INTERF"."TSELDIA" IS 'Select para obtener el valor para la contabilidad diaria';
   COMMENT ON COLUMN "AXIS"."DETMODCONTA_INTERF"."CLAENLACE" IS 'Clave enlace';
   COMMENT ON COLUMN "AXIS"."DETMODCONTA_INTERF"."TIPOFEC" IS 'Tipo de fecha (1= Fefeadm, 2 = Fcontab)';
   COMMENT ON TABLE "AXIS"."DETMODCONTA_INTERF"  IS 'Detalle diario para interfaces';
  GRANT UPDATE ON "AXIS"."DETMODCONTA_INTERF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETMODCONTA_INTERF" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DETMODCONTA_INTERF" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DETMODCONTA_INTERF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETMODCONTA_INTERF" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DETMODCONTA_INTERF" TO "PROGRAMADORESCSI";
