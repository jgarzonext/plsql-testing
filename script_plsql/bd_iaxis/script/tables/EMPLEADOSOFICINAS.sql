--------------------------------------------------------
--  DDL for Table EMPLEADOSOFICINAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."EMPLEADOSOFICINAS" 
   (	"SPERSON" NUMBER(10,0), 
	"CBANCO" NUMBER(4,0), 
	"COFICIN" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."EMPLEADOSOFICINAS"."SPERSON" IS 'Sperson del Empleado.';
   COMMENT ON COLUMN "AXIS"."EMPLEADOSOFICINAS"."CBANCO" IS 'C�digo de Banco.';
   COMMENT ON COLUMN "AXIS"."EMPLEADOSOFICINAS"."COFICIN" IS 'C�digo de la oficina del empleado.';
   COMMENT ON TABLE "AXIS"."EMPLEADOSOFICINAS"  IS 'Oficinas a las que pertenecen los empleados.';
  GRANT UPDATE ON "AXIS"."EMPLEADOSOFICINAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EMPLEADOSOFICINAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EMPLEADOSOFICINAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EMPLEADOSOFICINAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EMPLEADOSOFICINAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EMPLEADOSOFICINAS" TO "PROGRAMADORESCSI";
