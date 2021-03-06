--------------------------------------------------------
--  DDL for Table POS_SAL_PRESUPUESTOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."POS_SAL_PRESUPUESTOS" 
   (	"CTIPFIG" NUMBER, 
	"CAGENTE" NUMBER, 
	"CRAMO" NUMBER, 
	"FINIEFE" DATE, 
	"FFINEFE" DATE, 
	"IPRESUP" NUMBER, 
	"PPRODMIN" NUMBER(5,2), 
	"ISINMAX" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."POS_SAL_PRESUPUESTOS"."CTIPFIG" IS 'Tipo de figura comercial';
   COMMENT ON COLUMN "AXIS"."POS_SAL_PRESUPUESTOS"."CAGENTE" IS 'Código de agente';
   COMMENT ON COLUMN "AXIS"."POS_SAL_PRESUPUESTOS"."CRAMO" IS 'Código del ramo';
   COMMENT ON COLUMN "AXIS"."POS_SAL_PRESUPUESTOS"."FINIEFE" IS 'Fecha de inicio vigencia del Presupuesto';
   COMMENT ON COLUMN "AXIS"."POS_SAL_PRESUPUESTOS"."FFINEFE" IS 'Fecha fin de vigencia del presupuesto';
   COMMENT ON COLUMN "AXIS"."POS_SAL_PRESUPUESTOS"."IPRESUP" IS 'Importe de presupuesto asignado a la figura comercial.';
   COMMENT ON COLUMN "AXIS"."POS_SAL_PRESUPUESTOS"."PPRODMIN" IS 'Porcentaje de producción mínima para tener derecho a bonificación';
   COMMENT ON COLUMN "AXIS"."POS_SAL_PRESUPUESTOS"."ISINMAX" IS 'Porcentaje de siniestralidad máxima para tener derecho a bonificación';
   COMMENT ON TABLE "AXIS"."POS_SAL_PRESUPUESTOS"  IS 'Tabla de presupuestos para la gestión de salarios en positiva';
  GRANT UPDATE ON "AXIS"."POS_SAL_PRESUPUESTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."POS_SAL_PRESUPUESTOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."POS_SAL_PRESUPUESTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."POS_SAL_PRESUPUESTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."POS_SAL_PRESUPUESTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."POS_SAL_PRESUPUESTOS" TO "PROGRAMADORESCSI";
