--------------------------------------------------------
--  DDL for Table IRPF_PRESTACIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."IRPF_PRESTACIONES" 
   (	"SPRESTAPLAN" NUMBER(6,0), 
	"SPERSON" NUMBER(10,0), 
	"CTIPCAP" NUMBER(1,0), 
	"FPAGO" DATE, 
	"IRETENC" NUMBER(25,10), 
	"IIRPF" NUMBER(25,10), 
	"IREDUC" NUMBER(25,10), 
	"IIMPORTE" NUMBER(25,10), 
	"SIDEPAG" NUMBER(8,0), 
	"NPARPOS2006" NUMBER(25,6), 
	"NPARANT2007" NUMBER(25,6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."IRPF_PRESTACIONES"."SIDEPAG" IS 'N�mero de Pago';
   COMMENT ON COLUMN "AXIS"."IRPF_PRESTACIONES"."NPARPOS2006" IS 'Participaciones de aportaciones posteriores a 2006';
   COMMENT ON COLUMN "AXIS"."IRPF_PRESTACIONES"."NPARANT2007" IS 'Participaciones de aportaciones anteriores a 2007';
  GRANT UPDATE ON "AXIS"."IRPF_PRESTACIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IRPF_PRESTACIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IRPF_PRESTACIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IRPF_PRESTACIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IRPF_PRESTACIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IRPF_PRESTACIONES" TO "PROGRAMADORESCSI";
