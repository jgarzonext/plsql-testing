--------------------------------------------------------
--  DDL for Table MATRIZPROVMATPJ
--------------------------------------------------------

  CREATE TABLE "AXIS"."MATRIZPROVMATPJ" 
   (	"CINDICE" NUMBER(3,0), 
	"NANYOS" NUMBER(3,0), 
	"NEDAD" NUMBER(3,0), 
	"IX" NUMBER, 
	"TPX" NUMBER(21,6), 
	"TPX1" NUMBER(21,6), 
	"TQX" NUMBER(21,6), 
	"VN" NUMBER(21,6), 
	"VN2" NUMBER(21,6), 
	"VECVIDA" NUMBER(21,6), 
	"VECMORT" NUMBER(21,6), 
	"IGASPVI" NUMBER(21,6), 
	"IPGASVI" NUMBER(21,6), 
	"IPCMORT" NUMBER(21,6), 
	"IPPMORT" NUMBER(21,6), 
	"IPINVIV" NUMBER(21,6), 
	"IPPINVI" NUMBER(21,6), 
	"SPROCES" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."MATRIZPROVMATPJ" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MATRIZPROVMATPJ" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MATRIZPROVMATPJ" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MATRIZPROVMATPJ" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MATRIZPROVMATPJ" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MATRIZPROVMATPJ" TO "PROGRAMADORESCSI";