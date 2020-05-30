--------------------------------------------------------
--  DDL for Table TMP_RECGESTION
--------------------------------------------------------

  CREATE TABLE "AXIS"."TMP_RECGESTION" 
   (	"SPROIMP" NUMBER(8,0), 
	"NRECIBO" NUMBER, 
	"CAGECOB" NUMBER(6,0), 
	"FGESTIO" DATE, 
	"SMOVREC" NUMBER, 
	"FEFECTO" DATE, 
	"SPROCES" NUMBER, 
	"FIMPRES" DATE, 
	"CESTADO" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TMP_RECGESTION"."SPROIMP" IS 'C�digo de impresi�n de los recibos';
   COMMENT ON COLUMN "AXIS"."TMP_RECGESTION"."NRECIBO" IS 'N�mero de recibo a imprimir';
   COMMENT ON COLUMN "AXIS"."TMP_RECGESTION"."CAGECOB" IS 'C�digo de agente ';
   COMMENT ON COLUMN "AXIS"."TMP_RECGESTION"."FGESTIO" IS 'Fecha de gesti�n';
   COMMENT ON COLUMN "AXIS"."TMP_RECGESTION"."SMOVREC" IS 'Id. del movimiento de recibos en el momento de la impresi�n';
   COMMENT ON COLUMN "AXIS"."TMP_RECGESTION"."FEFECTO" IS 'Fecha de efecto del recibo ';
   COMMENT ON COLUMN "AXIS"."TMP_RECGESTION"."SPROCES" IS 'C�digo del proceso de impresi�n, para reimpresiones';
   COMMENT ON COLUMN "AXIS"."TMP_RECGESTION"."FIMPRES" IS 'Fecha de la impresi�n (primera impresi�n sin reimpresiones)';
   COMMENT ON COLUMN "AXIS"."TMP_RECGESTION"."CESTADO" IS 'Estado : 0 .- no imprimir, 1.- imprimir';
   COMMENT ON TABLE "AXIS"."TMP_RECGESTION"  IS 'Tabla para la impresion temporal de recibos';
  GRANT UPDATE ON "AXIS"."TMP_RECGESTION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_RECGESTION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_RECGESTION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_RECGESTION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_RECGESTION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_RECGESTION" TO "PROGRAMADORESCSI";
