--------------------------------------------------------
--  DDL for Table TPR_SEQFORM
--------------------------------------------------------

  CREATE TABLE "AXIS"."TPR_SEQFORM" 
   (	"SFORM" NUMBER(6,0), 
	"TFORM" VARCHAR2(50 BYTE), 
	"NORDEN" NUMBER(6,0), 
	"CAGRUPA" NUMBER(4,0), 
	"SLITERA" NUMBER(6,0), 
	"CTIPO" NUMBER(2,0), 
	"TACTIVO" VARCHAR2(2000 BYTE) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TPR_SEQFORM"."SFORM" IS 'Secuencia de forms';
   COMMENT ON COLUMN "AXIS"."TPR_SEQFORM"."TFORM" IS 'Nombre del form';
   COMMENT ON COLUMN "AXIS"."TPR_SEQFORM"."NORDEN" IS 'N�mero de orden del form en dicha secuencia';
   COMMENT ON COLUMN "AXIS"."TPR_SEQFORM"."CTIPO" IS 'Tipo de agrupaci�n al que pertenece. V.F. 800008';
   COMMENT ON COLUMN "AXIS"."TPR_SEQFORM"."TACTIVO" IS '0: Se muestra la pesta�a, 1: NO se muestra la pesta�a';
   COMMENT ON TABLE "AXIS"."TPR_SEQFORM"  IS 'Tipo de agrupaci�n al que pertenece. V.F. 800008';
  GRANT UPDATE ON "AXIS"."TPR_SEQFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TPR_SEQFORM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TPR_SEQFORM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TPR_SEQFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TPR_SEQFORM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TPR_SEQFORM" TO "PROGRAMADORESCSI";
