--------------------------------------------------------
--  DDL for Table MIG_CUACESFAC
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CUACESFAC" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIG_FK2" VARCHAR2(50 BYTE), 
	"SFACULT" NUMBER(6,0), 
	"CCOMPANI" NUMBER(3,0), 
	"CCOMREA" NUMBER(2,0), 
	"PCESION" NUMBER(8,5), 
	"ICESFIJ" NUMBER, 
	"ICOMFIJ" NUMBER, 
	"ISCONTA" NUMBER, 
	"PRESERV" NUMBER(5,2), 
	"PINTRES" NUMBER(7,5), 
	"PCOMISI" NUMBER(5,2), 
	"CINTRES" NUMBER(2,0), 
	"CCORRED" NUMBER(4,0), 
	"CFRERES" NUMBER(2,0), 
	"CRESREA" NUMBER(1,0), 
	"CCONREC" NUMBER(1,0), 
	"FGARPRI" DATE, 
	"FGARDEP" DATE, 
	"PIMPINT" NUMBER(5,2), 
	"CTRAMOCOMISION" NUMBER(5,0), 
	"TIDFCOM" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."MIG_PK" IS 'Clave ¿nica de MIG_CUACESFAC';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."MIG_FK" IS 'Clave for¿nea de MIG_CUAFACUL';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."MIG_FK2" IS 'Clave for¿nea de MIG_COMPANIAS';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."SFACULT" IS 'Secuencia de cuadro facultativo (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."CCOMPANI" IS 'C¿digo de compa¿¿a (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."CCOMREA" IS 'C¿digo de comisi¿n en contratos de reaseguro (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."PCESION" IS 'Porcentaje de cesi¿n por compa¿¿a';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."ICESFIJ" IS 'Importe fijo de cesi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."ICOMFIJ" IS 'Importe fijo de comisi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."ISCONTA" IS 'Importe l¿mite pago siniestro a al contado';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."PRESERV" IS 'Porcentaje reserva sobre cesi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."PINTRES" IS 'Porcentaje inter¿s sobre reserva';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."PCOMISI" IS 'Porcentaje de comisi¿n';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."CINTRES" IS 'Codi de la taula inter¿s variable (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."CCORRED" IS 'Porcentaje de impuestos sobre los intereses';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."CFRERES" IS 'C¿digo frecuencia liberaci¿n/reembolso de Reservas VF:113';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."CRESREA" IS 'Reserva/Dep¿sito a cuenta de la reaseguradora (0-No, 1-Si)';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."CCONREC" IS 'Cl¿usula control de reclamos';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."FGARPRI" IS 'Fecha garant¿a de pago de primas';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."FGARDEP" IS 'Fecha garant¿a de pago de dep¿sitos';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."CTRAMOCOMISION" IS 'Tramo comisi¿n variable (Tabla CLAUSULAS_REAS) (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_CUACESFAC"."TIDFCOM" IS 'ID del facultativo en la compa¿¿a reaseguradora';
   COMMENT ON TABLE "AXIS"."MIG_CUACESFAC"  IS 'Fichero con la informaci¿n del detalle del cuadro facultativo.';
  GRANT UPDATE ON "AXIS"."MIG_CUACESFAC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CUACESFAC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CUACESFAC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_CUACESFAC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CUACESFAC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CUACESFAC" TO "PROGRAMADORESCSI";
