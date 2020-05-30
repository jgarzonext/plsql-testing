--------------------------------------------------------
--  DDL for Table SIN_DESTRAMITE
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_DESTRAMITE" 
   (	"CTRAMTE" NUMBER, 
	"CIDIOMA" NUMBER(2,0), 
	"TTRAMITE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_DESTRAMITE"."CTRAMTE" IS 'C�digo Tr�mite';
   COMMENT ON COLUMN "AXIS"."SIN_DESTRAMITE"."CIDIOMA" IS 'C�digo Idioma';
   COMMENT ON COLUMN "AXIS"."SIN_DESTRAMITE"."TTRAMITE" IS 'Descripci�n Tr�mite';
   COMMENT ON TABLE "AXIS"."SIN_DESTRAMITE"  IS 'Descripci�n de Tr�mites';
  GRANT UPDATE ON "AXIS"."SIN_DESTRAMITE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_DESTRAMITE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_DESTRAMITE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_DESTRAMITE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_DESTRAMITE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_DESTRAMITE" TO "PROGRAMADORESCSI";
