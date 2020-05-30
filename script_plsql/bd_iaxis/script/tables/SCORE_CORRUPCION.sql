--------------------------------------------------------
--  DDL for Table SCORE_CORRUPCION
--------------------------------------------------------

  CREATE TABLE "AXIS"."SCORE_CORRUPCION" 
   (	"CPAIS" NUMBER(3,0), 
	"SCORE" NUMBER, 
	"SCORE2" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SCORE_CORRUPCION"."CPAIS" IS 'Codigo de Pais';
   COMMENT ON COLUMN "AXIS"."SCORE_CORRUPCION"."SCORE" IS 'Score corrupci�n pais.';
   COMMENT ON COLUMN "AXIS"."SCORE_CORRUPCION"."SCORE2" IS 'Score2  corrupion  pais.';
  GRANT UPDATE ON "AXIS"."SCORE_CORRUPCION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SCORE_CORRUPCION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SCORE_CORRUPCION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SCORE_CORRUPCION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SCORE_CORRUPCION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SCORE_CORRUPCION" TO "PROGRAMADORESCSI";