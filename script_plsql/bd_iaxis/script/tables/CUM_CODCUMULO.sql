--------------------------------------------------------
--  DDL for Table CUM_CODCUMULO
--------------------------------------------------------

  CREATE TABLE "AXIS"."CUM_CODCUMULO" 
   (	"CCUMULO" NUMBER(6,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TCUMULO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CUM_CODCUMULO"."CCUMULO" IS 'Clave del C�mulo';
   COMMENT ON COLUMN "AXIS"."CUM_CODCUMULO"."CIDIOMA" IS 'C�digo de idioma';
   COMMENT ON COLUMN "AXIS"."CUM_CODCUMULO"."TCUMULO" IS 'Descripci�n del c�mulo';
   COMMENT ON TABLE "AXIS"."CUM_CODCUMULO"  IS 'C�digo del C�mulo de Riesgo';
  GRANT UPDATE ON "AXIS"."CUM_CODCUMULO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUM_CODCUMULO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CUM_CODCUMULO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CUM_CODCUMULO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUM_CODCUMULO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CUM_CODCUMULO" TO "PROGRAMADORESCSI";
