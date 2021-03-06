--------------------------------------------------------
--  DDL for Table CODIRIESGOACT_CONF
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODIRIESGOACT_CONF" 
   (	"CRIESGOACT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODIRIESGOACT_CONF"."CRIESGOACT" IS 'Riesgo actividad';
  GRANT UPDATE ON "AXIS"."CODIRIESGOACT_CONF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIRIESGOACT_CONF" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODIRIESGOACT_CONF" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODIRIESGOACT_CONF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIRIESGOACT_CONF" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODIRIESGOACT_CONF" TO "PROGRAMADORESCSI";
