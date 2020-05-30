--------------------------------------------------------
--  DDL for Table DESCLASACTIVI
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESCLASACTIVI" 
   (	"CCLASACT" NUMBER(15,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TCLASACT" VARCHAR2(2000 BYTE), 
	"TROTCLASACT" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESCLASACTIVI"."CCLASACT" IS 'Codigo de la actividad';
   COMMENT ON COLUMN "AXIS"."DESCLASACTIVI"."CIDIOMA" IS 'Idioma de la actividad';
   COMMENT ON COLUMN "AXIS"."DESCLASACTIVI"."TCLASACT" IS 'Descripcion completa de la actividada';
   COMMENT ON COLUMN "AXIS"."DESCLASACTIVI"."TROTCLASACT" IS 'Substring de los primeros 500 caracteres de Clase de riesgo - Codigo CIIU - Digitos adicionales - descripcion de actividad';
   COMMENT ON TABLE "AXIS"."DESCLASACTIVI"  IS 'Descripcion de la clasificacion de actividades';
  GRANT SELECT ON "AXIS"."DESCLASACTIVI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESCLASACTIVI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESCLASACTIVI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESCLASACTIVI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESCLASACTIVI" TO "PROGRAMADORESCSI";
  GRANT UPDATE ON "AXIS"."DESCLASACTIVI" TO "R_AXIS";
