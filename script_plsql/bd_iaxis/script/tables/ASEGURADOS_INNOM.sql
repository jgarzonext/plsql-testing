--------------------------------------------------------
--  DDL for Table ASEGURADOS_INNOM
--------------------------------------------------------

  CREATE TABLE "AXIS"."ASEGURADOS_INNOM" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER, 
	"NRIESGO" NUMBER, 
	"NORDEN" NUMBER, 
	"NIF" VARCHAR2(50 BYTE), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"APELLIDOS" VARCHAR2(100 BYTE), 
	"CSEXO" NUMBER(3,0), 
	"FNACIM" DATE, 
	"FALTA" DATE, 
	"FBAJA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ASEGURADOS_INNOM"."SSEGURO" IS 'Tabla SEGUROS';
   COMMENT ON COLUMN "AXIS"."ASEGURADOS_INNOM"."NMOVIMI" IS 'Tabla de MOVSEGURO';
   COMMENT ON COLUMN "AXIS"."ASEGURADOS_INNOM"."NRIESGO" IS 'Tabla RIESGOS';
   COMMENT ON COLUMN "AXIS"."ASEGURADOS_INNOM"."NORDEN" IS 'Orden del Asegurado';
   COMMENT ON COLUMN "AXIS"."ASEGURADOS_INNOM"."NIF" IS 'NIF Asegurado';
   COMMENT ON COLUMN "AXIS"."ASEGURADOS_INNOM"."NOMBRE" IS 'Nombre Asegurado';
   COMMENT ON COLUMN "AXIS"."ASEGURADOS_INNOM"."APELLIDOS" IS 'Apellidos del asegurado';
   COMMENT ON COLUMN "AXIS"."ASEGURADOS_INNOM"."CSEXO" IS 'Sexo Asegurado (1 Hombre/ 2 Mujer)';
   COMMENT ON COLUMN "AXIS"."ASEGURADOS_INNOM"."FNACIM" IS 'Fecha Nacimiento';
   COMMENT ON COLUMN "AXIS"."ASEGURADOS_INNOM"."FALTA" IS 'Fecha Alta Asegurado';
   COMMENT ON COLUMN "AXIS"."ASEGURADOS_INNOM"."FBAJA" IS 'Fecha Baja Asegurado';
  GRANT UPDATE ON "AXIS"."ASEGURADOS_INNOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ASEGURADOS_INNOM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ASEGURADOS_INNOM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ASEGURADOS_INNOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ASEGURADOS_INNOM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ASEGURADOS_INNOM" TO "PROGRAMADORESCSI";
