--------------------------------------------------------
--  DDL for Table MATRIZPROVMATGEN
--------------------------------------------------------

  CREATE TABLE "AXIS"."MATRIZPROVMATGEN" 
   (	"CINDICE" NUMBER(5,0), 
	"NMESES1" NUMBER(6,0), 
	"NMESES2" NUMBER(6,0), 
	"NANYOSRIES" NUMBER(5,0), 
	"LX1" NUMBER, 
	"LX2" NUMBER, 
	"TPX1" NUMBER(34,25), 
	"TPX2" NUMBER(34,25), 
	"TPXI" NUMBER(34,25), 
	"TSUMPX1" NUMBER(34,25), 
	"TSUMPX2" NUMBER(34,25), 
	"TSUMPXI" NUMBER(34,25), 
	"TQX" NUMBER(34,25), 
	"VN" NUMBER(34,25), 
	"VN2" NUMBER(34,25), 
	"VECVIDA" NUMBER(34,25), 
	"VECMORT" NUMBER(34,25), 
	"ICAPITAL" NUMBER(34,25), 
	"ITOTPRIM" NUMBER(34,25), 
	"IGASCAPV" NUMBER(34,25), 
	"IPGASCAPV" NUMBER(34,25), 
	"IPCMORT" NUMBER(34,25), 
	"IPPMORT" NUMBER(34,25), 
	"IPCVID" NUMBER(34,25), 
	"IPPVID" NUMBER(34,25), 
	"SPROCES" NUMBER, 
	"VECINV" NUMBER(34,25), 
	"LMIX" NUMBER(34,25), 
	"IPINVMORT" NUMBER(34,25), 
	"TPMIX" NUMBER(34,25), 
	"PFALLE" NUMBER(34,25), 
	"PINV" NUMBER(34,25)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."MATRIZPROVMATGEN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MATRIZPROVMATGEN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MATRIZPROVMATGEN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MATRIZPROVMATGEN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MATRIZPROVMATGEN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MATRIZPROVMATGEN" TO "PROGRAMADORESCSI";