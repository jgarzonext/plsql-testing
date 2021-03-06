--------------------------------------------------------
--  DDL for Table INFORMES_ERR
--------------------------------------------------------

  CREATE TABLE "AXIS"."INFORMES_ERR" 
   (	"ERROR" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS"  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "AXIS"."INFORMES_ERR"."ERROR" IS 'Error generado';
   COMMENT ON TABLE "AXIS"."INFORMES_ERR"  IS 'Errores en la generación de informes';
  GRANT UPDATE ON "AXIS"."INFORMES_ERR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INFORMES_ERR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INFORMES_ERR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INFORMES_ERR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INFORMES_ERR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INFORMES_ERR" TO "PROGRAMADORESCSI";
