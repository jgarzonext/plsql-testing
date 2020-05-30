--------------------------------------------------------
--  DDL for Table EXT_CTACTES
--------------------------------------------------------

  CREATE TABLE "AXIS"."EXT_CTACTES" 
   (	"CAGENTE" NUMBER, 
	"NNUMLIN" NUMBER(6,0), 
	"CDEBHAB" NUMBER(1,0), 
	"CCONCTA" NUMBER(2,0), 
	"CESTADO" NUMBER(1,0), 
	"NDOCUME" VARCHAR2(10 BYTE), 
	"FFECMOV" DATE, 
	"IIMPORT" NUMBER, 
	"TDESCRIP" VARCHAR2(100 BYTE), 
	"CMANUAL" NUMBER(1,0), 
	"CEMPRES" NUMBER(2,0), 
	"NUM_REC" VARCHAR2(20 BYTE), 
	"NSINIES" NUMBER(8,0), 
	"NUM_POL" VARCHAR2(50 BYTE), 
	"FVALOR" DATE, 
	"SPROCES" NUMBER, 
	"CFISCAL" NUMBER(1,0), 
	"SPRODUC" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."NNUMLIN" IS 'N�mero de l�nea';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."CDEBHAB" IS 'C�digo DEBE o HABER';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."CCONCTA" IS 'C�digo concepto cta. corriente.';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."CESTADO" IS 'Estado del apunte.  0 :Liquidado, 1:pendiente,';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."NDOCUME" IS 'N�mero de documento';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."FFECMOV" IS 'Fecha de movimiento';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."IIMPORT" IS 'Importe';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."TDESCRIP" IS 'Texto';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."CMANUAL" IS 'Manual o no';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."CEMPRES" IS 'C�digo Empresa';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."NUM_REC" IS 'N�mero de recibo';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."NSINIES" IS 'N�emro de siniestro';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."NUM_POL" IS 'C�digo de la p�liza';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."FVALOR" IS 'Fecha valor';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."SPROCES" IS 'Sproces de la liquidaci�n (tabla cierres)';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."CFISCAL" IS 'Apunte manual fiscal o no / Detvalores 800017';
   COMMENT ON COLUMN "AXIS"."EXT_CTACTES"."SPRODUC" IS 'Secuencia producto';
   COMMENT ON TABLE "AXIS"."EXT_CTACTES"  IS 'Cuentas tecnicas externo';
  GRANT UPDATE ON "AXIS"."EXT_CTACTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXT_CTACTES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EXT_CTACTES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EXT_CTACTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXT_CTACTES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EXT_CTACTES" TO "PROGRAMADORESCSI";