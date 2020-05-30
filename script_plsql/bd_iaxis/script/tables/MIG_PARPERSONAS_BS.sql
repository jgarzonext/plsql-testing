--------------------------------------------------------
--  DDL for Table MIG_PARPERSONAS_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_PARPERSONAS_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"CPARAM" VARCHAR2(20 BYTE), 
	"TIPVAL" NUMBER(1,0), 
	"VALVAL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_PARPERSONAS_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_PARPERSONAS_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PARPERSONAS_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_PARPERSONAS_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_PARPERSONAS_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_PARPERSONAS_BS" TO "PROGRAMADORESCSI";