--------------------------------------------------------
--  DDL for Table CONTAB_4XMIL
--------------------------------------------------------

  CREATE TABLE "AXIS"."CONTAB_4XMIL" 
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

   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL"."NSUCUR" IS 'C�digo de la sucursal';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL"."CCUENTA" IS 'C�digo de cuenta';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL"."SDTOCORTE" IS 'Identificador del corte de cuentas, los primeros n�meros corresponden al c�digo de la sucursal.';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL"."CAGENTE" IS 'CODIGO AGENTE';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL"."IDEBITO" IS 'Valor d�bito';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL"."ICREDITO" IS 'Valor Cr�dito';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL"."INETO" IS 'Valor Neto';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL"."ITXMIL" IS 'Impuesto 4 por mil';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL"."CEMPRES" IS 'C�digo de Empresa';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL"."FCONTA" IS 'Fecha en la que se env�a a contabilidad';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL"."FTRASPASO" IS 'Fecha en que se ha traspasado a contabilidad. Puede ser nulo.';
   COMMENT ON COLUMN "AXIS"."CONTAB_4XMIL"."CPROCES" IS 'Identificador del proceso que lo ha generado';
  GRANT UPDATE ON "AXIS"."CONTAB_4XMIL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTAB_4XMIL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONTAB_4XMIL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONTAB_4XMIL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTAB_4XMIL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONTAB_4XMIL" TO "PROGRAMADORESCSI";
