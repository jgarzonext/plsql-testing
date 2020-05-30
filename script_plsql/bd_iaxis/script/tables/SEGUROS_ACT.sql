--------------------------------------------------------
--  DDL for Table SEGUROS_ACT
--------------------------------------------------------

  CREATE TABLE "AXIS"."SEGUROS_ACT" 
   (	"SACTIVO" NUMBER(6,0), 
	"SSEGURO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SEGUROS_ACT"."SACTIVO" IS 'Clave del Activo';
   COMMENT ON COLUMN "AXIS"."SEGUROS_ACT"."SSEGURO" IS 'Clave del Seguro';
   COMMENT ON TABLE "AXIS"."SEGUROS_ACT"  IS 'Seguros Relacionados con activos';
  GRANT UPDATE ON "AXIS"."SEGUROS_ACT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROS_ACT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SEGUROS_ACT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SEGUROS_ACT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROS_ACT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SEGUROS_ACT" TO "PROGRAMADORESCSI";