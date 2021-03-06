--------------------------------------------------------
--  DDL for Table REPOSICIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."REPOSICIONES" 
   (	"CCODIGO" NUMBER(5,0), 
	"CIDIOMA" NUMBER(3,0), 
	"TDESCRIPCION" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."REPOSICIONES"."CCODIGO" IS 'C�digo de reposici�n';
   COMMENT ON COLUMN "AXIS"."REPOSICIONES"."CIDIOMA" IS 'Idioma';
   COMMENT ON COLUMN "AXIS"."REPOSICIONES"."TDESCRIPCION" IS 'Descripci�n';
   COMMENT ON TABLE "AXIS"."REPOSICIONES"  IS 'Descripci�n multiidioma identificador de reposici�n';
  GRANT UPDATE ON "AXIS"."REPOSICIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REPOSICIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."REPOSICIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."REPOSICIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REPOSICIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."REPOSICIONES" TO "PROGRAMADORESCSI";
