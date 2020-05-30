--------------------------------------------------------
--  DDL for Table HISPER_IRPFMAYORES
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISPER_IRPFMAYORES" 
   (	"FUSUMOD" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"NORDEN" NUMBER, 
	"SPERSON" NUMBER(10,0), 
	"FNACIMI" DATE, 
	"CGRADO" NUMBER(1,0), 
	"CRENTA" VARCHAR2(1 BYTE), 
	"NVIVEN" NUMBER(1,0), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" VARCHAR2(20 BYTE), 
	"NANO" NUMBER(4,0), 
	"CAGENTE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISPER_IRPFMAYORES"."NORDEN" IS 'N�mero de orden de los descendientes ';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPFMAYORES"."SPERSON" IS 'Identificador �nico de personas';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPFMAYORES"."FNACIMI" IS 'Fecha de nacimiento';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPFMAYORES"."CGRADO" IS 'Grado minusvalia. Valor fijo = 688';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPFMAYORES"."CRENTA" IS 'Nivel de Renta';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPFMAYORES"."NVIVEN" IS 'Otros descendientes que vivan';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPFMAYORES"."CUSUARI" IS 'Usuario que realiza la alta';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPFMAYORES"."FMOVIMI" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPFMAYORES"."NANO" IS 'N�mero de a�o';
  GRANT UPDATE ON "AXIS"."HISPER_IRPFMAYORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPER_IRPFMAYORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISPER_IRPFMAYORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISPER_IRPFMAYORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPER_IRPFMAYORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISPER_IRPFMAYORES" TO "PROGRAMADORESCSI";