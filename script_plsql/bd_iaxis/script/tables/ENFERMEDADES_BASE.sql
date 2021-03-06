--------------------------------------------------------
--  DDL for Table ENFERMEDADES_BASE
--------------------------------------------------------

  CREATE TABLE "AXIS"."ENFERMEDADES_BASE" 
   (	"CINDEX" NUMBER, 
	"CODENF" VARCHAR2(10 BYTE), 
	"DESENF" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ENFERMEDADES_BASE"."CINDEX" IS 'Indice de la enfermedad.';
   COMMENT ON COLUMN "AXIS"."ENFERMEDADES_BASE"."CODENF" IS 'C�digo de la enfermedad.';
   COMMENT ON COLUMN "AXIS"."ENFERMEDADES_BASE"."DESENF" IS 'Descripcion de la enfermedad.';
  GRANT UPDATE ON "AXIS"."ENFERMEDADES_BASE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ENFERMEDADES_BASE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ENFERMEDADES_BASE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ENFERMEDADES_BASE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ENFERMEDADES_BASE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ENFERMEDADES_BASE" TO "PROGRAMADORESCSI";
