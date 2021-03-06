--------------------------------------------------------
--  DDL for Table DOCSIMPRESION
--------------------------------------------------------

  CREATE TABLE "AXIS"."DOCSIMPRESION" 
   (	"IDDOCGEDOX" NUMBER(10,0), 
	"TDESC" VARCHAR2(100 BYTE), 
	"TFICHERO" VARCHAR2(100 BYTE), 
	"CESTADO" NUMBER(6,0), 
	"CTIPO" NUMBER(6,0), 
	"CCATEGORIA" NUMBER(6,0), 
	"CUSER" VARCHAR2(20 BYTE), 
	"FCREA" DATE, 
	"CUSERIMP" VARCHAR2(20 BYTE), 
	"FIMP" DATE, 
	"CULTUSERIMP" VARCHAR2(20 BYTE), 
	"FULTIMP" DATE, 
	"IDDOCIMP" NUMBER, 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"NRECIBO" NUMBER, 
	"NSINIES" NUMBER, 
	"SIDEPAG" NUMBER, 
	"SPROCES" NUMBER, 
	"CAGENTE" NUMBER, 
	"CIDIOMA" NUMBER, 
	"IDDOCDIF" NUMBER, 
	"NORDEN" NUMBER, 
	"CDIFERIDO" NUMBER(1,0), 
	"CESTENVIO" NUMBER(1,0), 
	"TESTENVIO" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."IDDOCGEDOX" IS 'ID del documento GEDOX';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."TDESC" IS 'Descripci�n del documento';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."TFICHERO" IS 'Nombre del documento';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."CESTADO" IS 'Estado de impresi�n VF. 800107';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."CTIPO" IS 'Tipo de impresi�n VF 317';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."CCATEGORIA" IS 'Categor�a de la impresi�n';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."CUSER" IS 'Usuario que crea este registro';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."FCREA" IS 'Momento en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."CUSERIMP" IS 'Usuario que realiza la primera impresi�n';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."FIMP" IS 'Fecha de la primera impresi�n';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."CULTUSERIMP" IS 'Usuario que realiza la ultima impresi�n';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."FULTIMP" IS 'Fecha de la ultima impresi�n';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."IDDOCIMP" IS 'ID de docsimpresi�n, sequencial.';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."SSEGURO" IS 'ID del seguro.';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."NMOVIMI" IS 'Num. de movimiento.';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."NRECIBO" IS 'Num. de recibo.';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."NSINIES" IS 'Num. de siniestro.';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."SIDEPAG" IS 'ID pago del siniestro.';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."SPROCES" IS 'ID de proceso.';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."CAGENTE" IS 'C�digo de agente.';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."CIDIOMA" IS 'C�digo de idioma.';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."IDDOCDIF" IS 'ID de generaci�n diferida (si proviene de ella.';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."NORDEN" IS 'Sequencial de iddocdif ( si proviene de generaci�n diferida).';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."CDIFERIDO" IS 'Tipo del documento diferido (VF:1131)';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."CESTENVIO" IS 'Estado del envio diferido (VF:1132)';
   COMMENT ON COLUMN "AXIS"."DOCSIMPRESION"."TESTENVIO" IS 'Texto de error del envio diferido';
   COMMENT ON TABLE "AXIS"."DOCSIMPRESION"  IS 'Documentos impresos';
  GRANT UPDATE ON "AXIS"."DOCSIMPRESION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOCSIMPRESION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DOCSIMPRESION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DOCSIMPRESION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOCSIMPRESION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DOCSIMPRESION" TO "PROGRAMADORESCSI";
