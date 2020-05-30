--------------------------------------------------------
--  DDL for Table MIG_PPNA
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_PPNA" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"PRODUCTO" NUMBER, 
	"POLIZA" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"NMOVIMIENTO" NUMBER(4,0), 
	"RIESGO" NUMBER(6,0), 
	"GARANTIA" NUMBER(5,0), 
	"FCALCULO" DATE, 
	"IPRIDEV" NUMBER(13,2), 
	"IPRINCS" NUMBER(13,2), 
	"IPDEVRC" NUMBER(13,2), 
	"IPNCSRC" NUMBER(13,2), 
	"FEFEINI" DATE, 
	"FFINEFE" DATE, 
	"ICOMAGE" NUMBER(13,2), 
	"ICOMNCS" NUMBER(13,2), 
	"ICOMRC" NUMBER(13,2), 
	"ICNCSRC" NUMBER(13,2), 
	"IRECFRA" NUMBER(13,2), 
	"PRECARG" NUMBER(13,2), 
	"IRECFRANC" NUMBER(13,2), 
	"MIG_PK" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."NCARGA" IS 'N¿mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."PRODUCTO" IS 'Clave de producto iAxis ';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."POLIZA" IS 'Id P¿liza en sistema origen (MIG_PK MIG_SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."NMOVIMIENTO" IS 'N¿mero de movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."RIESGO" IS 'N¿mero de riesgo';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."GARANTIA" IS 'C¿digo de garant¿a iAxis';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."FCALCULO" IS 'Fecha de c¿lculo de la provisi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."IPRIDEV" IS 'Prima devengada';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."IPRINCS" IS 'Prima no consumida';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."IPDEVRC" IS 'Prima devengada reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."IPNCSRC" IS 'Prima reaseguro cedido no consumida';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."FEFEINI" IS 'Inicio periodo de vigencia de la garant¿a (inicio)';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."FFINEFE" IS 'Fecha fin de vigencia de la garant¿a, fecha vencimiento de la p¿liza o pr¿xima renovaci¿n.';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."ICOMAGE" IS 'Comisi¿n  del agente';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."ICOMNCS" IS 'Comisi¿n  del agente no consumida';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."ICOMRC" IS 'Comisi¿n del reaseguro cedido';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."ICNCSRC" IS 'Comisi¿n del reaseguro cedido no consumida';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."IRECFRA" IS 'Recargo por fraccionamiento';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."PRECARG" IS 'Porcentaje de recargo por fraccionamiento';
   COMMENT ON COLUMN "AXIS"."MIG_PPNA"."IRECFRANC" IS 'Recargo por fraccionamiento no consumida';
   COMMENT ON TABLE "AXIS"."MIG_PPNA"  IS 'Fichero con los datos de PPNA  (Provisi¿n de riesgos en curso)';
  GRANT UPDATE ON "AXIS"."MIG_PPNA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PPNA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_PPNA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_PPNA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PPNA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_PPNA" TO "PROGRAMADORESCSI";
