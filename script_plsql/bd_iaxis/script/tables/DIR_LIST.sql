--------------------------------------------------------
--  DDL for Table DIR_LIST
--------------------------------------------------------

  CREATE TABLE "AXIS"."DIR_LIST" 
   (	"SPROCES" NUMBER, 
	"FILENAME" VARCHAR2(1000 BYTE), 
	"PATH" VARCHAR2(3000 BYTE), 
	"LENGTH" NUMBER, 
	"MODIFIED" DATE, 
	"TIMESTAMP" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DIR_LIST"."SPROCES" IS 'Sproces que genera la lectura';
   COMMENT ON COLUMN "AXIS"."DIR_LIST"."FILENAME" IS 'Nombre del fichero';
   COMMENT ON COLUMN "AXIS"."DIR_LIST"."PATH" IS 'Patch del fichero';
   COMMENT ON COLUMN "AXIS"."DIR_LIST"."LENGTH" IS 'Tama�o del fichero';
   COMMENT ON COLUMN "AXIS"."DIR_LIST"."MODIFIED" IS 'Fecha de modificaci�n del fichero';
   COMMENT ON COLUMN "AXIS"."DIR_LIST"."TIMESTAMP" IS 'Timestamp de lectura del fichero';
   COMMENT ON TABLE "AXIS"."DIR_LIST"  IS 'Tabla de listado de ficheros';
  GRANT UPDATE ON "AXIS"."DIR_LIST" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIR_LIST" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DIR_LIST" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DIR_LIST" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIR_LIST" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DIR_LIST" TO "PROGRAMADORESCSI";
