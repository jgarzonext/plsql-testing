--------------------------------------------------------
--  DDL for Table ESTGARANSEGCOM
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTGARANSEGCOM" 
   (	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER(4,0), 
	"NMOVIMI" NUMBER(4,0), 
	"FINIEFE" DATE, 
	"CMODCOM" NUMBER(1,0), 
	"PCOMISI" NUMBER(5,2), 
	"CMATCH" NUMBER(1,0), 
	"TDESMAT" VARCHAR2(75 BYTE), 
	"PINTFIN" NUMBER(5,2), 
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

   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."SSEGURO" IS 'N�mero Seguro';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."NRIESGO" IS 'N�mero Riesgo';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."CGARANT" IS 'C�digo Garantia';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."NMOVIMI" IS 'N�mero de Movimiento';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."FINIEFE" IS 'Fecha inicio efecto';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."CMODCOM" IS 'C�digo Modo Comisi�n';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."PCOMISI" IS 'Porcentaje Comisi�n';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."CMATCH" IS 'Indicador de si se permite maching';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."TDESMAT" IS 'Descripci�n de la inversi�n';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."PINTFIN" IS 'Porcentaje de Inter�s Financiero de la Inversi�n';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."NINIALT" IS 'Inicio de altura';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."NFINALT" IS 'Fin de altura';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."PCOMISICUA" IS 'Porcentaje de comisi�n seg�n producto';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."FMODIFI" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."IPRICOM" IS 'Importe sobre el que se ha de calcular la comisi�n';
   COMMENT ON COLUMN "AXIS"."ESTGARANSEGCOM"."CAGEVEN" IS 'Agente que recibe la comisi�n';
   COMMENT ON TABLE "AXIS"."ESTGARANSEGCOM"  IS 'Garantias comisi�n';
  GRANT UPDATE ON "AXIS"."ESTGARANSEGCOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTGARANSEGCOM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTGARANSEGCOM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTGARANSEGCOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTGARANSEGCOM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTGARANSEGCOM" TO "PROGRAMADORESCSI";