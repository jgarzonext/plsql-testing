--------------------------------------------------------
--  DDL for Table CAMPAPRD
--------------------------------------------------------

  CREATE TABLE "AXIS"."CAMPAPRD" 
   (	"CCODIGO" NUMBER, 
	"SPRODUC" NUMBER, 
	"CACTIVI" NUMBER, 
	"CGARANT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CAMPAPRD"."CCODIGO" IS 'C�digo �nico de la campa�a';
   COMMENT ON COLUMN "AXIS"."CAMPAPRD"."SPRODUC" IS 'Numerador secencial de productos';
   COMMENT ON COLUMN "AXIS"."CAMPAPRD"."CACTIVI" IS 'C�digo de actividad';
   COMMENT ON COLUMN "AXIS"."CAMPAPRD"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON TABLE "AXIS"."CAMPAPRD"  IS 'Tabla donde se registran los productos/actividades/garant�as asociados a una campa�a ';
  GRANT UPDATE ON "AXIS"."CAMPAPRD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CAMPAPRD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CAMPAPRD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CAMPAPRD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CAMPAPRD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CAMPAPRD" TO "PROGRAMADORESCSI";