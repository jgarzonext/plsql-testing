--------------------------------------------------------
--  DDL for Table DOMICI_DEVOLU
--------------------------------------------------------

  CREATE TABLE "AXIS"."DOMICI_DEVOLU" 
   (	"SPROCES" NUMBER, 
	"SDEVOLU" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DOMICI_DEVOLU"."SPROCES" IS 'Proceso';
   COMMENT ON COLUMN "AXIS"."DOMICI_DEVOLU"."SDEVOLU" IS 'Identificador del proceso de carga de devoluciones';
   COMMENT ON TABLE "AXIS"."DOMICI_DEVOLU"  IS 'Relaci�n de tablas DOMICILIACIONES y DEVBANORDENANTES (DEVOLUCIONES)';
  GRANT UPDATE ON "AXIS"."DOMICI_DEVOLU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOMICI_DEVOLU" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DOMICI_DEVOLU" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DOMICI_DEVOLU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOMICI_DEVOLU" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DOMICI_DEVOLU" TO "PROGRAMADORESCSI";
