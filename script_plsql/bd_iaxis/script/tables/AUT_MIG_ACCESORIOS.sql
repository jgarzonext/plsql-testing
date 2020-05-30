--------------------------------------------------------
--  DDL for Table AUT_MIG_ACCESORIOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUT_MIG_ACCESORIOS" 
   (	"CEMPRES" NUMBER, 
	"CMATRIC" VARCHAR2(12 BYTE), 
	"CACCESORIO" VARCHAR2(10 BYTE), 
	"CTIPACC" VARCHAR2(8 BYTE), 
	"FINI" DATE, 
	"IVALACC" NUMBER, 
	"TDESACC" VARCHAR2(100 BYTE), 
	"CASEGURABLE" NUMBER(2,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AUT_MIG_ACCESORIOS"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."AUT_MIG_ACCESORIOS"."CMATRIC" IS 'Matricula vehiculo';
   COMMENT ON COLUMN "AXIS"."AUT_MIG_ACCESORIOS"."CACCESORIO" IS 'Codigo accesorio/Opcionpack';
   COMMENT ON COLUMN "AXIS"."AUT_MIG_ACCESORIOS"."CTIPACC" IS 'Codigo tipo accesorio. Valor fijo = 292';
   COMMENT ON COLUMN "AXIS"."AUT_MIG_ACCESORIOS"."FINI" IS 'Fecha inicio o alta';
   COMMENT ON COLUMN "AXIS"."AUT_MIG_ACCESORIOS"."IVALACC" IS 'Valor accesorio';
   COMMENT ON COLUMN "AXIS"."AUT_MIG_ACCESORIOS"."TDESACC" IS 'Descripcion accesorios';
   COMMENT ON COLUMN "AXIS"."AUT_MIG_ACCESORIOS"."CASEGURABLE" IS 'Accesorio asegurable s/n';
   COMMENT ON TABLE "AXIS"."AUT_MIG_ACCESORIOS"  IS 'Tabla migraci�n accesorios';
  GRANT INSERT ON "AXIS"."AUT_MIG_ACCESORIOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUT_MIG_ACCESORIOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_MIG_ACCESORIOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUT_MIG_ACCESORIOS" TO "PROGRAMADORESCSI";
  GRANT UPDATE ON "AXIS"."AUT_MIG_ACCESORIOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_MIG_ACCESORIOS" TO "R_AXIS";
