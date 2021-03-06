--------------------------------------------------------
--  DDL for Table TPR_DESFORM
--------------------------------------------------------

  CREATE TABLE "AXIS"."TPR_DESFORM" 
   (	"CAGRUPA" NUMBER(4,0), 
	"NFORM" NUMBER(6,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TDESCRIP" VARCHAR2(200 BYTE), 
	"CTIPO" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TPR_DESFORM"."CAGRUPA" IS 'C�digo agrupaci�n';
   COMMENT ON COLUMN "AXIS"."TPR_DESFORM"."NFORM" IS 'N� correlativo de formulario';
   COMMENT ON COLUMN "AXIS"."TPR_DESFORM"."CIDIOMA" IS 'C�digo idioma descripci�n';
   COMMENT ON COLUMN "AXIS"."TPR_DESFORM"."TDESCRIP" IS 'Descripci�n del formulario en funci�n de la agrupaci�n';
   COMMENT ON COLUMN "AXIS"."TPR_DESFORM"."CTIPO" IS 'Tipo de agrupaci�n al que pertenece. V.F. 800008';
   COMMENT ON TABLE "AXIS"."TPR_DESFORM"  IS 'Tipo de agrupaci�n al que pertenece. V.F. 800008';
  GRANT UPDATE ON "AXIS"."TPR_DESFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TPR_DESFORM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TPR_DESFORM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TPR_DESFORM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TPR_DESFORM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TPR_DESFORM" TO "PROGRAMADORESCSI";
