--------------------------------------------------------
--  DDL for Table REGLASSEGTRAMOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."REGLASSEGTRAMOS" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
	"EDADINI" NUMBER(3,0), 
	"EDADFIN" NUMBER(3,0), 
	"T1COPAGEMP" NUMBER(5,2), 
	"T1COPAGTRA" NUMBER(5,2), 
	"T2COPAGEMP" NUMBER(5,2), 
	"T2COPAGTRA" NUMBER(5,2), 
	"T3COPAGEMP" NUMBER(5,2), 
	"T3COPAGTRA" NUMBER(5,2), 
	"T4COPAGEMP" NUMBER(5,2), 
	"T4COPAGTRA" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."SSEGURO" IS 'Identificador del seguro';
   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."NRIESGO" IS 'Identificador del riesgo';
   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."CGARANT" IS 'Identificador de la garant�a';
   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."NMOVIMI" IS 'Identificador del movimiento';
   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."EDADINI" IS 'Edad inicial';
   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."EDADFIN" IS 'Edad final';
   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."T1COPAGEMP" IS 'T1 porcentaje empresa';
   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."T1COPAGTRA" IS 'T1 porcentaje trabajor';
   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."T2COPAGEMP" IS 'T2 porcentaje empresa';
   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."T2COPAGTRA" IS 'T2 porcentaje trabajador';
   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."T3COPAGEMP" IS 'T3 porcentaje empresa';
   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."T3COPAGTRA" IS 'T3 porcentaje trabajador';
   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."T4COPAGEMP" IS 'T4 porcentaje empresa';
   COMMENT ON COLUMN "AXIS"."REGLASSEGTRAMOS"."T4COPAGTRA" IS 'T4 porcentaje trabajador';
   COMMENT ON TABLE "AXIS"."REGLASSEGTRAMOS"  IS 'Seguros Ahorro';
  GRANT UPDATE ON "AXIS"."REGLASSEGTRAMOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REGLASSEGTRAMOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."REGLASSEGTRAMOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."REGLASSEGTRAMOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REGLASSEGTRAMOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."REGLASSEGTRAMOS" TO "PROGRAMADORESCSI";
