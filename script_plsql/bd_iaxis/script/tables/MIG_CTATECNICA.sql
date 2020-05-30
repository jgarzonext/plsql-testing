--------------------------------------------------------
--  DDL for Table MIG_CTATECNICA
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CTATECNICA" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"NVERSION" NUMBER, 
	"SCONTRA" NUMBER, 
	"TRAMO" NUMBER, 
	"NNUMLIN" NUMBER, 
	"FMOVIMI" DATE, 
	"FEFECTO" DATE, 
	"CCONCEP" NUMBER(2,0), 
	"CDEDHAB" NUMBER(1,0), 
	"IIMPORT" NUMBER(13,2), 
	"CESTADO" NUMBER(2,0), 
	"IIMPORT_MONCON" NUMBER(13,2), 
	"FCAMBIO" DATE, 
	"CTIPMOV" NUMBER(1,0), 
	"SPRODUC" NUMBER(6,0), 
	"NPOLIZA" VARCHAR2(50 BYTE), 
	"NSINIESTRO" VARCHAR2(50 BYTE), 
	"TDESCRI" VARCHAR2(2000 BYTE), 
	"TDOCUME" VARCHAR2(2000 BYTE), 
	"FLIQUID" DATE, 
	"CEVENTO" VARCHAR2(20 BYTE), 
	"FCONTAB" DATE, 
	"SIDEPAG" NUMBER(8,0), 
	"CUSUCRE" VARCHAR2(20 BYTE), 
	"FCREAC" DATE, 
	"CRAMO" NUMBER(8,0), 
	"CCORRED" NUMBER(4,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."NCARGA" IS 'Número de carga';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."CESTMIG" IS 'Estado del registro valor inicial 1';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."MIG_PK" IS 'Clave única de MIG_CTATECNICA';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."MIG_FK" IS 'Clave externa para MIG_COMPANIAS';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."MIG_FK2" IS 'Clave externa para MIG_CONTRATOS ';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."NVERSION" IS 'Número versión contrato reaseguro (Informar el campo CONTRATOS.NVERSIO)';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."SCONTRA" IS 'Código contrato (Informar el campo CONTRATOS.SCONTRA)';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."TRAMO" IS 'Código de tramo';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."NNUMLIN" IS 'Número de línea';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."FMOVIMI" IS 'Fecha de cierre  de movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."FEFECTO" IS 'Fecha de efecto del movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."CCONCEP" IS 'Concepto del movimiento VF:124';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."CDEDHAB" IS 'Debe y haber (1 – debe 2 – haber)';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."IIMPORT" IS 'Importe del movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."CESTADO" IS 'Estado del movimiento VF:800106. Por defecto debería estar liquidado.';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."IIMPORT_MONCON" IS 'Importe del movimiento en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."FCAMBIO" IS 'Fecha empleada para el cálculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."CTIPMOV" IS 'Tipo de movimiento manual-1 o automática-0';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."SPRODUC" IS 'Código del producto iAxis';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."NPOLIZA" IS 'Identificador de póliza en sistema externo';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."NSINIESTRO" IS 'Identificador de siniestro en sistema externo';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."TDESCRI" IS 'Descripción (apuntes manuales)';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."TDOCUME" IS 'Documento (apuntes manuales)';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."FLIQUID" IS 'Fecha de liquidación';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."CEVENTO" IS 'Código de evento (si corresponde a un evento de un siniestro)';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."FCONTAB" IS 'Fecha contable';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."SIDEPAG" IS 'Identificador del pago asociado al siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."CUSUCRE" IS 'Usuario Alta';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."FCREAC" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."CRAMO" IS 'Identificador del ramo';
   COMMENT ON COLUMN "AXIS"."MIG_CTATECNICA"."CCORRED" IS 'Indicador de corredor (bróker)';
   COMMENT ON TABLE "AXIS"."MIG_CTATECNICA"  IS 'Ficheros con la información de las cesiones del contrato de reaseguro:';
  GRANT DELETE ON "AXIS"."MIG_CTATECNICA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CTATECNICA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTATECNICA" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_CTATECNICA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTATECNICA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CTATECNICA" TO "PROGRAMADORESCSI";
