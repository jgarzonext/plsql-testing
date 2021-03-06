--------------------------------------------------------
--  DDL for Table ANURIESGOS_IR
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANURIESGOS_IR" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"CINSPREQ" NUMBER(3,0), 
	"CRESULTR" NUMBER(3,0), 
	"TPERSCONTACTO" VARCHAR2(200 BYTE), 
	"TTELCONTACTO" VARCHAR2(100 BYTE), 
	"TMAILCONTACTO" VARCHAR2(100 BYTE), 
	"CROLCONTACTO" NUMBER(3,0), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANURIESGOS_IR"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente';
   COMMENT ON COLUMN "AXIS"."ANURIESGOS_IR"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."ANURIESGOS_IR"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."ANURIESGOS_IR"."CINSPREQ" IS 'Inspecci�n de riesgo requerida (0-No , 1-S�)';
   COMMENT ON COLUMN "AXIS"."ANURIESGOS_IR"."CRESULTR" IS 'Resultado inspecci�n de riesgo para el riesgo VF 755';
   COMMENT ON COLUMN "AXIS"."ANURIESGOS_IR"."TPERSCONTACTO" IS 'Nombre de la persona de contacto';
   COMMENT ON COLUMN "AXIS"."ANURIESGOS_IR"."TTELCONTACTO" IS 'Tel�fono de la persona de contacto';
   COMMENT ON COLUMN "AXIS"."ANURIESGOS_IR"."TMAILCONTACTO" IS 'Mail de la persona de contacto';
   COMMENT ON COLUMN "AXIS"."ANURIESGOS_IR"."CROLCONTACTO" IS 'Rol de la persona de contacto para la inspecci�n de riesgo VF 756';
   COMMENT ON COLUMN "AXIS"."ANURIESGOS_IR"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."ANURIESGOS_IR"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."ANURIESGOS_IR"."FMODIFI" IS 'Fecha de modificacion';
   COMMENT ON COLUMN "AXIS"."ANURIESGOS_IR"."CUSUMOD" IS 'Usuario de modificacion';
   COMMENT ON TABLE "AXIS"."ANURIESGOS_IR"  IS 'Tabla de datos de inspecci�n de riesgo del riesgo';
  GRANT UPDATE ON "AXIS"."ANURIESGOS_IR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANURIESGOS_IR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANURIESGOS_IR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANURIESGOS_IR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANURIESGOS_IR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANURIESGOS_IR" TO "PROGRAMADORESCSI";
