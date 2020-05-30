--------------------------------------------------------
--  DDL for Table TEMP_FIS_DETCOBRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."TEMP_FIS_DETCOBRO" 
   (	"SFISCAB" NUMBER(8,0), 
	"SFISDCO" NUMBER(8,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"PFISCAL" NUMBER(6,0), 
	"NNUMPET" NUMBER, 
	"SSEGURO" NUMBER, 
	"SPERSONP" NUMBER(10,0), 
	"NNUMNIFP" VARCHAR2(14 BYTE), 
	"TIDENTIP" NUMBER(1,0), 
	"CDOMICIP" NUMBER, 
	"SPERSON1" NUMBER(10,0), 
	"NNUMNIF1" VARCHAR2(14 BYTE), 
	"TIDENTI1" NUMBER(1,0), 
	"CDOMICI1" NUMBER, 
	"NRECIBO" NUMBER, 
	"CTIPREC" NUMBER(2,0), 
	"CESTREC" NUMBER(1,0), 
	"FEFECTO" DATE, 
	"FVENCIM" DATE, 
	"FANUREC" DATE, 
	"IIMPORTE" NUMBER, 
	"CPROVIN" NUMBER, 
	"CPAISRET" NUMBER(3,0), 
	"CSUBTIPO" NUMBER(4,0), 
	"CERROR" NUMBER(6,0), 
	"ICONSORCIO" NUMBER, 
	"ICLEA" NUMBER, 
	"IIPS" NUMBER, 
	"IBASEIMP" NUMBER, 
	"IBASEIMP_SUJETA" NUMBER, 
	"IBASEIMP_EXENTA" NUMBER, 
	"IRECTIFICA" NUMBER, 
	"IAPORPART" NUMBER, 
	"IAPORPROM" NUMBER, 
	"IAPORSP" NUMBER, 
	"IAPORPRIMA" NUMBER, 
	"CTIPAPOR" VARCHAR2(2 BYTE), 
	"ISPFINANC" NUMBER, 
	"ISPNOFINANC" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS"  ENABLE ROW MOVEMENT ;
  GRANT UPDATE ON "AXIS"."TEMP_FIS_DETCOBRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TEMP_FIS_DETCOBRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TEMP_FIS_DETCOBRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TEMP_FIS_DETCOBRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TEMP_FIS_DETCOBRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TEMP_FIS_DETCOBRO" TO "PROGRAMADORESCSI";