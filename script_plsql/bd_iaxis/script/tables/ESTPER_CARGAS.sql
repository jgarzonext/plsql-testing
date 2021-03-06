--------------------------------------------------------
--  DDL for Table ESTPER_CARGAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTPER_CARGAS" 
   (	"SPERSON" NUMBER(10,0), 
	"TIPO" VARCHAR2(3 BYTE), 
	"PROCESO" NUMBER, 
	"CAGENTE" NUMBER, 
	"CCODIGO" NUMBER(2,0), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FECHA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTPER_CARGAS"."SPERSON" IS 'ID de persona iaxis';
   COMMENT ON COLUMN "AXIS"."ESTPER_CARGAS"."TIPO" IS 'Tipo de entidad tratada ''AP'': Alta persona ,''ADP'': Alta detalle persona, ''ACB'':Alta cuenta bancaria, ''AD'': AQlta direccion';
   COMMENT ON COLUMN "AXIS"."ESTPER_CARGAS"."PROCESO" IS 'Numero de proceso que genero la carga';
   COMMENT ON COLUMN "AXIS"."ESTPER_CARGAS"."CAGENTE" IS 'Agente ';
   COMMENT ON COLUMN "AXIS"."ESTPER_CARGAS"."CCODIGO" IS 'Codigo indicador de numero de cdomici o nordban';
   COMMENT ON COLUMN "AXIS"."ESTPER_CARGAS"."CUSUARI" IS 'Usuario alta';
   COMMENT ON COLUMN "AXIS"."ESTPER_CARGAS"."FECHA" IS 'Fecha alta';
   COMMENT ON TABLE "AXIS"."ESTPER_CARGAS"  IS 'Tabla de personas con origen cargas/migración';
  GRANT UPDATE ON "AXIS"."ESTPER_CARGAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPER_CARGAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTPER_CARGAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTPER_CARGAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPER_CARGAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTPER_CARGAS" TO "PROGRAMADORESCSI";
