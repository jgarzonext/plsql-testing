--------------------------------------------------------
--  DDL for Table FACT_PROT_VER_HIS
--------------------------------------------------------

  CREATE TABLE "AXIS"."FACT_PROT_VER_HIS" 
   (	"CEMPRES" NUMBER, 
	"SPRODUC" NUMBER, 
	"VERSION" NUMBER, 
	"FECINI" DATE, 
	"FECFIN" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FACT_PROT_VER_HIS"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."FACT_PROT_VER_HIS"."SPRODUC" IS 'Producto';
   COMMENT ON COLUMN "AXIS"."FACT_PROT_VER_HIS"."VERSION" IS 'C�digo Versi�n';
   COMMENT ON COLUMN "AXIS"."FACT_PROT_VER_HIS"."FECINI" IS 'Fecha inicio de vigencia (Se compara con FTARIFA)';
   COMMENT ON COLUMN "AXIS"."FACT_PROT_VER_HIS"."FECFIN" IS 'Fecha final de vigencia';
   COMMENT ON COLUMN "AXIS"."FACT_PROT_VER_HIS"."CUSUALT" IS 'Usuario creaci�n';
   COMMENT ON COLUMN "AXIS"."FACT_PROT_VER_HIS"."FALTA" IS 'Fecha creaci�n';
   COMMENT ON COLUMN "AXIS"."FACT_PROT_VER_HIS"."CUSUMOD" IS 'Usuario modificaci�n';
   COMMENT ON COLUMN "AXIS"."FACT_PROT_VER_HIS"."FMODIFI" IS 'Fecha modificaci�n';
   COMMENT ON TABLE "AXIS"."FACT_PROT_VER_HIS"  IS 'HISTORICO - Factores Protecci�n (PRODUCTO / VERSIONES)';
  GRANT UPDATE ON "AXIS"."FACT_PROT_VER_HIS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FACT_PROT_VER_HIS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FACT_PROT_VER_HIS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FACT_PROT_VER_HIS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FACT_PROT_VER_HIS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FACT_PROT_VER_HIS" TO "PROGRAMADORESCSI";
