--------------------------------------------------------
--  DDL for Table PERSISTENCIA_SIMUL
--------------------------------------------------------

  CREATE TABLE "AXIS"."PERSISTENCIA_SIMUL" 
   (	"SSEGURO" NUMBER, 
	"FPERSIS" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PERSISTENCIA_SIMUL"."SSEGURO" IS 'N�mero de seguro';
   COMMENT ON COLUMN "AXIS"."PERSISTENCIA_SIMUL"."FPERSIS" IS 'Fecha de persistencia, se informa con la fecha actual';
   COMMENT ON TABLE "AXIS"."PERSISTENCIA_SIMUL"  IS 'Persistencia de simulaciones';
  GRANT UPDATE ON "AXIS"."PERSISTENCIA_SIMUL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PERSISTENCIA_SIMUL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PERSISTENCIA_SIMUL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PERSISTENCIA_SIMUL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PERSISTENCIA_SIMUL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PERSISTENCIA_SIMUL" TO "PROGRAMADORESCSI";
