--------------------------------------------------------
--  DDL for Table COMARCAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."COMARCAS" 
   (	"CCOMARCAS" NUMBER, 
	"TCOMARCAS" VARCHAR2(30 BYTE), 
	"IDCCAA" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."COMARCAS"."CCOMARCAS" IS 'C�digo de comarca.';
   COMMENT ON COLUMN "AXIS"."COMARCAS"."TCOMARCAS" IS 'Descripci�n de comarcas.';
   COMMENT ON COLUMN "AXIS"."COMARCAS"."IDCCAA" IS 'Identificador comunidad autonoma.';
   COMMENT ON TABLE "AXIS"."COMARCAS"  IS 'Tabla maestra de comarcas.';
  GRANT UPDATE ON "AXIS"."COMARCAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMARCAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COMARCAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."COMARCAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COMARCAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COMARCAS" TO "PROGRAMADORESCSI";
