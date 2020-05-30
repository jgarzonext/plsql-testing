--------------------------------------------------------
--  DDL for Table TASA_BOMBERIL_PREVIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."TASA_BOMBERIL_PREVIO" 
   (	"SSEGURO" NUMBER, 
	"CGARANT" NUMBER, 
	"SPROCES" NUMBER, 
	"IPRIMA" NUMBER, 
	"ITASABOMBERIL" NUMBER, 
	"FCIERRE" DATE, 
	"FCALCUL" DATE, 
	"CUSUARIO" VARCHAR2(30 BYTE), 
	"IPRIMA_MONCON" NUMBER, 
	"ITASABOMBEROL_MONCON" NUMBER, 
	"FCAMBIO" DATE, 
	"NRECIBO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT INSERT ON "AXIS"."TASA_BOMBERIL_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TASA_BOMBERIL_PREVIO" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."TASA_BOMBERIL_PREVIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TASA_BOMBERIL_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TASA_BOMBERIL_PREVIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TASA_BOMBERIL_PREVIO" TO "PROGRAMADORESCSI";