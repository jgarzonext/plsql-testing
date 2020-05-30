--------------------------------------------------------
--  DDL for Table POS_SAL_SALARIOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."POS_SAL_SALARIOS" 
   (	"CTIPFIG" NUMBER, 
	"CTIPSAL" NUMBER, 
	"FINIEFE" DATE, 
	"FFINEFE" DATE, 
	"ISALARIO" NUMBER, 
	"IMAXSAL" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."POS_SAL_SALARIOS"."CTIPFIG" IS 'Tipo de figura comercial (Parámetro  CFIGURCOM )';
   COMMENT ON COLUMN "AXIS"."POS_SAL_SALARIOS"."CTIPSAL" IS 'Tipo de salario';
   COMMENT ON COLUMN "AXIS"."POS_SAL_SALARIOS"."FINIEFE" IS 'Fecha de inicio de vigencia';
   COMMENT ON COLUMN "AXIS"."POS_SAL_SALARIOS"."FFINEFE" IS 'Fecha fin de vigencia';
   COMMENT ON COLUMN "AXIS"."POS_SAL_SALARIOS"."ISALARIO" IS 'Importe del salario';
   COMMENT ON COLUMN "AXIS"."POS_SAL_SALARIOS"."IMAXSAL" IS 'Importe máximo de salario';
   COMMENT ON TABLE "AXIS"."POS_SAL_SALARIOS"  IS 'Tabla con las condiciones generales de la figura comercial';
  GRANT UPDATE ON "AXIS"."POS_SAL_SALARIOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."POS_SAL_SALARIOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."POS_SAL_SALARIOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."POS_SAL_SALARIOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."POS_SAL_SALARIOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."POS_SAL_SALARIOS" TO "PROGRAMADORESCSI";
