--------------------------------------------------------
--  DDL for Table FIN_GENERAL_DET
--------------------------------------------------------

  CREATE TABLE "AXIS"."FIN_GENERAL_DET" 
   (	"SFINANCI" NUMBER, 
	"NMOVIMI" NUMBER, 
	"TDESCRIP" VARCHAR2(2000 BYTE), 
	"CFOTORUT" NUMBER, 
	"FRUT" DATE, 
	"TTITULO" VARCHAR2(2000 BYTE), 
	"CFOTOCED" NUMBER, 
	"FEXPICED" DATE, 
	"CPAIS" NUMBER(3,0), 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER, 
	"TINFOAD" VARCHAR2(2000 BYTE), 
	"CCIIU" NUMBER, 
	"CTIPSOCI" NUMBER, 
	"CESTSOC" NUMBER, 
	"TOBJSOC" VARCHAR2(2000 BYTE), 
	"TEXPERI" VARCHAR2(3000 BYTE), 
	"FCONSTI" DATE, 
	"TVIGENC" VARCHAR2(2000 BYTE), 
	"FCCOMER" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."SFINANCI" IS 'C�digo ficha financiera';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."NMOVIMI" IS 'Movimiento de la tabla (FRUT y/o FFCOMER)';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."TDESCRIP" IS 'Descripci�n de la ficha financiera';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."CFOTORUT" IS 'Tiene fotocopia del RUT 0=No, 1=Si';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."FRUT" IS 'Fecha RUT';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."TTITULO" IS 'T�tulo Obtenido';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."CFOTOCED" IS 'Tiene fotocopia de la cedula 0=No, 1=Si';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."FEXPICED" IS 'Fecha de expedici�n de la cedula';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."CPAIS" IS 'Pa�s';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."CPROVIN" IS 'Departamento';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."CPOBLAC" IS 'Municipio';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."TINFOAD" IS 'Informaci�n variada';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."CCIIU" IS 'C�digo CIIU - Actividad econ�mica V.F. 8001072';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."CTIPSOCI" IS 'Tipo Sociedad V.F. 8001073';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."CESTSOC" IS 'Estado de la sociedad V.F. 8001074';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."TOBJSOC" IS 'Objeto social';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."TEXPERI" IS 'Experiencia';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."FCONSTI" IS 'Fecha de constitucion';
   COMMENT ON COLUMN "AXIS"."FIN_GENERAL_DET"."FCCOMER" IS 'Fecha c��mara de comercio';
   COMMENT ON TABLE "AXIS"."FIN_GENERAL_DET"  IS 'Datos generales de la ficha financiera con  los �ltimos datos de la tabla FIN_GENERAL_DET cuando cambien el FRUT o FCCOMER';
  GRANT UPDATE ON "AXIS"."FIN_GENERAL_DET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FIN_GENERAL_DET" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FIN_GENERAL_DET" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FIN_GENERAL_DET" TO "R_AXIS";
