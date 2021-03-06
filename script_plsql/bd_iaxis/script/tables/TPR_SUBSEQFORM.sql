--------------------------------------------------------
--  DDL for Table TPR_SUBSEQFORM
--------------------------------------------------------

  CREATE TABLE "AXIS"."TPR_SUBSEQFORM" 
   (	"SFORM" NUMBER(6,0), 
	"CONDICION" NUMBER(2,0), 
	"TFORM" VARCHAR2(50 BYTE), 
	"NORDEN" NUMBER(6,0), 
	"CAGRUPA" NUMBER(4,0), 
	"CSUBAGRUPA" NUMBER(4,0), 
	"SLITERA" NUMBER(6,0), 
	"SIDUSU" NUMBER(12,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TPR_SUBSEQFORM"."SIDUSU" IS 'Identificador para todo el modulo ACCESOS, se utiliza para grabar el log.';
  GRANT UPDATE ON "AXIS"."TPR_SUBSEQFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TPR_SUBSEQFORM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TPR_SUBSEQFORM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TPR_SUBSEQFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TPR_SUBSEQFORM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TPR_SUBSEQFORM" TO "PROGRAMADORESCSI";
