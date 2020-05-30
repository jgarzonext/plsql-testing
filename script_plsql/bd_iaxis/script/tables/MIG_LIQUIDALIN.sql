--------------------------------------------------------
--  DDL for Table MIG_LIQUIDALIN
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_LIQUIDALIN" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"ITOTIMP" NUMBER, 
	"ITOTALR" NUMBER, 
	"IPRINET" NUMBER, 
	"ICOMISI" NUMBER, 
	"IRETENCCOM" NUMBER, 
	"ISOBRECOMISION" NUMBER, 
	"IRETENCSOBRECOM" NUMBER, 
	"ICONVOLEDUCTO" NUMBER, 
	"IRETENCOLEODUCTO" NUMBER, 
	"CTIPOLIQ" NUMBER(3,0), 
	"ITOTIMP_MONCIA" NUMBER, 
	"ITOTALR_MONCIA" NUMBER, 
	"IPRINET_MONCIA" NUMBER, 
	"ICOMISI_MONCIA" NUMBER, 
	"IRETENCCOM_MONCIA" NUMBER, 
	"ISOBRECOM_MONCIA" NUMBER, 
	"IRETENCSCOM_MONCIA" NUMBER, 
	"ICONVOLEOD_MONCIA" NUMBER, 
	"IRETOLEOD_MONCIA" NUMBER, 
	"FCAMBIO" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."MIG_PK" IS 'Clave ¿nica de MIG_LIQUIDALIN';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."MIG_FK" IS 'Clave for¿nea de MIG_LIQUIDACAB';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."MIG_FK2" IS 'Clave for¿nea de MIG_MOVRECIBO';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."ITOTIMP" IS 'Total Impuestos y Arbitrios';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."ITOTALR" IS 'Total del recibo';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."IPRINET" IS 'Prima Neta';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."ICOMISI" IS 'Importe de comisi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."IRETENCCOM" IS 'Importe retenci¿n (Sumatorio impuestos a aplicar)';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."ISOBRECOMISION" IS 'Importe sobre comisi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."IRETENCSOBRECOM" IS 'Importe retenci¿n (Sumatorio impuestos a aplicar sobre la sobre comisi¿n)';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."ICONVOLEDUCTO" IS 'Importe convenio oleoducto';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."IRETENCOLEODUCTO" IS 'Importe retenci¿n (Sumatorio impuestos a aplicar sobre conv oleoducto)';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."CTIPOLIQ" IS 'Tipo de liquidaci¿n o por el l¿quido o por el total';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."ITOTIMP_MONCIA" IS 'Total Impuestos y Arbitrios en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."ITOTALR_MONCIA" IS 'Total del recibo en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."IPRINET_MONCIA" IS 'Prima Neta en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."ICOMISI_MONCIA" IS 'Importe de comisi¿n en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."IRETENCCOM_MONCIA" IS 'Importe retenci¿n (Sumatorio impuestos a aplicar) en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."ISOBRECOM_MONCIA" IS 'Importe sobre comisi¿n en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."IRETENCSCOM_MONCIA" IS 'Importe retenci¿n (Sumatorio impuestos a aplicar sobre la sobre comisi¿n) en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."ICONVOLEOD_MONCIA" IS 'Importe convenio oleoducto en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."IRETOLEOD_MONCIA" IS 'Importe retenci¿n (Sumatorio impuestos a aplicar sobre conv oleoducto) en la moneda de la empresa';
   COMMENT ON COLUMN "AXIS"."MIG_LIQUIDALIN"."FCAMBIO" IS 'Fecha empleada para el c¿lculo de los contravalores';
  GRANT UPDATE ON "AXIS"."MIG_LIQUIDALIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_LIQUIDALIN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_LIQUIDALIN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_LIQUIDALIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_LIQUIDALIN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_LIQUIDALIN" TO "PROGRAMADORESCSI";
