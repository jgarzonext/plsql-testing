--------------------------------------------------------
--  DDL for Table FACPENDIENTES
--------------------------------------------------------

  CREATE TABLE "AXIS"."FACPENDIENTES" 
   (	"SPROCES" NUMBER, 
	"NNUMLIN" NUMBER(6,0), 
	"SSEGURO" NUMBER, 
	"IPRIREA" NUMBER, 
	"ICAPITAL" NUMBER, 
	"CFACULT" NUMBER(1,0), 
	"CESTADO" NUMBER(1,0), 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"CCALIF1" VARCHAR2(1 BYTE), 
	"CCALIF2" NUMBER(2,0), 
	"SPLENO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"SCONTRA" NUMBER(6,0), 
	"NVERSIO" NUMBER(2,0), 
	"FCONINI" DATE, 
	"FCONFIN" DATE, 
	"IPLENO" NUMBER, 
	"ICAPACI" NUMBER, 
	"SCUMULO" NUMBER(6,0), 
	"SFACULT" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."FACPENDIENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FACPENDIENTES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FACPENDIENTES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FACPENDIENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FACPENDIENTES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FACPENDIENTES" TO "PROGRAMADORESCSI";