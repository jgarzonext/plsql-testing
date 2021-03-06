--------------------------------------------------------
--  DDL for Table COPY_MIG_PRPC
--------------------------------------------------------

  CREATE TABLE "AXIS"."COPY_MIG_PRPC" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"PRODUCTO" NUMBER, 
	"SSEGURO" NUMBER, 
	"POLIZA" VARCHAR2(50 BYTE), 
	"NMOVIMIENTO" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"RECIBO" VARCHAR2(50 BYTE), 
	"GARANTIA" NUMBER(5,0), 
	"FCALCULO" DATE, 
	"FECHA_INICIO" DATE, 
	"IPRPC" NUMBER(17,2), 
	"IPRICOM" NUMBER(17,2), 
	"IPPNAPRIMA" NUMBER(17,2), 
	"IPPNCCOMIS" NUMBER(17,2), 
	"PREA" NUMBER(5,2), 
	"PCOM" NUMBER(5,2), 
	"ICOMIS" NUMBER(17,2), 
	"IPDEVRC" NUMBER(17,2), 
	"IPNCSRC" NUMBER(17,2), 
	"ICOMRC" NUMBER(17,2), 
	"ICNCSRC" NUMBER(17,2), 
	"CTRAMO" NUMBER(3,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."COPY_MIG_PRPC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COPY_MIG_PRPC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COPY_MIG_PRPC" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."COPY_MIG_PRPC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COPY_MIG_PRPC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COPY_MIG_PRPC" TO "PROGRAMADORESCSI";
