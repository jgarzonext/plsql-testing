--------------------------------------------------------
--  DDL for Table TPR_FORM
--------------------------------------------------------

  CREATE TABLE "AXIS"."TPR_FORM" 
   (	"CAGRUPA" NUMBER(4,0), 
	"NFORM" NUMBER(6,0), 
	"TFORM" VARCHAR2(40 BYTE), 
	"SLITERA" NUMBER(6,0), 
	"CINCOMPA" NUMBER(4,0), 
	"CTIPO" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TPR_FORM"."CAGRUPA" IS 'C�digo agrupaci�n';
   COMMENT ON COLUMN "AXIS"."TPR_FORM"."NFORM" IS 'N� correlativo de formulario';
   COMMENT ON COLUMN "AXIS"."TPR_FORM"."TFORM" IS 'Nombre del formulario';
   COMMENT ON COLUMN "AXIS"."TPR_FORM"."SLITERA" IS 'N�mero literal asignado al formulario';
   COMMENT ON COLUMN "AXIS"."TPR_FORM"."CINCOMPA" IS 'C�digo agrupaci�n incompatible con esta';
   COMMENT ON COLUMN "AXIS"."TPR_FORM"."CTIPO" IS 'Tipo de agrupaci�n al que pertenece. V.F. 800008';
   COMMENT ON TABLE "AXIS"."TPR_FORM"  IS 'Tipo de agrupaci�n al que pertenece. V.F. 800008';
  GRANT UPDATE ON "AXIS"."TPR_FORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TPR_FORM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TPR_FORM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TPR_FORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TPR_FORM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TPR_FORM" TO "PROGRAMADORESCSI";
