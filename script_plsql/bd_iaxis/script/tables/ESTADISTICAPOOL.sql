--------------------------------------------------------
--  DDL for Table ESTADISTICAPOOL
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTADISTICAPOOL" 
   (	"FECHA" DATE, 
	"CONEXIONES" NUMBER(6,0), 
	"IDENT" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTADISTICAPOOL"."FECHA" IS 'Fecha de la operacion';
   COMMENT ON COLUMN "AXIS"."ESTADISTICAPOOL"."CONEXIONES" IS 'Numero de conexiones abiertas';
   COMMENT ON COLUMN "AXIS"."ESTADISTICAPOOL"."IDENT" IS 'Numero de conexiones con client_identifier';
   COMMENT ON TABLE "AXIS"."ESTADISTICAPOOL"  IS 'Numero de conexiones abiertas por el TF2';
  GRANT UPDATE ON "AXIS"."ESTADISTICAPOOL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTADISTICAPOOL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTADISTICAPOOL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTADISTICAPOOL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTADISTICAPOOL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTADISTICAPOOL" TO "PROGRAMADORESCSI";