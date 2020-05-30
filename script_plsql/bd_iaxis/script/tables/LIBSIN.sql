--------------------------------------------------------
--  DDL for Table LIBSIN
--------------------------------------------------------

  CREATE TABLE "AXIS"."LIBSIN" 
   (	"NSINIES" NUMBER(8,0), 
	"CGARANT" NUMBER(4,0), 
	"PTRAMO0" NUMBER(8,5), 
	"PTRAMO1" NUMBER(8,5), 
	"PTRAMO2" NUMBER(8,5), 
	"PTRAMO3" NUMBER(8,5), 
	"PTRAMO4" NUMBER(8,5), 
	"PTRAMO5" NUMBER(8,5), 
	"IPRIOXL" NUMBER, 
	"ICAPAXL" NUMBER, 
	"IPAGO_ANY" NUMBER, 
	"IPAGO" NUMBER, 
	"VALORA" NUMBER, 
	"PROVISIO" NUMBER, 
	"ANYO" NUMBER(4,0), 
	"CDELEGA" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"SSEGURO" NUMBER, 
	"CESTSIN" NUMBER(2,0), 
	"FESTSIN" DATE, 
	"FSINIES" DATE, 
	"NRIESGO" NUMBER(6,0), 
	"PLOCAL" NUMBER(5,2), 
	"SPROCES" NUMBER, 
	"CTIPREA" NUMBER(1,0), 
	"CTIPCOA" NUMBER(1,0), 
	"CPAGCOA" NUMBER(2,0), 
	"IPAGOANY_COA" NUMBER, 
	"PROV_COA" NUMBER, 
	"PAG_CUOPART" NUMBER, 
	"PROV_CUOPART" NUMBER, 
	"PAG_EXC" NUMBER, 
	"PROV_EXC" NUMBER, 
	"PAG_FACOB" NUMBER, 
	"PROV_FACOB" NUMBER, 
	"PAG_FACUL" NUMBER, 
	"PROV_FACUL" NUMBER, 
	"PAG_PROPI" NUMBER, 
	"PROV_PROPI" NUMBER, 
	"PAG_PROSINXL" NUMBER, 
	"PAG_XL" NUMBER, 
	"PROV_PROSINXL" NUMBER, 
	"PROV_XL" NUMBER, 
	"IPAGO_NLIQ" NUMBER, 
	"IPAGO_LIQ" NUMBER, 
	"IPAGOANY_NLIQ" NUMBER, 
	"IPAGOANY_LIQ" NUMBER, 
	"IPAGOANY_COA_NLIQ" NUMBER, 
	"IPAGOANY_COA_LIQ" NUMBER, 
	"PAG_CUOPART_NLIQ" NUMBER, 
	"PAG_CUOPART_LIQ" NUMBER, 
	"PAG_EXC_NLIQ" NUMBER, 
	"PAG_EXC_LIQ" NUMBER, 
	"PAG_FACOB_NLIQ" NUMBER, 
	"PAG_FACOB_LIQ" NUMBER, 
	"PAG_FACUL_NLIQ" NUMBER, 
	"PAG_FACUL_LIQ" NUMBER, 
	"PAG_PROPI_NLIQ" NUMBER, 
	"PAG_PROPI_LIQ" NUMBER, 
	"FNOTIFI" DATE, 
	"FMAXVAL" DATE, 
	"IPROVINI" NUMBER, 
	"IPROVFIN" NUMBER, 
	"IVALINI" NUMBER, 
	"IRECOBRO" NUMBER, 
	"PAG_PROREA" NUMBER, 
	"PROV_PROREA" NUMBER, 
	"PAG_PRONREA" NUMBER, 
	"PROV_PRONREA" NUMBER, 
	"PAG_NOSTRE" NUMBER, 
	"PROV_NOSTRE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."LIBSIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LIBSIN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LIBSIN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LIBSIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LIBSIN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LIBSIN" TO "PROGRAMADORESCSI";