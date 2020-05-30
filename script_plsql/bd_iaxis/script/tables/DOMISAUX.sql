--------------------------------------------------------
--  DDL for Table DOMISAUX
--------------------------------------------------------

  CREATE TABLE "AXIS"."DOMISAUX" 
   (	"SPROCES" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DOMISAUX"."SPROCES" IS 'N�mero de proceso que genera el registro';
   COMMENT ON COLUMN "AXIS"."DOMISAUX"."CRAMO" IS 'C�digo de ramo';
   COMMENT ON COLUMN "AXIS"."DOMISAUX"."CMODALI" IS 'C�digo de modalidad';
   COMMENT ON COLUMN "AXIS"."DOMISAUX"."CTIPSEG" IS 'C�digo de tipo seguro';
   COMMENT ON COLUMN "AXIS"."DOMISAUX"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON TABLE "AXIS"."DOMISAUX"  IS 'Tabla auxiliar para la domiciliaci�n';
  GRANT UPDATE ON "AXIS"."DOMISAUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOMISAUX" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DOMISAUX" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DOMISAUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOMISAUX" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DOMISAUX" TO "PROGRAMADORESCSI";