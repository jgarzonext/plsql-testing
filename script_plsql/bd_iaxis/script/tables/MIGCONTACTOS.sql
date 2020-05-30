--------------------------------------------------------
--  DDL for Table MIGCONTACTOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIGCONTACTOS" 
   (	"SISTEMA" VARCHAR2(2 BYTE), 
	"CODI_AUXILIAR" VARCHAR2(2 BYTE), 
	"CODI_ORIGEN" VARCHAR2(15 BYTE), 
	"PRODUCTE" VARCHAR2(4 BYTE), 
	"APLICA" NUMBER(4,0), 
	"DESCRIPCION" VARCHAR2(40 BYTE), 
	"TELEFONO" VARCHAR2(30 BYTE), 
	"SPERSON" NUMBER(10,0), 
	"CMODCON" NUMBER, 
	"CTIPCON" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT INSERT ON "AXIS"."MIGCONTACTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIGCONTACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIGCONTACTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIGCONTACTOS" TO "PROGRAMADORESCSI";
  GRANT UPDATE ON "AXIS"."MIGCONTACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIGCONTACTOS" TO "R_AXIS";