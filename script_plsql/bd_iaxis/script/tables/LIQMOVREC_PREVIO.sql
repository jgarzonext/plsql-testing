--------------------------------------------------------
--  DDL for Table LIQMOVREC_PREVIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."LIQMOVREC_PREVIO" 
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

   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."SMOVREC" IS 'Secuencia movimiento recibo (PK)';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."CEMPRES" IS 'Codigo empresa';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."CCOMPANI" IS 'Codigo compa�ia';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."FLIQUID" IS 'Fecha liquidacion';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."CESTLIQ" IS 'Estado liquidacion VF.933 ';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."ITOTALR" IS 'Importe recibo';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."ICOMISI" IS 'Importe comisi�n';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."IRETENC" IS 'Importe retenci�n';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."IPRINET" IS 'Prima neta';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."NRECIBO" IS 'Numero recibo';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."SPROLIQ" IS 'C�digo ID del proceso de liquidaci�n asociado';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."CAGENTE" IS 'Agente';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."CGESCOB" IS 'C�digo Gestor de Cobro 1.Correduria 2.Compa��a 3.Broker VF.694';
   COMMENT ON COLUMN "AXIS"."LIQMOVREC_PREVIO"."ILIQUIDA" IS 'Importe liquidado';
   COMMENT ON TABLE "AXIS"."LIQMOVREC_PREVIO"  IS 'Liquidaciones a Compa�ias';
  GRANT UPDATE ON "AXIS"."LIQMOVREC_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LIQMOVREC_PREVIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LIQMOVREC_PREVIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LIQMOVREC_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LIQMOVREC_PREVIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LIQMOVREC_PREVIO" TO "PROGRAMADORESCSI";
