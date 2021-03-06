--------------------------------------------------------
--  DDL for Table DWL_DESCARGAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DWL_DESCARGAS" 
   (	"SSEQDWL" NUMBER, 
	"CCODDES" NUMBER, 
	"FDESCAR" DATE, 
	"CESTDES" NUMBER(2,0), 
	"SINTERF" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DWL_DESCARGAS"."SSEQDWL" IS 'Secuencia descarga';
   COMMENT ON COLUMN "AXIS"."DWL_DESCARGAS"."CCODDES" IS 'C�digo descarga';
   COMMENT ON COLUMN "AXIS"."DWL_DESCARGAS"."FDESCAR" IS 'Fecha descarga';
   COMMENT ON COLUMN "AXIS"."DWL_DESCARGAS"."CESTDES" IS 'Estado descarga. VF:800034';
   COMMENT ON COLUMN "AXIS"."DWL_DESCARGAS"."SINTERF" IS 'Secuencia de la interfaz';
   COMMENT ON TABLE "AXIS"."DWL_DESCARGAS"  IS 'Tabla que contiene las distintas descargas realizadas';
  GRANT UPDATE ON "AXIS"."DWL_DESCARGAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DWL_DESCARGAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DWL_DESCARGAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DWL_DESCARGAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DWL_DESCARGAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DWL_DESCARGAS" TO "PROGRAMADORESCSI";
