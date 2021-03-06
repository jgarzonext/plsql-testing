--------------------------------------------------------
--  DDL for Table CODPARAM_AGE
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODPARAM_AGE" 
   (	"CPARAM" VARCHAR2(20 BYTE), 
	"TVISIBLE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODPARAM_AGE"."CPARAM" IS 'C�digo del par�metro';
   COMMENT ON COLUMN "AXIS"."CODPARAM_AGE"."TVISIBLE" IS 'Funci�n que dice se se muestra el parametro';
  GRANT UPDATE ON "AXIS"."CODPARAM_AGE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODPARAM_AGE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODPARAM_AGE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODPARAM_AGE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODPARAM_AGE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODPARAM_AGE" TO "PROGRAMADORESCSI";
