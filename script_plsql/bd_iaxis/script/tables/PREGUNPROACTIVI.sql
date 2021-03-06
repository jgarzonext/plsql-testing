--------------------------------------------------------
--  DDL for Table PREGUNPROACTIVI
--------------------------------------------------------

  CREATE TABLE "AXIS"."PREGUNPROACTIVI" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CACTIVI" NUMBER(4,0), 
	"CPREGUN" NUMBER(4,0), 
	"SPRODUC" NUMBER(6,0), 
	"CPRETIP" NUMBER(2,0), 
	"NPREORD" NUMBER(3,0), 
	"TPREFOR" VARCHAR2(100 BYTE), 
	"CPREOBL" NUMBER(2,0), 
	"NPREIMP" NUMBER(3,0), 
	"CRESDEF" NUMBER(6,0), 
	"COFERSN" NUMBER(1,0), 
	"TVALFOR" VARCHAR2(100 BYTE), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."CRAMO" IS 'C�digo ramo';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."CMODALI" IS 'C�digo modalidad';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."CTIPSEG" IS 'C�digo tipo de seguro';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."CACTIVI" IS 'C�digo tipo de Actividad';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."SPRODUC" IS 'Identificador del producto';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."CPRETIP" IS 'Respuesta manual, autom�tica,...';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."NPREORD" IS 'Orden para preguntarla';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."TPREFOR" IS 'F�rmula para c�lculo respuesta';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."CPREOBL" IS 'Si es obligatoria u opcional';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."NPREIMP" IS 'Orden de impresi�n (s�lo imprimirla si tiene)';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."CRESDEF" IS 'Respuesta por defecto';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."COFERSN" IS 'Aparece en Ofertas: 0-No 1-Si';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."TVALFOR" IS 'F�RMULA PARA VALIDACI�N RESPUESTA';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."PREGUNPROACTIVI"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."PREGUNPROACTIVI"  IS 'Preguntas por Actividad';
  GRANT UPDATE ON "AXIS"."PREGUNPROACTIVI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNPROACTIVI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PREGUNPROACTIVI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PREGUNPROACTIVI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNPROACTIVI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PREGUNPROACTIVI" TO "PROGRAMADORESCSI";
