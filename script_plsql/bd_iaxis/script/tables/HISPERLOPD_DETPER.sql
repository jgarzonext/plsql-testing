--------------------------------------------------------
--  DDL for Table HISPERLOPD_DETPER
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISPERLOPD_DETPER" 
   (	"SPERSON" NUMBER(10,0), 
	"CAGENTE" VARCHAR2(8 BYTE), 
	"NORDEN" NUMBER(5,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TAPELLI1" VARCHAR2(200 BYTE), 
	"TAPELLI2" VARCHAR2(60 BYTE), 
	"TNOMBRE" VARCHAR2(200 BYTE), 
	"TSIGLAS" VARCHAR2(200 BYTE), 
	"CPROFES" VARCHAR2(6 BYTE), 
	"TBUSCAR" VARCHAR2(1000 BYTE), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"CCTIBAN" VARCHAR2(50 BYTE), 
	"CESTCIV" NUMBER(2,0), 
	"CPAIS" NUMBER(5,0), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FUSUMOD" DATE, 
	"CTIPBAN" NUMBER(3,0), 
	"NUM_LOPD" NUMBER, 
	"FLOPD" DATE, 
	"COCUPACION" VARCHAR2(6 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."SPERSON" IS 'Secuencia unica de identificacion de una persona';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."CAGENTE" IS 'C�digo agente';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."NORDEN" IS 'N�mero de orden del hist�rico';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."CIDIOMA" IS 'C�digo idioma';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."TAPELLI1" IS 'Primer apellido';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."TAPELLI2" IS 'Segundo apellido';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."TNOMBRE" IS 'Nombre de la persona';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."TSIGLAS" IS 'Siglas persona jur�dica';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."CPROFES" IS 'C�digo profesi�n';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."TBUSCAR" IS 'Cadena con apellido y nombre concatenados para busquedas mas eficientes';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."CBANCAR" IS 'C�digo cuenta bancaria';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."CCTIBAN" IS 'C�digo cuenta bancaria IBAN';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."CESTCIV" IS 'C�digo estado civil';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."CPAIS" IS 'C�digo pa�s de residencia';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."CUSUARI" IS 'C�digo usuario creaci�n registro';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."FMOVIMI" IS 'Fecha creaci�n registro';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."CUSUMOD" IS 'C�digo usuario modificaci�n';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."FUSUMOD" IS 'Fecha modificaci�n registro';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."NUM_LOPD" IS 'N�mero de orden de hist�rico';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."FLOPD" IS 'Fecha de traspaso a las tablas PERLOPD';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DETPER"."COCUPACION" IS 'C�digo de la ocupaci�n';
   COMMENT ON TABLE "AXIS"."HISPERLOPD_DETPER"  IS 'Tabla hist�rica con el detalle de la persona';
  GRANT UPDATE ON "AXIS"."HISPERLOPD_DETPER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPERLOPD_DETPER" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISPERLOPD_DETPER" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISPERLOPD_DETPER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPERLOPD_DETPER" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISPERLOPD_DETPER" TO "PROGRAMADORESCSI";
