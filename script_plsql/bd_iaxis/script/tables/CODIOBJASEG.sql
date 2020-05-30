--------------------------------------------------------
--  DDL for Table CODIOBJASEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODIOBJASEG" 
   (	"COBJASEG" VARCHAR2(2 BYTE), 
	"COBJASE" NUMBER(3,0), 
	"TFUNCIO" VARCHAR2(30 BYTE), 
	"CCLARIE" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODIOBJASEG"."COBJASEG" IS 'C�digo del Objeto Asegurado';
   COMMENT ON COLUMN "AXIS"."CODIOBJASEG"."COBJASE" IS 'Antiguo Codigo Albor de Objetos Asegurados';
   COMMENT ON COLUMN "AXIS"."CODIOBJASEG"."TFUNCIO" IS 'Programa o pantalla llamada';
   COMMENT ON COLUMN "AXIS"."CODIOBJASEG"."CCLARIE" IS 'Codigo Clase de Riesgo';
   COMMENT ON TABLE "AXIS"."CODIOBJASEG"  IS 'Tabla de C�digos de Objeto Asegurado';
  GRANT UPDATE ON "AXIS"."CODIOBJASEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIOBJASEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODIOBJASEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODIOBJASEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIOBJASEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODIOBJASEG" TO "PROGRAMADORESCSI";
