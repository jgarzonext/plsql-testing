--------------------------------------------------------
--  DDL for Table LINRECIBO
--------------------------------------------------------

  CREATE TABLE "AXIS"."LINRECIBO" 
   (	"SPRODUC" NUMBER(6,0), 
	"CATRIBU" NUMBER(3,0), 
	"CMODELO" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."LINRECIBO"."SPRODUC" IS 'CODIGO DEL PRODUCTO';
   COMMENT ON COLUMN "AXIS"."LINRECIBO"."CATRIBU" IS 'CODIGO DEL CONCEPTO';
   COMMENT ON COLUMN "AXIS"."LINRECIBO"."CMODELO" IS 'CODIGO DEL MODELO DE CARTA';
  GRANT UPDATE ON "AXIS"."LINRECIBO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LINRECIBO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LINRECIBO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LINRECIBO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LINRECIBO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LINRECIBO" TO "PROGRAMADORESCSI";
