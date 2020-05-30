--------------------------------------------------------
--  DDL for Table VENTASAUX
--------------------------------------------------------

  CREATE TABLE "AXIS"."VENTASAUX" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
	"NANYVEN" NUMBER(4,0), 
	"NMESVEN" NUMBER(2,0), 
	"SPROCES" NUMBER, 
	"FCIERRE" DATE, 
	"FCALCUL" DATE, 
	"CEMPRES" NUMBER(2,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(4,0), 
	"CTIPSEG" NUMBER(4,0), 
	"CCOLECT" NUMBER(4,0), 
	"CACTIVI" NUMBER(4,0), 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"CAGENTE" NUMBER, 
	"CAGRPRO" NUMBER(2,0), 
	"CTIPREA" NUMBER(1,0), 
	"CTIPCOA" NUMBER(1,0), 
	"INOVPRO" NUMBER, 
	"IANUREB_NPAC" NUMBER, 
	"IANUPOL_NPAC" NUMBER, 
	"IANUREB_NPAN" NUMBER, 
	"IANUPOL_NPAN" NUMBER, 
	"ISUPLEM" NUMBER, 
	"ICARTERA" NUMBER, 
	"IANUREB_CARAC" NUMBER, 
	"IANUPOL_CARAC" NUMBER, 
	"IANUREB_CARAN" NUMBER, 
	"IANUPOL_CARAN" NUMBER, 
	"IAPORTEX" NUMBER, 
	"IEXTORN" NUMBER, 
	"ICOMNP" NUMBER, 
	"IRETNP" NUMBER, 
	"ICOMANUREB_NPAC" NUMBER, 
	"IRETANUREB_NPAC" NUMBER, 
	"ICOMANUREB_NPAN" NUMBER, 
	"IRETANUREB_NPAN" NUMBER, 
	"ICOMANUPOL_NPAC" NUMBER, 
	"IRETANUPOL_NPAC" NUMBER, 
	"ICOMANUPOL_NPAN" NUMBER, 
	"IRETANUPOL_NPAN" NUMBER, 
	"ICOMSUP" NUMBER, 
	"IRETSUP" NUMBER, 
	"ICOMCAR" NUMBER, 
	"IRETCAR" NUMBER, 
	"ICOMANUREB_CARAC" NUMBER, 
	"IRETANUREB_CARAC" NUMBER, 
	"ICOMANUREB_CARAN" NUMBER, 
	"IRETANUREB_CARAN" NUMBER, 
	"ICOMANUPOL_CARAC" NUMBER, 
	"IRETANUPOL_CARAC" NUMBER, 
	"ICOMANUPOL_CARAN" NUMBER, 
	"IRETANUPOL_CARAN" NUMBER, 
	"ICOMEXTORN" NUMBER, 
	"IRETEXTORN" NUMBER, 
	"ICOMAPORT" NUMBER, 
	"IRETAPORT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 70 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."VENTASAUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VENTASAUX" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VENTASAUX" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VENTASAUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VENTASAUX" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VENTASAUX" TO "PROGRAMADORESCSI";
