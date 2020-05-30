--------------------------------------------------------
--  DDL for Table ESTINTERTECSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTINTERTECSEG" 
   (	"SSEGURO" NUMBER, 
	"FEFEMOV" DATE, 
	"NMOVIMI" NUMBER(4,0), 
	"FMOVDIA" DATE, 
	"PINTTEC" NUMBER(7,2), 
	"NDESDE" NUMBER DEFAULT 0, 
	"NHASTA" NUMBER DEFAULT 0, 
	"NINNTEC" NUMBER(12,8)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTINTERTECSEG"."SSEGURO" IS 'Identificador del seguro';
   COMMENT ON COLUMN "AXIS"."ESTINTERTECSEG"."FEFEMOV" IS 'Fecha efecto de movimiento. Es la fecha que se utilizar� para averiguar el inter�s';
   COMMENT ON COLUMN "AXIS"."ESTINTERTECSEG"."NMOVIMI" IS 'N�mero de Movimiento de la P�liza (alta o renovaci�n)';
   COMMENT ON COLUMN "AXIS"."ESTINTERTECSEG"."FMOVDIA" IS 'Fecha d�a que se hace el movimiento';
   COMMENT ON COLUMN "AXIS"."ESTINTERTECSEG"."PINTTEC" IS 'Porcentaje de inter�s t�cnico';
   COMMENT ON COLUMN "AXIS"."ESTINTERTECSEG"."NINNTEC" IS 'Porcentaje de inter�s parametrizado en el momento de la inserci�n';
   COMMENT ON TABLE "AXIS"."ESTINTERTECSEG"  IS 'Inter�s T�nico asociado a la P�liza. Se graba cada movimiento en el cual se asigna inter�s (alta y renovaci�n)';
  GRANT UPDATE ON "AXIS"."ESTINTERTECSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTINTERTECSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTINTERTECSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTINTERTECSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTINTERTECSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTINTERTECSEG" TO "PROGRAMADORESCSI";