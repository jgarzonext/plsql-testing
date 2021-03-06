--------------------------------------------------------
--  DDL for Table MIG_AGE_CORRETAJE
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_AGE_CORRETAJE" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"NORDAGE" NUMBER(2,0), 
	"CAGENTE" NUMBER, 
	"PCOMISI" NUMBER(5,2), 
	"PPARTICI" NUMBER(5,2), 
	"ISLIDER" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_AGE_CORRETAJE"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_AGE_CORRETAJE"."CESTMIG" IS 'Estado del registro valor inicial 1';
   COMMENT ON COLUMN "AXIS"."MIG_AGE_CORRETAJE"."MIG_PK" IS 'Clave �nica de MIG_AGE_CORRETAJE';
   COMMENT ON COLUMN "AXIS"."MIG_AGE_CORRETAJE"."MIG_FK" IS 'Clave externa para la p�liza (MIG_SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MIG_AGE_CORRETAJE"."SSEGURO" IS 'N�mero de secuencia de seguro, valor=0, lo calcula el proceso de migraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_AGE_CORRETAJE"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_AGE_CORRETAJE"."NORDAGE" IS 'Orden de aparaci�n de agente';
   COMMENT ON COLUMN "AXIS"."MIG_AGE_CORRETAJE"."CAGENTE" IS 'C�digo de agente intermediario';
   COMMENT ON COLUMN "AXIS"."MIG_AGE_CORRETAJE"."PCOMISI" IS 'Porcentaje de comisi�n';
   COMMENT ON COLUMN "AXIS"."MIG_AGE_CORRETAJE"."PPARTICI" IS 'Porcentaje de participaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_AGE_CORRETAJE"."ISLIDER" IS 'Indica si es el L�der del corretaje. 0 --> No  1 --> S�';
   COMMENT ON TABLE "AXIS"."MIG_AGE_CORRETAJE"  IS 'Tabla Intermedia migraci�n de co-corretaje';
  GRANT UPDATE ON "AXIS"."MIG_AGE_CORRETAJE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_AGE_CORRETAJE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_AGE_CORRETAJE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_AGE_CORRETAJE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_AGE_CORRETAJE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_AGE_CORRETAJE" TO "PROGRAMADORESCSI";
