--------------------------------------------------------
--  DDL for Table IR_INSPECCIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."IR_INSPECCIONES" 
   (	"CEMPRES" NUMBER(5,0), 
	"SORDEN" NUMBER, 
	"NINSPECCION" NUMBER, 
	"FINSPECCION" DATE, 
	"CESTADO" NUMBER(3,0), 
	"CRESULTADO" NUMBER(3,0), 
	"CREINSPECCION" NUMBER(1,0), 
	"HLLEGADA" VARCHAR2(4 BYTE), 
	"HSALIDA" VARCHAR2(4 BYTE), 
	"CCENTROINSP" NUMBER, 
	"CINSPDOMI" NUMBER(1,0), 
	"CPISTA" NUMBER(1,0), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."SORDEN" IS 'N�mero consecutivo de orden de inspecci�n asignado autom�ticamente';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."NINSPECCION" IS 'N�mero consecutivo de inspecci�n, para cada orden de inspecci�n';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."FINSPECCION" IS 'Fecha de realizaci�n de la inspecci�n';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."CESTADO" IS 'Estado de la inspecci�n VF 752';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."CRESULTADO" IS 'Resultado de la inspecci�n VF 753';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."CREINSPECCION" IS 'Indicador de si es re-inspecci�n o no (1-0)';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."HLLEGADA" IS 'Hora de llegada';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."HSALIDA" IS 'Hora de llegada';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."CCENTROINSP" IS 'C�digo de Centro de inspecci�n';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."CINSPDOMI" IS 'Indicador de si la inspecci�n se realiz� a domicilio o no (1-0)';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."CPISTA" IS 'Indicador de si el veh�culo pas� por pista o no (1-0)';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."FMODIFI" IS 'Fecha de modificacion';
   COMMENT ON COLUMN "AXIS"."IR_INSPECCIONES"."CUSUMOD" IS 'Usuario de modificacion';
   COMMENT ON TABLE "AXIS"."IR_INSPECCIONES"  IS 'Tabla de resultados de las inspecciones de  riesgo
';
  GRANT UPDATE ON "AXIS"."IR_INSPECCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IR_INSPECCIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IR_INSPECCIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IR_INSPECCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IR_INSPECCIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IR_INSPECCIONES" TO "PROGRAMADORESCSI";
