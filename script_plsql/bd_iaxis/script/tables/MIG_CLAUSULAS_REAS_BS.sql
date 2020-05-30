--------------------------------------------------------
--  DDL for Table MIG_CLAUSULAS_REAS_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CLAUSULAS_REAS_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"CCODIGO" NUMBER(5,0), 
	"TDESCRIPCION" VARCHAR2(200 BYTE), 
	"CTRAMO" NUMBER(3,0), 
	"ILIM_INF" NUMBER(14,0), 
	"ILIM_SUP" NUMBER(14,0), 
	"PCTPART" NUMBER(5,0), 
	"PCTMIN" NUMBER(5,0), 
	"PCTMAX" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_CLAUSULAS_REAS_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CLAUSULAS_REAS_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CLAUSULAS_REAS_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_CLAUSULAS_REAS_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CLAUSULAS_REAS_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CLAUSULAS_REAS_BS" TO "PROGRAMADORESCSI";
