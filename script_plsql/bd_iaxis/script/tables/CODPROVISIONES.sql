--------------------------------------------------------
--  DDL for Table CODPROVISIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODPROVISIONES" 
   (	"CPROVIS" NUMBER(2,0), 
	"TIPOPROV" NUMBER(1,0), 
	"CREPORT" VARCHAR2(50 BYTE), 
	"CMAPEAD" VARCHAR2(5 BYTE), 
	"TFUNC" VARCHAR2(400 BYTE), 
	"NORDEN" NUMBER(3,0), 
	"TTABLA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODPROVISIONES"."CREPORT" IS 'Nombre del listado de la provisi�n';
   COMMENT ON COLUMN "AXIS"."CODPROVISIONES"."CMAPEAD" IS 'C�digo del map correspondiente';
   COMMENT ON COLUMN "AXIS"."CODPROVISIONES"."TFUNC" IS 'Funci�n para calcular la provisi�n';
   COMMENT ON COLUMN "AXIS"."CODPROVISIONES"."NORDEN" IS 'Orden de ejecuci�n';
   COMMENT ON COLUMN "AXIS"."CODPROVISIONES"."TTABLA" IS 'Tabla de la provisi�n';
  GRANT UPDATE ON "AXIS"."CODPROVISIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODPROVISIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODPROVISIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODPROVISIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODPROVISIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODPROVISIONES" TO "PROGRAMADORESCSI";