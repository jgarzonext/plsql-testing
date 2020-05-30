--------------------------------------------------------
--  DDL for Table INT_CARGA_CTRL_LINEA
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_CARGA_CTRL_LINEA" 
   (	"SPROCES" NUMBER, 
	"NLINEA" NUMBER, 
	"CTIPO" NUMBER(3,0), 
	"IDINT" VARCHAR2(500 BYTE), 
	"IDEXT" VARCHAR2(500 BYTE), 
	"CESTADO" NUMBER, 
	"CVALIDADO" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"NSINIES" VARCHAR2(14 BYTE), 
	"NTRAMIT" NUMBER(4,0), 
	"SPERSON" NUMBER(10,0), 
	"NRECIBO" NUMBER, 
	"CUSUARIO" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"TIPOPER" VARCHAR2(50 BYTE), 
	"NCARGA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 ROW STORE COMPRESS ADVANCED LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."SPROCES" IS 'Proceso cargado';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."NLINEA" IS 'Linea que se esta tratando';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."CTIPO" IS 'Tipo de carga, de siniestros, polizas, recibos...(Detvalor 800018)';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."IDINT" IS 'Identificador interno';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."IDEXT" IS 'Identificador externo';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."CESTADO" IS 'Estado de la linea (Detvalor 800019)';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."CVALIDADO" IS 'Linea validada o no';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."SSEGURO" IS 'Seguro que estamos tratando';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."NSINIES" IS 'Siniestro que tratamos';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."NTRAMIT" IS 'Tramitación del siniestro que tratamos';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."SPERSON" IS 'Persona que tratamos';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."NRECIBO" IS 'Recibo que tratamos';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."CUSUARIO" IS 'Usuario que realiza la carga o una modificación en el registro';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."FMOVIMI" IS 'Fecha de la modificación del registro';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."TIPOPER" IS 'Tipo operación';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_CTRL_LINEA"."NCARGA" IS 'Número de carga. Relacion con tablas MIG';
   COMMENT ON TABLE "AXIS"."INT_CARGA_CTRL_LINEA"  IS 'Tabla que registra el estado de cada linea del archivo cargado y procesado';
  GRANT UPDATE ON "AXIS"."INT_CARGA_CTRL_LINEA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CARGA_CTRL_LINEA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_CARGA_CTRL_LINEA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_CARGA_CTRL_LINEA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CARGA_CTRL_LINEA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_CARGA_CTRL_LINEA" TO "PROGRAMADORESCSI";
