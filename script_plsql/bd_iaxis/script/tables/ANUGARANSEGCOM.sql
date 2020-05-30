--------------------------------------------------------
--  DDL for Table ANUGARANSEGCOM
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUGARANSEGCOM" 
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
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."SSEGURO" IS 'N�mero Seguro';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."NRIESGO" IS 'N�mero Riesgo';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."CGARANT" IS 'C�digo Garantia';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."NMOVIMI" IS 'N�mero de Movimiento';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."FINIEFE" IS 'Fecha inicio efecto';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."CMODCOM" IS 'C�digo Modo Comisi�n';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."PCOMISI" IS 'Porcentaje Comisi�n';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."NINIALT" IS 'Inicio de altura';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."NFINALT" IS 'Fin de altura';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."PCOMISICUA" IS 'Porcentaje de comisi�n seg�n producto';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."FMODIFI" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."ANUGARANSEGCOM"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON TABLE "AXIS"."ANUGARANSEGCOM"  IS 'Garantias comisi�n';
  GRANT SELECT ON "AXIS"."ANUGARANSEGCOM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUGARANSEGCOM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUGARANSEGCOM" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."ANUGARANSEGCOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUGARANSEGCOM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUGARANSEGCOM" TO "PROGRAMADORESCSI";