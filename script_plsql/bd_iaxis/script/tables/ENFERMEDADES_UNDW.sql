--------------------------------------------------------
--  DDL for Table ENFERMEDADES_UNDW
--------------------------------------------------------

  CREATE TABLE "AXIS"."ENFERMEDADES_UNDW" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"CEMPRES" NUMBER(5,0), 
	"SORDEN" NUMBER, 
	"NORDEN" NUMBER, 
	"CINDEX" NUMBER, 
	"CODENF" VARCHAR2(10 BYTE), 
	"DESENF" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ENFERMEDADES_UNDW"."SSEGURO" IS 'Identificador del seguro.';
   COMMENT ON COLUMN "AXIS"."ENFERMEDADES_UNDW"."NRIESGO" IS 'Numero de riesgo.';
   COMMENT ON COLUMN "AXIS"."ENFERMEDADES_UNDW"."NMOVIMI" IS 'Numero de movimiento.';
   COMMENT ON COLUMN "AXIS"."ENFERMEDADES_UNDW"."CEMPRES" IS 'C�digo de empresa.';
   COMMENT ON COLUMN "AXIS"."ENFERMEDADES_UNDW"."SORDEN" IS 'Identificador del caso.';
   COMMENT ON COLUMN "AXIS"."ENFERMEDADES_UNDW"."NORDEN" IS 'Orden';
   COMMENT ON COLUMN "AXIS"."ENFERMEDADES_UNDW"."CINDEX" IS 'Indice Enfermedad';
   COMMENT ON COLUMN "AXIS"."ENFERMEDADES_UNDW"."CODENF" IS 'C�digo de la enfermedad.';
   COMMENT ON COLUMN "AXIS"."ENFERMEDADES_UNDW"."DESENF" IS 'Descripci�n de la enfermedad.';
   COMMENT ON TABLE "AXIS"."ENFERMEDADES_UNDW"  IS 'Enfermedades Underwriting';
  GRANT UPDATE ON "AXIS"."ENFERMEDADES_UNDW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ENFERMEDADES_UNDW" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ENFERMEDADES_UNDW" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ENFERMEDADES_UNDW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ENFERMEDADES_UNDW" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ENFERMEDADES_UNDW" TO "PROGRAMADORESCSI";
