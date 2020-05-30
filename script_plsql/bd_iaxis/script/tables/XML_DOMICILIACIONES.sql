--------------------------------------------------------
--  DDL for Table XML_DOMICILIACIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."XML_DOMICILIACIONES" 
   (	"ID_DOMICI" NUMBER, 
	"FECHA" DATE, 
	"XMLDOC" "SYS"."XMLTYPE" 
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" 
 XMLTYPE COLUMN "XMLDOC" STORE AS SECUREFILE BINARY XML (
  TABLESPACE "AXIS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ALLOW NONSCHEMA DISALLOW ANYSCHEMA ;

   COMMENT ON COLUMN "AXIS"."XML_DOMICILIACIONES"."ID_DOMICI" IS 'Identificaci�n de la domiciliaci�n';
   COMMENT ON COLUMN "AXIS"."XML_DOMICILIACIONES"."FECHA" IS 'Fecha y hora de creaci�n';
   COMMENT ON COLUMN "AXIS"."XML_DOMICILIACIONES"."XMLDOC" IS 'xml de la domiciliacion';
   COMMENT ON TABLE "AXIS"."XML_DOMICILIACIONES"  IS 'Tabla de xmls de las domiciliaciones';
  GRANT UPDATE ON "AXIS"."XML_DOMICILIACIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."XML_DOMICILIACIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."XML_DOMICILIACIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."XML_DOMICILIACIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."XML_DOMICILIACIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."XML_DOMICILIACIONES" TO "PROGRAMADORESCSI";