--------------------------------------------------------
--  DDL for Table DOCREQUERIDA_INQAVAL
--------------------------------------------------------

  CREATE TABLE "AXIS"."DOCREQUERIDA_INQAVAL" 
   (	"SEQDOCU" NUMBER(10,0), 
	"CDOCUME" NUMBER(6,0), 
	"SPRODUC" NUMBER(6,0), 
	"CACTIVI" NUMBER(4,0), 
	"NORDEN" NUMBER(3,0), 
	"CTIPDOC" NUMBER(3,0), 
	"CCLASE" NUMBER(3,0), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"NINQAVAL" NUMBER(6,0), 
	"TFILENAME" VARCHAR2(200 BYTE), 
	"TDESCRIP" VARCHAR2(1000 BYTE), 
	"ADJUNTADO" NUMBER(1,0) DEFAULT 1, 
	"IDDOCGEDOX" NUMBER(8,0), 
	"SPERSON" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."SEQDOCU" IS 'N�mero secuencial de documento';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."CDOCUME" IS 'C�digo de documento';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."SPRODUC" IS 'C�digo de producto';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."CACTIVI" IS 'C�digo de actividad';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."NORDEN" IS 'N�mero de orden';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."CTIPDOC" IS 'Tipo de documento (VF. 1031)';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."CCLASE" IS 'Clase de parametrizaci�n (VF. 1032)';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."SSEGURO" IS 'N�mero secuencial de seguro';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."NINQAVAL" IS 'N�mero de inquilino/avalista';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."TFILENAME" IS 'Nombre del fichero';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."TDESCRIP" IS 'Descripci�n';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."ADJUNTADO" IS 'Indicador de si se ha adjuntado el documento';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA_INQAVAL"."IDDOCGEDOX" IS 'Identificador del GEDOX';
   COMMENT ON TABLE "AXIS"."DOCREQUERIDA_INQAVAL"  IS 'Tabla real de documentaci�n requerida de los inquilinos/avalistas de un contrato';
  GRANT UPDATE ON "AXIS"."DOCREQUERIDA_INQAVAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOCREQUERIDA_INQAVAL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DOCREQUERIDA_INQAVAL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DOCREQUERIDA_INQAVAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOCREQUERIDA_INQAVAL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DOCREQUERIDA_INQAVAL" TO "PROGRAMADORESCSI";