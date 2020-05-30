--------------------------------------------------------
--  DDL for Table ESTEXCLUGARSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTEXCLUGARSEG" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"NMOVIMA" NUMBER(6,0), 
	"NMOVIMB" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTEXCLUGARSEG"."SSEGURO" IS 'N�mero de Seguro';
   COMMENT ON COLUMN "AXIS"."ESTEXCLUGARSEG"."NRIESGO" IS 'N�mero de Riesgo';
   COMMENT ON COLUMN "AXIS"."ESTEXCLUGARSEG"."CGARANT" IS 'C�digo Garantia';
   COMMENT ON COLUMN "AXIS"."ESTEXCLUGARSEG"."NMOVIMA" IS 'N�mero de movimiento que se da de alta la exlusi�n';
   COMMENT ON COLUMN "AXIS"."ESTEXCLUGARSEG"."NMOVIMB" IS 'N�mero de movimiento de baja de la estexclusion';
   COMMENT ON TABLE "AXIS"."ESTEXCLUGARSEG"  IS 'Garant�a estexclu�das en una p�liza';
  GRANT UPDATE ON "AXIS"."ESTEXCLUGARSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTEXCLUGARSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTEXCLUGARSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTEXCLUGARSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTEXCLUGARSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTEXCLUGARSEG" TO "PROGRAMADORESCSI";
