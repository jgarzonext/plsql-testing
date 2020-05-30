--------------------------------------------------------
--  DDL for Table GARANSEGCOM
--------------------------------------------------------

  CREATE TABLE "AXIS"."GARANSEGCOM" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
	"FINIEFE" DATE, 
	"CMODCOM" NUMBER(1,0), 
	"PCOMISI" NUMBER(5,2), 
	"NINIALT" NUMBER, 
	"NFINALT" NUMBER, 
	"PCOMISICUA" NUMBER(5,2), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE), 
	"IPRICOM" NUMBER, 
	"CAGEVEN" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."SSEGURO" IS 'N�mero Seguro';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."NRIESGO" IS 'N�mero Riesgo';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."CGARANT" IS 'C�digo Garantia';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."NMOVIMI" IS 'N�mero de Movimiento';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."FINIEFE" IS 'Fecha inicio efecto';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."CMODCOM" IS 'C�digo Modo Comisi�n';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."PCOMISI" IS 'Porcentaje Comisi�n';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."NINIALT" IS 'Inicio de altura';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."NFINALT" IS 'Fin de altura';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."PCOMISICUA" IS 'Porcentaje de comisi�n seg�n producto';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."FMODIFI" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."IPRICOM" IS 'Importe sobre el que se ha de calcular la comisi�n';
   COMMENT ON COLUMN "AXIS"."GARANSEGCOM"."CAGEVEN" IS 'Agente que recibe la comisi�n';
   COMMENT ON TABLE "AXIS"."GARANSEGCOM"  IS 'Garantias comisi�n';
  GRANT UPDATE ON "AXIS"."GARANSEGCOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANSEGCOM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GARANSEGCOM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."GARANSEGCOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANSEGCOM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GARANSEGCOM" TO "PROGRAMADORESCSI";