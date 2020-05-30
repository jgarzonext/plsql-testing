--------------------------------------------------------
--  DDL for Table MIG_CUAFACUL
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CUAFACUL" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"SFACULT" NUMBER(6,0), 
	"CESTADO" NUMBER(2,0), 
	"FINICUF" DATE, 
	"CFREBOR" NUMBER(2,0), 
	"SCONTRA" NUMBER(6,0), 
	"NVERSIO" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"CCALIF1" VARCHAR2(1 BYTE), 
	"CCALIF2" NUMBER(2,0), 
	"SPLENO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"SCUMULO" NUMBER(6,0), 
	"NRIESGO" NUMBER(6,0), 
	"FFINCUF" DATE, 
	"PLOCAL" NUMBER(5,2), 
	"FULTBOR" DATE, 
	"PFACCED" NUMBER(15,6), 
	"IFACCED" NUMBER, 
	"NCESION" NUMBER(6,0), 
	"CTIPFAC" NUMBER(1,0), 
	"PTASAXL" NUMBER(7,5), 
	"CNOTACES" VARCHAR2(100 BYTE), 
	"CGARANT" NUMBER(4,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."MIG_PK" IS 'Clave ¿nica de MIG_CUAFACUL';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."MIG_FK" IS 'Clave for¿nea de MIG_CODICONTRATOS';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."MIG_FK2" IS 'Clave for¿nea de MIG_SEGUROS';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."SFACULT" IS 'Secuencia de cuadro facultativo (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."CESTADO" IS 'Estado del cuadro';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."FINICUF" IS 'Fecha inicio validez';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."CFREBOR" IS 'Frecuencia del border¿';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."SCONTRA" IS 'Secuencia de contrato (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."NVERSIO" IS 'N¿mero versi¿n contrato reas. (Siempre 1)';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."SSEGURO" IS 'N¿mero consecutivo de seguro asignado autom¿ticamente. (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."CCALIF1" IS 'Calificaci¿n del riesgo (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."CCALIF2" IS 'Subcalificaci¿n del riesgo (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."SPLENO" IS 'Identificador del Pleno (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."NMOVIMI" IS 'N¿mero de movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."SCUMULO" IS 'Identificador de un c¿mulo (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."NRIESGO" IS 'N¿mero de riesgo (Siempre 1)';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."FFINCUF" IS 'Fecha fin valide';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."PLOCAL" IS 'Parte que retenemos del facultativo';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."FULTBOR" IS 'Fecha impresi¿n ¿ltimo border¿';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."PFACCED" IS 'Porcentaje cedido de facultativo';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."IFACCED" IS 'Importe cedido facultativo';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."NCESION" IS 'N¿mero de cesi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."CTIPFAC" IS 'C¿digo tipo facultativo (0-Normal, 1-Fac.XL)';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."PTASAXL" IS 'Tasa Facultativo XL';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."CNOTACES" IS 'Nota cesiones del facultativo para impresi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_CUAFACUL"."CGARANT" IS 'Código de garantía (Nulo en este caso)';
   COMMENT ON TABLE "AXIS"."MIG_CUAFACUL"  IS 'Fichero con la informaci¿n de los cuadros facultativos.';
  GRANT UPDATE ON "AXIS"."MIG_CUAFACUL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CUAFACUL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CUAFACUL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_CUAFACUL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CUAFACUL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CUAFACUL" TO "PROGRAMADORESCSI";
