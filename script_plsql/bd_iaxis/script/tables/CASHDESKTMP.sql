--------------------------------------------------------
--  DDL for Table CASHDESKTMP
--------------------------------------------------------

  CREATE TABLE "AXIS"."CASHDESKTMP" 
   (	"SEQTEMPO" NUMBER, 
	"NPOLIZA" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"TNOMBRE" VARCHAR2(50 BYTE), 
	"SPERSON" NUMBER, 
	"ITOTPRI" NUMBER, 
	"CDEBHAB" VARCHAR2(20 BYTE), 
	"SEQID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CASHDESKTMP"."SEQTEMPO" IS 'Identificador de pago';
   COMMENT ON COLUMN "AXIS"."CASHDESKTMP"."NPOLIZA" IS 'Numero de la poliza';
   COMMENT ON COLUMN "AXIS"."CASHDESKTMP"."SSEGURO" IS 'Numero del seguro asignado';
   COMMENT ON COLUMN "AXIS"."CASHDESKTMP"."TNOMBRE" IS 'Nombre del pagador';
   COMMENT ON COLUMN "AXIS"."CASHDESKTMP"."SPERSON" IS 'Codigo del pagador';
   COMMENT ON COLUMN "AXIS"."CASHDESKTMP"."ITOTPRI" IS 'Monto a pagar';
   COMMENT ON COLUMN "AXIS"."CASHDESKTMP"."CDEBHAB" IS 'Destino debito o credito';
   COMMENT ON COLUMN "AXIS"."CASHDESKTMP"."SEQID" IS 'Identificador de la transacciòn(seqmovecash)';
  GRANT UPDATE ON "AXIS"."CASHDESKTMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CASHDESKTMP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CASHDESKTMP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CASHDESKTMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CASHDESKTMP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CASHDESKTMP" TO "PROGRAMADORESCSI";