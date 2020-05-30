--------------------------------------------------------
--  DDL for Table INT_CARGA_LRE
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_CARGA_LRE" 
   (	"PROCESO" NUMBER, 
	"NLINEA" NUMBER, 
	"NCARGA" NUMBER, 
	"CLRE" NUMBER, 
	"NNUMIDE" NUMBER, 
	"CTIPIDE" VARCHAR2(5 BYTE), 
	"TNOMAPE" VARCHAR2(2000 BYTE), 
	"FALTA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_CARGA_LRE"."PROCESO" IS 'Numero proceso';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LRE"."NLINEA" IS 'Numero de l�nea';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LRE"."NCARGA" IS 'Numero carga';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LRE"."CLRE" IS 'C�digo lista restringida';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LRE"."NNUMIDE" IS 'N�mero de identificaci�n de la persona';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LRE"."CTIPIDE" IS 'Tipo de documento';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LRE"."TNOMAPE" IS 'Nombres y apellidos de la persona';
   COMMENT ON COLUMN "AXIS"."INT_CARGA_LRE"."FALTA" IS 'Fecha de creacion';
  GRANT UPDATE ON "AXIS"."INT_CARGA_LRE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CARGA_LRE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_CARGA_LRE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_CARGA_LRE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CARGA_LRE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_CARGA_LRE" TO "PROGRAMADORESCSI";
