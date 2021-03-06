--------------------------------------------------------
--  DDL for Table SGT_PARM_FORMULAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."SGT_PARM_FORMULAS" 
   (	"CLAVE" NUMBER(6,0), 
	"PRM_R_AGC" NUMBER(6,0), 
	"CODIGO" VARCHAR2(31 BYTE), 
	"FECHA_EFECTO" DATE, 
	"VALOR" FLOAT(126)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;
  GRANT UPDATE ON "AXIS"."SGT_PARM_FORMULAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SGT_PARM_FORMULAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SGT_PARM_FORMULAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SGT_PARM_FORMULAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SGT_PARM_FORMULAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SGT_PARM_FORMULAS" TO "PROGRAMADORESCSI";
