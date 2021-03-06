--------------------------------------------------------
--  DDL for Table PER_IRPF
--------------------------------------------------------

  CREATE TABLE "AXIS"."PER_IRPF" 
   (	"SPERSON" NUMBER(10,0), 
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
	"NANO" NUMBER(4,0), 
	"CAGENTE" NUMBER, 
	"FMOVGEO" DATE, 
	"CPAGO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PER_IRPF"."SPERSON" IS 'C�digo de �nico de persona';
   COMMENT ON COLUMN "AXIS"."PER_IRPF"."CSITFAM" IS 'C�digo situaci�n Familiar. Valor fijo 883';
   COMMENT ON COLUMN "AXIS"."PER_IRPF"."CNIFCON" IS 'Nif conyuge';
   COMMENT ON COLUMN "AXIS"."PER_IRPF"."CGRADO" IS 'Grado minusvalia. Valor fijo 688';
   COMMENT ON COLUMN "AXIS"."PER_IRPF"."CAYUDA" IS 'Como trabajador precisa la ayuda de terceras personas para desplazarse a su lugar de trabajo. ';
   COMMENT ON COLUMN "AXIS"."PER_IRPF"."IPENSION" IS 'Pensi�n compensatoria al conyuge.';
   COMMENT ON COLUMN "AXIS"."PER_IRPF"."IANUHIJOS" IS 'Anualidades de hijos.';
   COMMENT ON COLUMN "AXIS"."PER_IRPF"."CUSUARI" IS 'Usuario alta';
   COMMENT ON COLUMN "AXIS"."PER_IRPF"."FMOVIMI" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."PER_IRPF"."PROLON" IS 'Prolongaci�n de actividad laboral';
   COMMENT ON COLUMN "AXIS"."PER_IRPF"."RMOVGEO" IS 'Reducci�n por movilidad geografica.';
   COMMENT ON COLUMN "AXIS"."PER_IRPF"."NANO" IS 'N�mero de a�o';
   COMMENT ON COLUMN "AXIS"."PER_IRPF"."FMOVGEO" IS 'Fecha de movilidad geografica';
   COMMENT ON COLUMN "AXIS"."PER_IRPF"."CPAGO" IS 'Indica si hay pagos por adquisici�n o rehabilitaci�n de vivienda 0-No 1-Si';
  GRANT UPDATE ON "AXIS"."PER_IRPF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PER_IRPF" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PER_IRPF" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PER_IRPF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PER_IRPF" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PER_IRPF" TO "PROGRAMADORESCSI";
