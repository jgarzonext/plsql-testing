--------------------------------------------------------
--  DDL for Table LOG_UPDATE
--------------------------------------------------------

  CREATE TABLE "AXIS"."LOG_UPDATE" 
   (	"TIDENTIF" VARCHAR2(25 BYTE), 
	"CIDENTIF" VARCHAR2(15 BYTE), 
	"CPATCH" VARCHAR2(10 BYTE), 
	"FMOVDIA" DATE, 
	"TTABLA" VARCHAR2(25 BYTE), 
	"TCAMPO" VARCHAR2(30 BYTE), 
	"CVALANT" VARCHAR2(256 BYTE), 
	"CVALNOU" VARCHAR2(256 BYTE), 
	"TVALORES" LONG
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."LOG_UPDATE"."TIDENTIF" IS 'Tipo de Identificador (sperson, sseguro, nrecibo, ...)';
   COMMENT ON COLUMN "AXIS"."LOG_UPDATE"."CIDENTIF" IS 'Valor del indentificador';
   COMMENT ON COLUMN "AXIS"."LOG_UPDATE"."CPATCH" IS 'Patch en el que se realiza la actualización';
   COMMENT ON COLUMN "AXIS"."LOG_UPDATE"."FMOVDIA" IS 'Fecha en la que se realiza la actualización';
   COMMENT ON COLUMN "AXIS"."LOG_UPDATE"."TTABLA" IS 'Tabla en la que se realiza la actualización';
   COMMENT ON COLUMN "AXIS"."LOG_UPDATE"."TCAMPO" IS 'Campo que se actualiza';
   COMMENT ON COLUMN "AXIS"."LOG_UPDATE"."CVALANT" IS 'Valor que tenía el campo antes de la actualización';
   COMMENT ON COLUMN "AXIS"."LOG_UPDATE"."CVALNOU" IS 'Valor que tiene el campo después de la actualización';
   COMMENT ON COLUMN "AXIS"."LOG_UPDATE"."TVALORES" IS 'Otros valores del momento de la actualización';
   COMMENT ON TABLE "AXIS"."LOG_UPDATE"  IS 'En esta tabla se guardaran los valores anteriores y actuales de las actualizaciones';
  GRANT UPDATE ON "AXIS"."LOG_UPDATE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LOG_UPDATE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LOG_UPDATE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LOG_UPDATE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LOG_UPDATE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LOG_UPDATE" TO "PROGRAMADORESCSI";
