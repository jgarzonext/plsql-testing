--------------------------------------------------------
--  DDL for Table HISPER_IRPF
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISPER_IRPF" 
   (	"FUSUMOD" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"NORDEN" NUMBER, 
	"SPERSON" NUMBER(10,0), 
	"CSITFAM" NUMBER(1,0), 
	"CNIFCON" VARCHAR2(10 BYTE), 
	"CGRADO" NUMBER(1,0), 
	"CAYUDA" NUMBER(1,0), 
	"IPENSION" NUMBER(25,10), 
	"IANUHIJOS" NUMBER, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" VARCHAR2(20 BYTE), 
	"PROLON" NUMBER(2,0), 
	"RMOVGEO" NUMBER(2,0), 
	"IGASTOCONV" NUMBER, 
	"ITOTALRENTA" NUMBER, 
	"IRENDTRAB" NUMBER, 
	"PAPLICABLE" NUMBER, 
	"IEXENTO" NUMBER, 
	"NANO" NUMBER(4,0), 
	"CAGENTE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."FUSUMOD" IS 'Fecha modificaci�n';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."NORDEN" IS 'N�mero de orden del hist�rico';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."SPERSON" IS 'C�digo de �nico de persona';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."CSITFAM" IS 'C�digo situaci�n Familiar. Valor fijo 883';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."CNIFCON" IS 'Nif conyuge';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."CGRADO" IS 'Grado minusvalia. Valor fijo 688';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."CAYUDA" IS 'Como trabajador precisa la ayuda de terceras personas para desplazarse a su lugar de trabajo. ';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."IPENSION" IS 'Pensi�n compensatoria al conyuge.';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."IANUHIJOS" IS 'Anualidades de hijos.';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."CUSUARI" IS 'Usuario alta';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."FMOVIMI" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."PROLON" IS 'Prolongaci�n de actividad laboral';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."RMOVGEO" IS 'Reducci�n por movilidad geografica.';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."IGASTOCONV" IS 'Importe gastos convenio especial';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."ITOTALRENTA" IS 'Importe total rentas del a�o';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."IRENDTRAB" IS 'Importe rendimiento trabajo';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."PAPLICABLE" IS '% aplicable';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."IEXENTO" IS 'Exento';
   COMMENT ON COLUMN "AXIS"."HISPER_IRPF"."NANO" IS 'N�mero de a�o';
  GRANT UPDATE ON "AXIS"."HISPER_IRPF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPER_IRPF" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISPER_IRPF" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISPER_IRPF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPER_IRPF" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISPER_IRPF" TO "PROGRAMADORESCSI";
