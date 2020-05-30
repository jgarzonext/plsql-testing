--------------------------------------------------------
--  DDL for Table FIS_MOD188_TMP
--------------------------------------------------------

  CREATE TABLE "AXIS"."FIS_MOD188_TMP" 
   (	"NANYO" NUMBER(4,0), 
	"NNUMPET" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CTIPO" CHAR(3 BYTE), 
	"NNIFDEC" VARCHAR2(9 BYTE), 
	"SPERSONP" NUMBER(10,0), 
	"NNIFPER" VARCHAR2(9 BYTE), 
	"SPERSONR" NUMBER(10,0), 
	"NNIFREP" VARCHAR2(9 BYTE), 
	"TNOMPER" VARCHAR2(40 BYTE), 
	"CPROVIN" NUMBER, 
	"CSIGREN" VARCHAR2(1 BYTE), 
	"IRENTAS" NUMBER, 
	"CSIGRED" VARCHAR2(1 BYTE), 
	"IREDUC1" NUMBER, 
	"IREDUC2" NUMBER, 
	"CSIGBAS" VARCHAR2(1 BYTE), 
	"IBASE" NUMBER, 
	"PRETENC" NUMBER(4,2), 
	"IRETENC" NUMBER, 
	"CERROR" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."FIS_MOD188_TMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIS_MOD188_TMP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FIS_MOD188_TMP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FIS_MOD188_TMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIS_MOD188_TMP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FIS_MOD188_TMP" TO "PROGRAMADORESCSI";