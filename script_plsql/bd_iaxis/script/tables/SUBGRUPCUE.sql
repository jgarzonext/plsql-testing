--------------------------------------------------------
--  DDL for Table SUBGRUPCUE
--------------------------------------------------------

  CREATE TABLE "AXIS"."SUBGRUPCUE" 
   (	"TSUBCUE" VARCHAR2(60 BYTE), 
	"CSUBCUE" NUMBER(5,0), 
	"CIDIOMA" NUMBER(2,0), 
	"CGRPCUE" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SUBGRUPCUE"."TSUBCUE" IS 'descripci�n del subgrupo de cuestionario';
   COMMENT ON COLUMN "AXIS"."SUBGRUPCUE"."CSUBCUE" IS 'codigo de subgrupo de revisiones';
   COMMENT ON COLUMN "AXIS"."SUBGRUPCUE"."CIDIOMA" IS 'C�digo de Idioma';
   COMMENT ON COLUMN "AXIS"."SUBGRUPCUE"."CGRPCUE" IS 'Codigo de grupos de cuestionario';
  GRANT UPDATE ON "AXIS"."SUBGRUPCUE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SUBGRUPCUE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SUBGRUPCUE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SUBGRUPCUE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SUBGRUPCUE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SUBGRUPCUE" TO "PROGRAMADORESCSI";
