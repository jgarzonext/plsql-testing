--------------------------------------------------------
--  DDL for Table SRI_SERVRENTINT
--------------------------------------------------------

  CREATE TABLE "AXIS"."SRI_SERVRENTINT" 
   (	"CLAVE" VARCHAR2(49 BYTE), 
	"CTIPO" NUMBER(1,0), 
	"FEMISION" DATE, 
	"FVENCIM" DATE, 
	"CESTADO" NUMBER(1,0), 
	"TSERIE" VARCHAR2(6 BYTE), 
	"NSECUENCIAL" NUMBER, 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"IPRINET" NUMBER, 
	"IIMPUESTO" NUMBER, 
	"IDESCUENTO" NUMBER, 
	"SINTERF_R" NUMBER, 
	"SINTERF_A" NUMBER, 
	"OUT_R" CLOB, 
	"OUT_A" CLOB, 
	"FACTURA" VARCHAR2(20 BYTE), 
	"NAUTORIZA" VARCHAR2(50 BYTE), 
	"FAUTORIZA" DATE, 
	"ISCVS" NUMBER, 
	"ISSC" NUMBER, 
	"IDEMI" NUMBER, 
	"FACTURAMOD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" 
 LOB ("OUT_R") STORE AS BASICFILE (
  TABLESPACE "AXIS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING ) 
 LOB ("OUT_A") STORE AS BASICFILE (
  TABLESPACE "AXIS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING ) ;
  GRANT UPDATE ON "AXIS"."SRI_SERVRENTINT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SRI_SERVRENTINT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SRI_SERVRENTINT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SRI_SERVRENTINT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SRI_SERVRENTINT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SRI_SERVRENTINT" TO "PROGRAMADORESCSI";
