--------------------------------------------------------
--  DDL for Table MEDPAGO
--------------------------------------------------------

  CREATE TABLE "AXIS"."MEDPAGO" 
   (	"SMEDPAG" NUMBER(6,0), 
	"FEMISIO" DATE, 
	"FGENERA" DATE, 
	"NDESTIN" NUMBER, 
	"IIMPORT" NUMBER, 
	"CCTACTE" VARCHAR2(50 BYTE), 
	"NTALON" VARCHAR2(20 BYTE), 
	"CCTAENV" VARCHAR2(20 BYTE), 
	"CESTADO" NUMBER(1,0), 
	"CCONCIL" NUMBER(1,0), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"CTIPCAR" NUMBER(1,0), 
	"SIDEPAG" NUMBER(8,0), 
	"CAGENTE" NUMBER, 
	"NLIQMEN" NUMBER(4,0), 
	"CEMPRES" NUMBER(2,0), 
	"CDELEGA" NUMBER, 
	"CAGRPRO" NUMBER(2,0), 
	"CENTIDA" NUMBER(2,0), 
	"SPROCES" NUMBER, 
	"CTIPDES" NUMBER(2,0), 
	"SPERSON" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MEDPAGO"."SMEDPAG" IS 'N�mero secuencial del pago';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."FEMISIO" IS 'Fecha emision';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."FGENERA" IS 'Fecha generaci�n';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."NDESTIN" IS 'N�mero destinatarios';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."IIMPORT" IS 'Importe';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."CCTACTE" IS 'Cuenta corriente';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."NTALON" IS 'N�mero de tal�n';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."CCTAENV" IS 'Cuenta envio';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."CESTADO" IS 'Estado del tal�n';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."CCONCIL" IS 'Conciliado';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."CUSUARI" IS 'Usuari';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."CTIPCAR" IS 'Tipus de carta';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."SIDEPAG" IS 'N�mero secuencial del pago';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."NLIQMEN" IS 'N�mero de  liquidaci�n';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."CEMPRES" IS 'C�digo de Empresa';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."CDELEGA" IS 'Delegaci�n';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."CAGRPRO" IS 'Tipo de agrupaci�n';
   COMMENT ON COLUMN "AXIS"."MEDPAGO"."CENTIDA" IS 'Entidad';
  GRANT UPDATE ON "AXIS"."MEDPAGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MEDPAGO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MEDPAGO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MEDPAGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MEDPAGO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MEDPAGO" TO "PROGRAMADORESCSI";