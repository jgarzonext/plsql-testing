--------------------------------------------------------
--  DDL for Table INT_REPROCESO
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_REPROCESO" 
   (	"SINTERF" NUMBER, 
	"CINTERF" VARCHAR2(5 BYTE), 
	"CESTADO" NUMBER(1,0), 
	"FACTUALIZA" DATE, 
	"CEMPRES" NUMBER(2,0), 
	"VLINEAINI" VARCHAR2(500 BYTE), 
	"TERROR" VARCHAR2(2200 BYTE), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"SINTERFPADRE" NUMBER, 
	"ID1" NUMBER, 
	"ID2" NUMBER, 
	"TIPO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 ROW STORE COMPRESS ADVANCED LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_REPROCESO"."SINTERF" IS 'Secuencia de la interfaz padre';
   COMMENT ON COLUMN "AXIS"."INT_REPROCESO"."CINTERF" IS 'C�digo del mapeador de carga';
   COMMENT ON COLUMN "AXIS"."INT_REPROCESO"."CESTADO" IS 'Estado del proceso 0-correcto, 1-error(en cola), 2-parado, 3-ejecutando';
   COMMENT ON COLUMN "AXIS"."INT_REPROCESO"."FACTUALIZA" IS 'Fecha de la ultima actualizaci�n';
   COMMENT ON COLUMN "AXIS"."INT_REPROCESO"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."INT_REPROCESO"."VLINEAINI" IS 'L�nea de par�metros para llamar al reproceso';
   COMMENT ON COLUMN "AXIS"."INT_REPROCESO"."TERROR" IS 'Tipo Identificador 1 - siniestros, 4 - recibos, 10 - personas';
   COMMENT ON COLUMN "AXIS"."INT_REPROCESO"."CUSUARI" IS 'Identificador 2';
   COMMENT ON COLUMN "AXIS"."INT_REPROCESO"."ID1" IS 'Identificador para relacionar con estado_proc_recibos u otras';
  GRANT UPDATE ON "AXIS"."INT_REPROCESO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_REPROCESO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_REPROCESO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_REPROCESO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_REPROCESO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_REPROCESO" TO "PROGRAMADORESCSI";
