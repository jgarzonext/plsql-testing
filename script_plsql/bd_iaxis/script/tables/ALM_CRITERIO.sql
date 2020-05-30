--------------------------------------------------------
--  DDL for Table ALM_CRITERIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."ALM_CRITERIO" 
   (	"CEMPRES" NUMBER(2,0), 
	"TCRITERIO" VARCHAR2(1000 BYTE), 
	"NORDEN" NUMBER, 
	"PCREDIBI" NUMBER(5,4), 
	"PINTFUT" NUMBER(4,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ALM_CRITERIO"."CEMPRES" IS 'C�digo empresa';
   COMMENT ON COLUMN "AXIS"."ALM_CRITERIO"."TCRITERIO" IS 'Criterio estoc�stico';
   COMMENT ON COLUMN "AXIS"."ALM_CRITERIO"."NORDEN" IS 'Orden de aplicaci�n del criterio';
   COMMENT ON COLUMN "AXIS"."ALM_CRITERIO"."PCREDIBI" IS 'Porcentaje de credibilidad';
   COMMENT ON COLUMN "AXIS"."ALM_CRITERIO"."PINTFUT" IS 'Inter�s futuro';
   COMMENT ON TABLE "AXIS"."ALM_CRITERIO"  IS 'Criterio para generaci�n proceso ALM-Asset Liability Management';
  GRANT UPDATE ON "AXIS"."ALM_CRITERIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ALM_CRITERIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ALM_CRITERIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ALM_CRITERIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ALM_CRITERIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ALM_CRITERIO" TO "PROGRAMADORESCSI";
