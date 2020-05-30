--------------------------------------------------------
--  DDL for Table COPY_MIG_TRAMOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."COPY_MIG_TRAMOS" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NVERSIO" NUMBER(2,0), 
	"SCONTRA" NUMBER(6,0), 
	"CTRAMO" NUMBER(2,0), 
	"ITOTTRA" NUMBER, 
	"NPLENOS" NUMBER(6,0), 
	"CFREBOR" NUMBER(2,0), 
	"PLOCAL" NUMBER(5,2), 
	"IXLPRIO" NUMBER, 
	"IXLEXCE" NUMBER, 
	"PSLPRIO" NUMBER(5,2), 
	"PSLEXCE" NUMBER(5,2), 
	"NCESION" NUMBER(6,0), 
	"FULTBOR" DATE, 
	"IMAXPLO" NUMBER, 
	"NORDEN" NUMBER(2,0), 
	"NSEGCON" NUMBER(6,0), 
	"NSEGVER" NUMBER(2,0), 
	"IMINXL" NUMBER, 
	"IDEPXL" NUMBER, 
	"NCTRXL" NUMBER(6,0), 
	"NVERXL" NUMBER(2,0), 
	"PTASAXL" NUMBER(6,0), 
	"IPMD" NUMBER, 
	"CFREPMD" NUMBER(2,0), 
	"CAPLIXL" NUMBER(1,0), 
	"PLIMGAS" NUMBER(5,2), 
	"PLIMINX" NUMBER(5,2), 
	"IDAA" NUMBER, 
	"ILAA" NUMBER, 
	"CTPRIMAXL" NUMBER(1,0), 
	"IPRIMAFIJAXL" NUMBER, 
	"IPRIMAESTIMADA" NUMBER, 
	"CAPLICTASAXL" NUMBER(1,0), 
	"CTIPTASAXL" NUMBER(1,0), 
	"CTRAMOTASAXL" NUMBER(5,0), 
	"PCTPDXL" NUMBER(5,2), 
	"CFORPAGPDXL" NUMBER(1,0), 
	"PCTMINXL" NUMBER(5,2), 
	"PCTPB" NUMBER(5,2), 
	"NANYOSLOSS" NUMBER(2,0), 
	"CLOSSCORRIDOR" NUMBER(5,0), 
	"CCAPPEDRATIO" NUMBER(5,0), 
	"CREPOS" NUMBER(5,0), 
	"IBONOREC" NUMBER, 
	"IMPAVISO" NUMBER, 
	"IMPCONTADO" NUMBER, 
	"PCTCONTADO" NUMBER(5,2), 
	"PCTGASTOS" NUMBER(5,2), 
	"PTASAAJUSTE" NUMBER(5,2), 
	"ICAPCOASEG" NUMBER, 
	"PREEST" NUMBER, 
	"ICOSTOFIJO" NUMBER, 
	"PCOMISINTERM" NUMBER, 
	"NARRASTRECONT" NUMBER, 
	"PTRAMO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."COPY_MIG_TRAMOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COPY_MIG_TRAMOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COPY_MIG_TRAMOS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."COPY_MIG_TRAMOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COPY_MIG_TRAMOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COPY_MIG_TRAMOS" TO "PROGRAMADORESCSI";