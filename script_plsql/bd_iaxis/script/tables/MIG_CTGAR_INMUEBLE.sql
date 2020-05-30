--------------------------------------------------------
--  DDL for Table MIG_CTGAR_INMUEBLE
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CTGAR_INMUEBLE" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NNUMESCR" NUMBER, 
	"FESCRITURA" DATE, 
	"TDESCRIPCION" VARCHAR2(1000 BYTE), 
	"TDIRECCION" VARCHAR2(1000 BYTE), 
	"CPAIS" NUMBER(3,0), 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER, 
	"FCERTLIB" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_CTGAR_INMUEBLE"."MIG_PK" IS 'Clave �nica de MIG_CTGA_INMUEBLE';
   COMMENT ON COLUMN "AXIS"."MIG_CTGAR_INMUEBLE"."MIG_FK" IS 'Clave externa para MIG_CTGARDET';
   COMMENT ON COLUMN "AXIS"."MIG_CTGAR_INMUEBLE"."NNUMESCR" IS 'N�mero de la escritura publica';
   COMMENT ON COLUMN "AXIS"."MIG_CTGAR_INMUEBLE"."FESCRITURA" IS 'Fecha de la escritura';
   COMMENT ON COLUMN "AXIS"."MIG_CTGAR_INMUEBLE"."TDESCRIPCION" IS 'Descripci�n general';
   COMMENT ON COLUMN "AXIS"."MIG_CTGAR_INMUEBLE"."TDIRECCION" IS 'Direcci�n del inmueble';
   COMMENT ON COLUMN "AXIS"."MIG_CTGAR_INMUEBLE"."CPAIS" IS 'Pa�s';
   COMMENT ON COLUMN "AXIS"."MIG_CTGAR_INMUEBLE"."CPROVIN" IS 'C�digo de Provincia';
   COMMENT ON COLUMN "AXIS"."MIG_CTGAR_INMUEBLE"."CPOBLAC" IS 'Municipio';
   COMMENT ON COLUMN "AXIS"."MIG_CTGAR_INMUEBLE"."FCERTLIB" IS 'Certificado libertad';
  GRANT UPDATE ON "AXIS"."MIG_CTGAR_INMUEBLE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTGAR_INMUEBLE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CTGAR_INMUEBLE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_CTGAR_INMUEBLE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTGAR_INMUEBLE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CTGAR_INMUEBLE" TO "PROGRAMADORESCSI";