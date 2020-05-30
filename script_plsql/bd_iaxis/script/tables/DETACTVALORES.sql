--------------------------------------------------------
--  DDL for Table DETACTVALORES
--------------------------------------------------------

  CREATE TABLE "AXIS"."DETACTVALORES" 
   (	"CACTVAL" NUMBER(3,0), 
	"FACTVAL" DATE, 
	"IACTVAL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DETACTVALORES"."CACTVAL" IS 'C�digo: Corresponde a CACTVAL de ACTVALORES';
   COMMENT ON COLUMN "AXIS"."DETACTVALORES"."FACTVAL" IS 'Fecha en la que se introduce el valor';
   COMMENT ON COLUMN "AXIS"."DETACTVALORES"."IACTVAL" IS 'Importe en la fecha en cuesti�n';
  GRANT UPDATE ON "AXIS"."DETACTVALORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETACTVALORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DETACTVALORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DETACTVALORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETACTVALORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DETACTVALORES" TO "PROGRAMADORESCSI";
