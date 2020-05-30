--------------------------------------------------------
--  DDL for Table RESTARIFAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."RESTARIFAS" 
   (	"CRESPUE" NUMBER(6,0), 
	"CPREGUN" NUMBER(4,0), 
	"CGRUPO" NUMBER(3,0), 
	"PTARIFA" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."RESTARIFAS"."CRESPUE" IS 'C�digo respuesta';
   COMMENT ON COLUMN "AXIS"."RESTARIFAS"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON COLUMN "AXIS"."RESTARIFAS"."CGRUPO" IS 'C�digo de grupo';
   COMMENT ON COLUMN "AXIS"."RESTARIFAS"."PTARIFA" IS 'Porcentaje de tarifa';
  GRANT UPDATE ON "AXIS"."RESTARIFAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."RESTARIFAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."RESTARIFAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."RESTARIFAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."RESTARIFAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."RESTARIFAS" TO "PROGRAMADORESCSI";
