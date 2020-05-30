--------------------------------------------------------
--  DDL for Table CONTAB_4XMIL_PRE
--------------------------------------------------------

  CREATE TABLE "AXIS"."CONTAB_4XMIL_PRE" 
   (	"NSUCUR" NUMBER, 
	"CCUENTA" NUMBER, 
	"SDTOCORTE" VARCHAR2(15 BYTE), 
	"CAGENTE" NUMBER, 
	"IDEBITO" NUMBER, 
	"ICREDITO" NUMBER, 
	"INETO" NUMBER, 
	"ITXMIL" NUMBER, 
	"CEMPRES" NUMBER, 
	"FCONTA" DATE, 
	"FTRASPASO" DATE, 
	"CPROCES" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL_PRE"."NSUCUR" IS 'C�digo de la sucursal';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL_PRE"."CCUENTA" IS 'C�digo de cuenta';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL_PRE"."SDTOCORTE" IS 'Identificador del corte de cuentas, los primeros n�meros corresponden al c�digo de la sucursal.';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL_PRE"."CAGENTE" IS 'CODIGO AGENTE';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL_PRE"."IDEBITO" IS 'Valor d�bito';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL_PRE"."ICREDITO" IS 'Valor Cr�dito';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL_PRE"."INETO" IS 'Valor Neto';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL_PRE"."ITXMIL" IS 'Impuesto 4 por mil';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL_PRE"."CEMPRES" IS 'C�digo de Empresa';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL_PRE"."FCONTA" IS 'Fecha en la que se env�a a contabilidad';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL_PRE"."FTRASPASO" IS 'Fecha en que se ha traspasado a contabilidad. Puede ser nulo.';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL_PRE"."CPROCES" IS 'Identificador del proceso que lo ha generado';
  GRANT UPDATE ON "AXIS"."CONTAB_4XMIL_PRE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTAB_4XMIL_PRE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONTAB_4XMIL_PRE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONTAB_4XMIL_PRE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTAB_4XMIL_PRE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONTAB_4XMIL_PRE" TO "PROGRAMADORESCSI";
