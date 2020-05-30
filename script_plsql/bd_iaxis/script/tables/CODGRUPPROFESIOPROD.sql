--------------------------------------------------------
--  DDL for Table CODGRUPPROFESIOPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODGRUPPROFESIOPROD" 
   (	"CGRUPPRO" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODGRUPPROFESIOPROD"."CGRUPPRO" IS 'C�digo de grupo de profesi�n';
   COMMENT ON TABLE "AXIS"."CODGRUPPROFESIOPROD"  IS 'C�digo de grupo de profesiones por producto';
  GRANT UPDATE ON "AXIS"."CODGRUPPROFESIOPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODGRUPPROFESIOPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODGRUPPROFESIOPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODGRUPPROFESIOPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODGRUPPROFESIOPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODGRUPPROFESIOPROD" TO "PROGRAMADORESCSI";