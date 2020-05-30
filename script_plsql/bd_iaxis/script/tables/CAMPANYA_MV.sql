--------------------------------------------------------
--  DDL for Table CAMPANYA_MV
--------------------------------------------------------

  CREATE TABLE "AXIS"."CAMPANYA_MV" 
   (	"CPROMOC" NUMBER(4,0), 
	"FCALCUL" DATE, 
	"SSEGURO" NUMBER, 
	"NPOLIZA" NUMBER, 
	"NEMPLEADO" NUMBER(6,0), 
	"COFICINA" NUMBER(6,0), 
	"SPRODUC" NUMBER(6,0), 
	"PTOSPROD" NUMBER(3,0), 
	"IMPORTE" NUMBER, 
	"FACTOR" NUMBER(3,2), 
	"PTOSTOTAL" NUMBER(4,2), 
	"BASICO" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CAMPANYA_MV"."CPROMOC" IS 'C�digo de la promoci�n';
   COMMENT ON COLUMN "AXIS"."CAMPANYA_MV"."FCALCUL" IS 'Fecha de c�lculo del registro';
   COMMENT ON COLUMN "AXIS"."CAMPANYA_MV"."SSEGURO" IS 'Ident. del seguro';
   COMMENT ON COLUMN "AXIS"."CAMPANYA_MV"."NPOLIZA" IS 'N� de la p�liza';
   COMMENT ON COLUMN "AXIS"."CAMPANYA_MV"."NEMPLEADO" IS 'Ident. del empleado';
   COMMENT ON COLUMN "AXIS"."CAMPANYA_MV"."COFICINA" IS 'C�digo de la oficina';
   COMMENT ON COLUMN "AXIS"."CAMPANYA_MV"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."CAMPANYA_MV"."PTOSPROD" IS 'Puntos por el producto';
   COMMENT ON COLUMN "AXIS"."CAMPANYA_MV"."IMPORTE" IS 'Importe';
   COMMENT ON COLUMN "AXIS"."CAMPANYA_MV"."FACTOR" IS 'Factor aplicado';
   COMMENT ON COLUMN "AXIS"."CAMPANYA_MV"."PTOSTOTAL" IS 'Puntos total';
   COMMENT ON COLUMN "AXIS"."CAMPANYA_MV"."BASICO" IS 'Indica si el seguro es completo o basico';
   COMMENT ON TABLE "AXIS"."CAMPANYA_MV"  IS 'Informaci�n para la campa�a de March Vida';
  GRANT UPDATE ON "AXIS"."CAMPANYA_MV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CAMPANYA_MV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CAMPANYA_MV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CAMPANYA_MV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CAMPANYA_MV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CAMPANYA_MV" TO "PROGRAMADORESCSI";
