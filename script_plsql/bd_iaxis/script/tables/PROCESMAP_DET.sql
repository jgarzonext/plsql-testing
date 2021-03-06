--------------------------------------------------------
--  DDL for Table PROCESMAP_DET
--------------------------------------------------------

  CREATE TABLE "AXIS"."PROCESMAP_DET" 
   (	"CPROCES" NUMBER(6,0), 
	"NORDEN" NUMBER(3,0), 
	"CTIPO" NUMBER(3,0), 
	"CODIGO" VARCHAR2(50 BYTE), 
	"TNOMFITXER" VARCHAR2(30 BYTE), 
	"TPARAMETROS" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PROCESMAP_DET"."CPROCES" IS 'C�digo del proceso';
   COMMENT ON COLUMN "AXIS"."PROCESMAP_DET"."NORDEN" IS 'Orden de ejecuci�n';
   COMMENT ON COLUMN "AXIS"."PROCESMAP_DET"."CTIPO" IS 'Tipo de elemento a ejecutar';
   COMMENT ON COLUMN "AXIS"."PROCESMAP_DET"."CODIGO" IS 'C�digo del MAP, o de la funci�n a ejecutar';
   COMMENT ON COLUMN "AXIS"."PROCESMAP_DET"."TNOMFITXER" IS 'Posici�n en la linea inicial del proceso donde se informar� el nombre espec�fico del fichero en el caso de ser necesario';
   COMMENT ON COLUMN "AXIS"."PROCESMAP_DET"."TPARAMETROS" IS 'Posiciones en la linea inicial del proceso donde se informar�n los par�metros que se le pasar�n al MAP al ejecutarse';
   COMMENT ON TABLE "AXIS"."PROCESMAP_DET"  IS 'Detalle de los MAPs o funciones a ejecutar en el proceso';
  GRANT UPDATE ON "AXIS"."PROCESMAP_DET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROCESMAP_DET" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PROCESMAP_DET" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PROCESMAP_DET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROCESMAP_DET" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PROCESMAP_DET" TO "PROGRAMADORESCSI";
