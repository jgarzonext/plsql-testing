--------------------------------------------------------
--  DDL for Table CNVPOLIZAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CNVPOLIZAS" 
   (	"SISTEMA" VARCHAR2(2 BYTE), 
	"POLISSA_INI" VARCHAR2(15 BYTE), 
	"PRODUCTE" VARCHAR2(6 BYTE), 
	"APLICA" NUMBER(5,0), 
	"RAM" NUMBER(8,0), 
	"MODA" NUMBER(2,0), 
	"NPOLIZA" NUMBER, 
	"SSEGURO" NUMBER, 
	"ACTIVITAT" VARCHAR2(6 BYTE), 
	"TIPO" NUMBER(2,0), 
	"COLE" NUMBER(2,0), 
	"CDESCUADRE" NUMBER(1,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CNVPOLIZAS"."CDESCUADRE" IS 'Flag para saber si la p�liza se migra con descuadre de aportaciones 0.- No, 1.- S�';
  GRANT UPDATE ON "AXIS"."CNVPOLIZAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CNVPOLIZAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CNVPOLIZAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CNVPOLIZAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CNVPOLIZAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CNVPOLIZAS" TO "PROGRAMADORESCSI";
