--------------------------------------------------------
--  DDL for Table MIG_CTGAR_CODEUDOR_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CTGAR_CODEUDOR_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"MIF_FK2" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;
  GRANT DELETE ON "AXIS"."MIG_CTGAR_CODEUDOR_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CTGAR_CODEUDOR_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTGAR_CODEUDOR_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_CTGAR_CODEUDOR_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CTGAR_CODEUDOR_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CTGAR_CODEUDOR_BS" TO "PROGRAMADORESCSI";
