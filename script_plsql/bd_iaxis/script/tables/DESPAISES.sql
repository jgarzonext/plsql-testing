--------------------------------------------------------
--  DDL for Table DESPAISES
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESPAISES" 
   (	"CPAIS" NUMBER(3,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TPAIS" VARCHAR2(100 BYTE), 
	"TNACION" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESPAISES"."CPAIS" IS 'CODIGO DEL PAIS';
   COMMENT ON COLUMN "AXIS"."DESPAISES"."CIDIOMA" IS 'CODIGO DEL IDIOMA';
   COMMENT ON COLUMN "AXIS"."DESPAISES"."TPAIS" IS 'NOMBRE DEL PAIS';
   COMMENT ON TABLE "AXIS"."DESPAISES"  IS 'TABLA MULTIDIOMA CON LOS NOMBRES DE LOS PAISES';
  GRANT UPDATE ON "AXIS"."DESPAISES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESPAISES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESPAISES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESPAISES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESPAISES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESPAISES" TO "PROGRAMADORESCSI";
