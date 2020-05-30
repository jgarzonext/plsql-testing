--------------------------------------------------------
--  DDL for Table LIQMOVREC
--------------------------------------------------------

  CREATE TABLE "AXIS"."LIQMOVREC" 
   (	"SMOVREC" NUMBER, 
	"CEMPRES" NUMBER(2,0), 
	"CCOMPANI" NUMBER(3,0), 
	"FLIQUID" DATE, 
	"CESTLIQ" NUMBER(2,0), 
	"ITOTALR" NUMBER, 
	"ICOMISI" NUMBER, 
	"IRETENC" NUMBER, 
	"IPRINET" NUMBER, 
	"NRECIBO" NUMBER, 
	"SPROLIQ" NUMBER, 
	"CAGENTE" NUMBER, 
	"SPROCES" NUMBER, 
	"CGESCOB" NUMBER(1,0), 
	"ILIQUIDA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."SMOVREC" IS 'Secuencia movimiento recibo (PK)';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."CEMPRES" IS 'Codigo empresa';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."CCOMPANI" IS 'Codigo compa�ia';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."FLIQUID" IS 'Fecha liquidacion';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."CESTLIQ" IS 'Estado liquidacion VF.933 ';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."ITOTALR" IS 'Importe recibo';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."ICOMISI" IS 'Importe comisi�n';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."IRETENC" IS 'Importe retenci�n';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."IPRINET" IS 'Prima neta';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."NRECIBO" IS 'Numero recibo';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."SPROLIQ" IS 'C�digo ID del proceso de liquidaci�n asociado';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."CAGENTE" IS 'Agente';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."CGESCOB" IS 'C�digo Gestor de Cobro 1.Correduria 2.Compa��a 3.Broker VF.694';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC"."ILIQUIDA" IS 'Importe liquidado';
   COMMENT ON TABLE "AXIS"."LIQMOVREC"  IS 'Liquidaciones a Compa�ias';
  GRANT UPDATE ON "AXIS"."LIQMOVREC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LIQMOVREC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LIQMOVREC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LIQMOVREC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LIQMOVREC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LIQMOVREC" TO "PROGRAMADORESCSI";