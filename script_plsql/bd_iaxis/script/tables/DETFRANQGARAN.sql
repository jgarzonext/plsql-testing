--------------------------------------------------------
--  DDL for Table DETFRANQGARAN
--------------------------------------------------------

  CREATE TABLE "AXIS"."DETFRANQGARAN" 
   (	"NGRPGARA" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"CFRANQ" NUMBER(6,0), 
	"NFRAVER" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DETFRANQGARAN"."NGRPGARA" IS 'Codigo Grupo de garantia';
   COMMENT ON COLUMN "AXIS"."DETFRANQGARAN"."CGARANT" IS 'Codigo de Garant�a';
   COMMENT ON COLUMN "AXIS"."DETFRANQGARAN"."CFRANQ" IS 'Codigo de franquicia';
   COMMENT ON COLUMN "AXIS"."DETFRANQGARAN"."NFRAVER" IS 'Codigo de versi�n';
   COMMENT ON TABLE "AXIS"."DETFRANQGARAN"  IS 'Tabla detalle garantias';
  GRANT UPDATE ON "AXIS"."DETFRANQGARAN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETFRANQGARAN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DETFRANQGARAN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DETFRANQGARAN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETFRANQGARAN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DETFRANQGARAN" TO "PROGRAMADORESCSI";
