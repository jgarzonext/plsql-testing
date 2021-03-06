--------------------------------------------------------
--  DDL for Table TMP_LOCK
--------------------------------------------------------

  CREATE TABLE "AXIS"."TMP_LOCK" 
   (	"ID_LOCK" VARCHAR2(50 BYTE), 
	"FINILOCK" DATE, 
	"CUSER" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."TMP_LOCK"."ID_LOCK" IS 'Identificador del elemento a bloquear';
   COMMENT ON COLUMN "AXIS"."TMP_LOCK"."FINILOCK" IS 'Fecha del inicio del bloqueo';
   COMMENT ON COLUMN "AXIS"."TMP_LOCK"."CUSER" IS 'Usuario que realiza el bloqueo';
   COMMENT ON TABLE "AXIS"."TMP_LOCK"  IS 'Tabla para el control de elementos de la base de datos,contratos, seguros..';
  GRANT UPDATE ON "AXIS"."TMP_LOCK" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_LOCK" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."TMP_LOCK" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."TMP_LOCK" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."TMP_LOCK" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."TMP_LOCK" TO "PROGRAMADORESCSI";
