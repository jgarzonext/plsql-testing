--------------------------------------------------------
--  DDL for Table SCORE_PAISES
--------------------------------------------------------

  CREATE TABLE "AXIS"."SCORE_PAISES" 
   (	"CPAIS" NUMBER(3,0), 
	"NCALTOTAL" NUMBER, 
	"NCALPROM" NUMBER, 
	"NCALPARCIAL" NUMBER, 
	"NCALPROPIA" NUMBER, 
	"NCALTRANS" NUMBER, 
	"NSUSTANTI" NUMBER, 
	"NPARFIS" NUMBER, 
	"NLROJAGAFI" NUMBER, 
	"NLNEGRAGAFI" NUMBER, 
	"NLGRISOSCGAFI" NUMBER, 
	"NLGRISGAFI" NUMBER, 
	"NLGAFI" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SCORE_PAISES"."CPAIS" IS 'Codigo de Pais';
   COMMENT ON COLUMN "AXIS"."SCORE_PAISES"."NCALTOTAL" IS 'Calificacion Total
';
   COMMENT ON COLUMN "AXIS"."SCORE_PAISES"."NCALPROM" IS 'Calificacion Prom';
   COMMENT ON COLUMN "AXIS"."SCORE_PAISES"."NCALPARCIAL" IS 'Calificacion Parcial';
   COMMENT ON COLUMN "AXIS"."SCORE_PAISES"."NCALPROPIA" IS 'Calificacion Propia';
   COMMENT ON COLUMN "AXIS"."SCORE_PAISES"."NCALTRANS" IS 'Calificacion Listado Transparencia Intl/ Corrupcion';
   COMMENT ON COLUMN "AXIS"."SCORE_PAISES"."NSUSTANTI" IS 'Sustantiability';
   COMMENT ON COLUMN "AXIS"."SCORE_PAISES"."NPARFIS" IS 'Paraiso Fiscal';
   COMMENT ON COLUMN "AXIS"."SCORE_PAISES"."NLROJAGAFI" IS 'Lista Roja GAFI
';
   COMMENT ON COLUMN "AXIS"."SCORE_PAISES"."NLNEGRAGAFI" IS 'Lista Negra GAFI';
   COMMENT ON COLUMN "AXIS"."SCORE_PAISES"."NLGRISOSCGAFI" IS 'Lista Gris Oscurecida GAFI';
   COMMENT ON COLUMN "AXIS"."SCORE_PAISES"."NLGRISGAFI" IS 'Lista Gris GAFI';
   COMMENT ON COLUMN "AXIS"."SCORE_PAISES"."NLGAFI" IS 'Lista Gafi';
  GRANT UPDATE ON "AXIS"."SCORE_PAISES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SCORE_PAISES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SCORE_PAISES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SCORE_PAISES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SCORE_PAISES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SCORE_PAISES" TO "PROGRAMADORESCSI";
