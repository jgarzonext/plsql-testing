--------------------------------------------------------
--  DDL for Table MIG_CNV_CONV_EMP_SEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CNV_CONV_EMP_SEG" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NMOVIMI" NUMBER(4,0), 
	"SSEGURO" NUMBER DEFAULT 0, 
	"TCODCONV" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_CNV_CONV_EMP_SEG"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_CNV_CONV_EMP_SEG"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_CNV_CONV_EMP_SEG"."MIG_PK" IS 'Clave �nica de MIG_CNV_CONV_EMP_SEG';
   COMMENT ON COLUMN "AXIS"."MIG_CNV_CONV_EMP_SEG"."MIG_FK" IS 'Clave externa para el movieminto (MIG_MOVSEGURO)';
   COMMENT ON COLUMN "AXIS"."MIG_CNV_CONV_EMP_SEG"."NMOVIMI" IS 'N�mero de movimiento ';
   COMMENT ON COLUMN "AXIS"."MIG_CNV_CONV_EMP_SEG"."SSEGURO" IS 'N�mero de secuencia de seguro, valor=0, lo calcula el proceso de migraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_CNV_CONV_EMP_SEG"."TCODCONV" IS 'C�digo de convenio (externo, el informado por la carga como el oficial)';
   COMMENT ON TABLE "AXIS"."MIG_CNV_CONV_EMP_SEG"  IS 'Tabla Intermedia migraci�n Riesgos';
  GRANT UPDATE ON "AXIS"."MIG_CNV_CONV_EMP_SEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CNV_CONV_EMP_SEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CNV_CONV_EMP_SEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_CNV_CONV_EMP_SEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CNV_CONV_EMP_SEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CNV_CONV_EMP_SEG" TO "PROGRAMADORESCSI";