--------------------------------------------------------
--  DDL for Table TMP_CONTROLSAN
--------------------------------------------------------

  CREATE TABLE "AXIS"."TMP_CONTROLSAN" 
   (	"SMANCONT" NUMBER(10,0), 
	"CCONTROL" VARCHAR2(4 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TMP_CONTROLSAN"."SMANCONT" IS 'Secuencia smancont';
   COMMENT ON COLUMN "AXIS"."TMP_CONTROLSAN"."CCONTROL" IS 'C�digo de control/validaci�n';
  GRANT UPDATE ON "AXIS"."TMP_CONTROLSAN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_CONTROLSAN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_CONTROLSAN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_CONTROLSAN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_CONTROLSAN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_CONTROLSAN" TO "PROGRAMADORESCSI";
