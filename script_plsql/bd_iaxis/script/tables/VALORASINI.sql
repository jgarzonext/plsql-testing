--------------------------------------------------------
--  DDL for Table VALORASINI
--------------------------------------------------------

  CREATE TABLE "AXIS"."VALORASINI" 
   (	"NSINIES" NUMBER(8,0), 
	"CGARANT" NUMBER(4,0), 
	"FVALORA" DATE, 
	"IVALORA" NUMBER, 
	"FPERINI" DATE, 
	"FPERFIN" DATE, 
	"CUSUALT" VARCHAR2(30 BYTE) DEFAULT 'Albor', 
	"FALTA" DATE DEFAULT sysdate, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"ICAPRISC" NUMBER, 
	"IPENALI" NUMBER, 
	"FULTPAG" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."VALORASINI"."NSINIES" IS 'N�mero de siniestro';
   COMMENT ON COLUMN "AXIS"."VALORASINI"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."VALORASINI"."FVALORA" IS 'Fecha de la valoraci�n';
   COMMENT ON COLUMN "AXIS"."VALORASINI"."IVALORA" IS 'Importe valoraci�n';
   COMMENT ON COLUMN "AXIS"."VALORASINI"."FPERINI" IS 'Fecha Inicio Pago';
   COMMENT ON COLUMN "AXIS"."VALORASINI"."FPERFIN" IS 'Fecha Fin Pago';
   COMMENT ON COLUMN "AXIS"."VALORASINI"."ICAPRISC" IS 'Capital de Riesgo';
   COMMENT ON COLUMN "AXIS"."VALORASINI"."IPENALI" IS 'Imp. Penalizaci�n';
   COMMENT ON COLUMN "AXIS"."VALORASINI"."FULTPAG" IS 'Fecha �ltimo pago';
  GRANT UPDATE ON "AXIS"."VALORASINI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VALORASINI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VALORASINI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VALORASINI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VALORASINI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VALORASINI" TO "PROGRAMADORESCSI";
