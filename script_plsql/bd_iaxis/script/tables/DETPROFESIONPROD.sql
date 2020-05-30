--------------------------------------------------------
--  DDL for Table DETPROFESIONPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."DETPROFESIONPROD" 
   (	"CPROFES" NUMBER(6,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TPROFES" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DETPROFESIONPROD"."CPROFES" IS 'C�digo de profesi�n por producto';
   COMMENT ON COLUMN "AXIS"."DETPROFESIONPROD"."CIDIOMA" IS 'C�digo de Idioma';
   COMMENT ON COLUMN "AXIS"."DETPROFESIONPROD"."TPROFES" IS 'Descripci�n de profesi�n por producto';
   COMMENT ON TABLE "AXIS"."DETPROFESIONPROD"  IS 'Detalle de profesi�n por producto';
  GRANT UPDATE ON "AXIS"."DETPROFESIONPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETPROFESIONPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DETPROFESIONPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DETPROFESIONPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETPROFESIONPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DETPROFESIONPROD" TO "PROGRAMADORESCSI";
