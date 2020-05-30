--------------------------------------------------------
--  DDL for Table CFG_FILES
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_FILES" 
   (	"CEMPRES" NUMBER, 
	"CPROCESO" NUMBER, 
	"TDESTINO" VARCHAR2(100 BYTE), 
	"TDESTINO_BBDD" VARCHAR2(100 BYTE), 
	"CDESCRIP" NUMBER, 
	"TPROCESO" VARCHAR2(100 BYTE), 
	"TPANTALLA" VARCHAR2(50 BYTE), 
	"CACTIVO" NUMBER, 
	"TTABLA" VARCHAR2(200 BYTE), 
	"CPARA_ERROR" NUMBER(1,0), 
	"CBORRA_FICH" NUMBER(1,0), 
	"CBUSCA_HOST" NUMBER(1,0), 
	"CFORMATO_DECIMALES" NUMBER(1,0) DEFAULT 0, 
	"CTABLAS" VARCHAR2(3 BYTE) DEFAULT 'POL', 
	"CJOB" NUMBER(1,0), 
	"CDEBUG" NUMBER(2,0) DEFAULT 99, 
	"NREGMASIVO" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_FILES"."CEMPRES" IS 'Empresa que se hará la configuración';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."CPROCESO" IS 'Identificador del proceso';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."TDESTINO" IS 'Directorio de destino en la base de datos';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."TDESTINO_BBDD" IS 'Directorio de destino en la aplicacion';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."CDESCRIP" IS 'Literal que se mostrará por pantalla para identificar el proceso';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."TPROCESO" IS 'Identificador del proceso que trata el fichero';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."TPANTALLA" IS 'Pantalla de navegación después de su ejecución';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."CACTIVO" IS 'Nos dice si el proceso esta activo';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."TTABLA" IS 'Tabla destino';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."CPARA_ERROR" IS 'Indicador para carga 0:no/1:si';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."CBORRA_FICH" IS 'Indicador de si borra fichero. 0:no/1:sí';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."CBUSCA_HOST" IS 'Indicador de si realiza busca/alta personas Host. 0:no/1:sí';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."CFORMATO_DECIMALES" IS 'Formato númerico: 0 - Sin decimales * 100 1 - Seperador ,';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."CTABLAS" IS 'Destino de la migración POL = REALES, EST = TEMPORALES';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."CJOB" IS 'Indica si el proceso se lanza por job o no. 1 (por job), 0 o nulo (no job)';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."CDEBUG" IS 'Escribir traza 0-NO, otro valor activado, 99 todo.';
   COMMENT ON COLUMN "AXIS"."CFG_FILES"."NREGMASIVO" IS 'Número de entidades a procesar en bloque. Por defecto 1.';
   COMMENT ON TABLE "AXIS"."CFG_FILES"  IS 'Parametrización de carga de un fichero';
  GRANT UPDATE ON "AXIS"."CFG_FILES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_FILES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_FILES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_FILES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_FILES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_FILES" TO "PROGRAMADORESCSI";
