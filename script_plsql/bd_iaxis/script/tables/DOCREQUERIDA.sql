--------------------------------------------------------
--  DDL for Table DOCREQUERIDA
--------------------------------------------------------

  CREATE TABLE "AXIS"."DOCREQUERIDA" 
   (	"SEQDOCU" NUMBER(10,0), 
	"CDOCUME" NUMBER(6,0), 
	"SPRODUC" NUMBER(6,0), 
	"CACTIVI" NUMBER(4,0), 
	"NORDEN" NUMBER(3,0), 
	"CTIPDOC" NUMBER(3,0), 
	"CCLASE" NUMBER(3,0), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"TFILENAME" VARCHAR2(200 BYTE), 
	"TDESCRIP" VARCHAR2(1000 BYTE), 
	"ADJUNTADO" NUMBER(1,0) DEFAULT 1, 
	"IDDOCGEDOX" NUMBER(8,0), 
	"CRECIBIDO" NUMBER, 
	"FRECIBIDO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA"."SEQDOCU" IS 'N�mero secuencial de documento';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA"."CDOCUME" IS 'C�digo de documento';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA"."SPRODUC" IS 'C�digo de producto';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA"."CACTIVI" IS 'C�digo de actividad';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA"."NORDEN" IS 'N�mero de orden';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA"."CTIPDOC" IS 'Tipo de documento (VF. 1031)';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA"."CCLASE" IS 'Clase de parametrizaci�n (VF. 1032)';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA"."SSEGURO" IS 'N�mero secuencial de seguro';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA"."TFILENAME" IS 'Nombre del fichero';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA"."TDESCRIP" IS 'Descripci�n';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA"."ADJUNTADO" IS 'Indicador de si se ha adjuntado el documento';
   COMMENT ON COLUMN "AXIS"."DOCREQUERIDA"."IDDOCGEDOX" IS 'Identificador del GEDOX';
   COMMENT ON TABLE "AXIS"."DOCREQUERIDA"  IS 'Tabla real de documentaci�n requerida de un contrato';
  GRANT SELECT ON "AXIS"."DOCREQUERIDA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DOCREQUERIDA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DOCREQUERIDA" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."DOCREQUERIDA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOCREQUERIDA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DOCREQUERIDA" TO "PROGRAMADORESCSI";
