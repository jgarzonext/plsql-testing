--------------------------------------------------------
--  DDL for Table MIG_VALORASINI
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_VALORASINI" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NSINIES" NUMBER(8,0), 
	"CGARANT" NUMBER(4,0), 
	"FVALORA" DATE, 
	"IVALORA" NUMBER, 
	"FPERINI" DATE, 
	"FPERFIN" DATE, 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
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

   COMMENT ON COLUMN "AXIS"."MIG_VALORASINI"."NCARGA" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_VALORASINI"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_VALORASINI"."MIG_PK" IS 'Clave �nica de MIG_VALORASINI';
   COMMENT ON COLUMN "AXIS"."MIG_VALORASINI"."MIG_FK" IS 'Clave externa para el siniestro (MIG_SINIESTROS)';
   COMMENT ON COLUMN "AXIS"."MIG_VALORASINI"."NSINIES" IS 'N�mero de siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_VALORASINI"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."MIG_VALORASINI"."FVALORA" IS 'Fecha de la valoraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_VALORASINI"."IVALORA" IS 'Importe valoraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_VALORASINI"."FPERINI" IS 'Fecha Inicio Pago';
   COMMENT ON COLUMN "AXIS"."MIG_VALORASINI"."FPERFIN" IS 'Fecha Fin Pago';
   COMMENT ON COLUMN "AXIS"."MIG_VALORASINI"."ICAPRISC" IS 'Capital de Riesgo';
   COMMENT ON COLUMN "AXIS"."MIG_VALORASINI"."IPENALI" IS 'Imp. Penalizaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_VALORASINI"."FULTPAG" IS 'Fecha �ltimo pago';
  GRANT UPDATE ON "AXIS"."MIG_VALORASINI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_VALORASINI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_VALORASINI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_VALORASINI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_VALORASINI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_VALORASINI" TO "PROGRAMADORESCSI";
