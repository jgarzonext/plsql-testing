--------------------------------------------------------
--  DDL for Table TRASPASOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."TRASPASOS" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"FINIEFE" DATE, 
	"FFINEFE" DATE, 
	"CCESTA1" NUMBER(3,0), 
	"IIMPSAL" NUMBER(15,6), 
	"NUNISAL" NUMBER(15,6), 
	"CCESTA2" NUMBER(3,0), 
	"IIMPMOV" NUMBER(15,6), 
	"NUNIMOV" NUMBER(15,6), 
	"PPORMOV" NUMBER(5,2), 
	"IPENAL" NUMBER, 
	"PPENAL" NUMBER(12,9), 
	"CESTADO" VARCHAR2(1 BYTE) DEFAULT '0'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."TRASPASOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TRASPASOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TRASPASOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TRASPASOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TRASPASOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TRASPASOS" TO "PROGRAMADORESCSI";
