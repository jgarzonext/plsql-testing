--------------------------------------------------------
--  DDL for Table COMPANIAS_ENVIOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."COMPANIAS_ENVIOS" 
   (	"CCOMPANI" NUMBER(3,0), 
	"MENSAJE" VARCHAR2(10 BYTE), 
	"SPRODUC" NUMBER(6,0), 
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

   COMMENT ON COLUMN "AXIS"."COMPANIAS_ENVIOS"."CCOMPANI" IS 'Codi de companyia';
   COMMENT ON COLUMN "AXIS"."COMPANIAS_ENVIOS"."MENSAJE" IS 'Identificador de la interficie';
   COMMENT ON COLUMN "AXIS"."COMPANIAS_ENVIOS"."SPRODUC" IS 'Identificador de producte';
   COMMENT ON COLUMN "AXIS"."COMPANIAS_ENVIOS"."CRAMO" IS 'Identificador del Producte';
   COMMENT ON COLUMN "AXIS"."COMPANIAS_ENVIOS"."CMODALI" IS 'Identificador del Producte';
   COMMENT ON COLUMN "AXIS"."COMPANIAS_ENVIOS"."CTIPSEG" IS 'Identificador del Producte';
   COMMENT ON COLUMN "AXIS"."COMPANIAS_ENVIOS"."CCOLECT" IS 'Identificador del Producte';
   COMMENT ON TABLE "AXIS"."COMPANIAS_ENVIOS"  IS 'Enviaments per companyies. M�ximo grande como MOVSEGURO';
  GRANT UPDATE ON "AXIS"."COMPANIAS_ENVIOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMPANIAS_ENVIOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COMPANIAS_ENVIOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."COMPANIAS_ENVIOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMPANIAS_ENVIOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COMPANIAS_ENVIOS" TO "PROGRAMADORESCSI";
