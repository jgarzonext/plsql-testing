--------------------------------------------------------
--  DDL for Table CFG_FILES_TMP2
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_FILES_TMP2" 
   (	"CEMPRES" NUMBER, 
	"CPROCESO" NUMBER, 
	"TDESTINO" VARCHAR2(100 BYTE), 
	"TDESTINO_BBDD" VARCHAR2(100 BYTE), 
	"CDESCRIP" NUMBER, 
	"TPROCESO" VARCHAR2(100 BYTE), 
	"TPANTALLA" VARCHAR2(50 BYTE), 
	"CACTIVO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_FILES_TMP2"."CEMPRES" IS 'Empresa que se har� la configuraci�n';
   COMMENT ON COLUMN "AXIS"."CFG_FILES_TMP2"."CPROCESO" IS 'Identificador del proceso';
   COMMENT ON COLUMN "AXIS"."CFG_FILES_TMP2"."TDESTINO" IS 'Directorio de destino en la base de datos';
   COMMENT ON COLUMN "AXIS"."CFG_FILES_TMP2"."TDESTINO_BBDD" IS 'Directorio de destino en la aplicacion';
   COMMENT ON COLUMN "AXIS"."CFG_FILES_TMP2"."CDESCRIP" IS 'Literal que se mostrar� por pantalla para identificar el proceso';
   COMMENT ON COLUMN "AXIS"."CFG_FILES_TMP2"."TPROCESO" IS 'Identificador del proceso que trata el fichero';
   COMMENT ON COLUMN "AXIS"."CFG_FILES_TMP2"."TPANTALLA" IS 'Pantalla de navegaci�n despu�s de su ejecuci�n';
   COMMENT ON COLUMN "AXIS"."CFG_FILES_TMP2"."CACTIVO" IS 'Nos dice si el proceso esta activo';
   COMMENT ON TABLE "AXIS"."CFG_FILES_TMP2"  IS 'Parametrizaci�n de carga de un fichero';
  GRANT UPDATE ON "AXIS"."CFG_FILES_TMP2" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_FILES_TMP2" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_FILES_TMP2" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_FILES_TMP2" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_FILES_TMP2" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_FILES_TMP2" TO "PROGRAMADORESCSI";
