--------------------------------------------------------
--  DDL for Table NOTIBAJASEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."NOTIBAJASEG" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"CNOTIBAJA" NUMBER(3,0), 
	"CMOTMOV" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."NOTIBAJASEG"."SSEGURO" IS 'C�digo del seguro';
   COMMENT ON COLUMN "AXIS"."NOTIBAJASEG"."NMOVIMI" IS 'C�digo del movimiento';
   COMMENT ON COLUMN "AXIS"."NOTIBAJASEG"."NRIESGO" IS 'C�digo del riesgo';
   COMMENT ON COLUMN "AXIS"."NOTIBAJASEG"."CNOTIBAJA" IS 'C�digo de la notoficaci�n de baja.Detvalores 844';
   COMMENT ON TABLE "AXIS"."NOTIBAJASEG"  IS 'Notificaci�n de la baja de un riesgo o  de una poliza';
  GRANT UPDATE ON "AXIS"."NOTIBAJASEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."NOTIBAJASEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."NOTIBAJASEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."NOTIBAJASEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."NOTIBAJASEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."NOTIBAJASEG" TO "PROGRAMADORESCSI";
