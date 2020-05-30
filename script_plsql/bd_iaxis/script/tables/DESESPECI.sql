--------------------------------------------------------
--  DDL for Table DESESPECI
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESESPECI" 
   (	"TESPECI" VARCHAR2(100 BYTE), 
	"CIDIOMA" NUMBER(2,0), 
	"CESPECI" VARCHAR2(4 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESESPECI"."TESPECI" IS 'Descripci�n del tipo de especialidad';
   COMMENT ON COLUMN "AXIS"."DESESPECI"."CIDIOMA" IS 'C�digo de Idioma';
   COMMENT ON COLUMN "AXIS"."DESESPECI"."CESPECI" IS 'Tipus de barem';
  GRANT UPDATE ON "AXIS"."DESESPECI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESESPECI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESESPECI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESESPECI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESESPECI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESESPECI" TO "PROGRAMADORESCSI";