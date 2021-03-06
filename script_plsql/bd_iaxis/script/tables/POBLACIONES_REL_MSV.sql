--------------------------------------------------------
--  DDL for Table POBLACIONES_REL_MSV
--------------------------------------------------------

  CREATE TABLE "AXIS"."POBLACIONES_REL_MSV" 
   (	"CPOBLAC_MSV" NUMBER(5,0), 
	"CPOBLAC" NUMBER, 
	"CPROVIN" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."POBLACIONES_REL_MSV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."POBLACIONES_REL_MSV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."POBLACIONES_REL_MSV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."POBLACIONES_REL_MSV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."POBLACIONES_REL_MSV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."POBLACIONES_REL_MSV" TO "PROGRAMADORESCSI";
