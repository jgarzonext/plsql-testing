--------------------------------------------------------
--  DDL for Table MIG_CUACESFAC_BS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_CUACESFAC_BS" 
   (	"MIG_PK" VARCHAR2(50 BYTE), 
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
  GRANT DELETE ON "AXIS"."MIG_CUACESFAC_BS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_CUACESFAC_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CUACESFAC_BS" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_CUACESFAC_BS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_CUACESFAC_BS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_CUACESFAC_BS" TO "PROGRAMADORESCSI";
