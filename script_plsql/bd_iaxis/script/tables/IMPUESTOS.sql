--------------------------------------------------------
--  DDL for Table IMPUESTOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."IMPUESTOS" 
   (	"CIMPUES" NUMBER(1,0), 
	"PCONSOR" NUMBER(5,2), 
	"PIMPDGS" NUMBER(5,2), 
	"PIMPIPS" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."IMPUESTOS"."CIMPUES" IS 'C�digo del impuesto';
   COMMENT ON COLUMN "AXIS"."IMPUESTOS"."PCONSOR" IS 'Porcentaje del consorcio';
   COMMENT ON COLUMN "AXIS"."IMPUESTOS"."PIMPDGS" IS 'Porcentaje DGS';
   COMMENT ON COLUMN "AXIS"."IMPUESTOS"."PIMPIPS" IS 'Porcentaje IPS';
  GRANT UPDATE ON "AXIS"."IMPUESTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IMPUESTOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IMPUESTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IMPUESTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IMPUESTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IMPUESTOS" TO "PROGRAMADORESCSI";