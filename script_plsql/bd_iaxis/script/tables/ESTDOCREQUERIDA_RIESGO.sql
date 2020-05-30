--------------------------------------------------------
--  DDL for Table ESTDOCREQUERIDA_RIESGO
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTDOCREQUERIDA_RIESGO" 
   (	"SEQDOCU" NUMBER(10,0), 
	"CDOCUME" NUMBER(6,0), 
	"SPRODUC" NUMBER(6,0), 
	"CACTIVI" NUMBER(4,0), 
	"NORDEN" NUMBER(3,0), 
	"CTIPDOC" NUMBER(3,0), 
	"CCLASE" NUMBER(3,0), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"TFILENAME" VARCHAR2(200 BYTE), 
	"TDESCRIP" VARCHAR2(1000 BYTE), 
	"ADJUNTADO" NUMBER(1,0) DEFAULT 1, 
	"IDDOCGEDOX" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."SEQDOCU" IS 'N�mero secuencial de documento';
   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."CDOCUME" IS 'C�digo de documento';
   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."SPRODUC" IS 'C�digo de producto';
   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."CACTIVI" IS 'C�digo de actividad';
   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."NORDEN" IS 'N�mero de orden';
   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."CTIPDOC" IS 'Tipo de documento (VF. 1031)';
   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."CCLASE" IS 'Clase de parametrizaci�n (VF. 1032)';
   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."SSEGURO" IS 'N�mero secuencial de seguro';
   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."TFILENAME" IS 'Nombre del fichero';
   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."TDESCRIP" IS 'Descripci�n';
   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."ADJUNTADO" IS 'Indicador de si se ha adjuntado el documento';
   COMMENT ON COLUMN "AXIS"."ESTDOCREQUERIDA_RIESGO"."IDDOCGEDOX" IS 'Identificador del GEDOX';
   COMMENT ON TABLE "AXIS"."ESTDOCREQUERIDA_RIESGO"  IS 'Tabla temporal de documentaci�n requerida de los riesgos de un contrato';
  GRANT UPDATE ON "AXIS"."ESTDOCREQUERIDA_RIESGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTDOCREQUERIDA_RIESGO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTDOCREQUERIDA_RIESGO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTDOCREQUERIDA_RIESGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTDOCREQUERIDA_RIESGO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTDOCREQUERIDA_RIESGO" TO "PROGRAMADORESCSI";