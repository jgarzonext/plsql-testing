--------------------------------------------------------
--  DDL for Table DESESPECIALIDADES
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESESPECIALIDADES" 
   (	"CESPE" VARCHAR2(3 BYTE), 
	"CIDIOMA" NUMBER(2,0), 
	"TESPE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESESPECIALIDADES"."CESPE" IS 'C�digo de especialidad';
   COMMENT ON COLUMN "AXIS"."DESESPECIALIDADES"."CIDIOMA" IS 'C�digo de idioma';
   COMMENT ON COLUMN "AXIS"."DESESPECIALIDADES"."TESPE" IS 'Descripci�n';
  GRANT UPDATE ON "AXIS"."DESESPECIALIDADES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESESPECIALIDADES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESESPECIALIDADES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESESPECIALIDADES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESESPECIALIDADES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESESPECIALIDADES" TO "PROGRAMADORESCSI";
