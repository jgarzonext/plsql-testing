--------------------------------------------------------
--  DDL for Table BAJAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."BAJAS" 
   (	"SBAJA" NUMBER(10,0), 
	"CMOTIVO" NUMBER(6,0), 
	"FMATERN" DATE, 
	"TOBSERV" VARCHAR2(300 BYTE), 
	"IBASECO" NUMBER, 
	"CTURNO" NUMBER(2,0), 
	"NDIACOT" NUMBER(3,0), 
	"FBAJA" DATE, 
	"FALTA" DATE, 
	"FINGRES" DATE, 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"SPERSON" NUMBER(10,0), 
	"SPERALT" NUMBER(10,0), 
	"CCIPSAP" VARCHAR2(4 BYTE), 
	"CPROFES" VARCHAR2(5 BYTE), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"TMEDBAJ" VARCHAR2(20 BYTE), 
	"TMEDALT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."BAJAS"."SBAJA" IS 'Sequencial de bajas';
   COMMENT ON COLUMN "AXIS"."BAJAS"."CMOTIVO" IS 'Motivo de alta';
   COMMENT ON COLUMN "AXIS"."BAJAS"."FMATERN" IS 'Fecha de maternidad';
   COMMENT ON COLUMN "AXIS"."BAJAS"."TOBSERV" IS 'Observaciones';
   COMMENT ON COLUMN "AXIS"."BAJAS"."IBASECO" IS 'Base de cotizaci�n';
   COMMENT ON COLUMN "AXIS"."BAJAS"."CTURNO" IS 'Codigo del turno';
   COMMENT ON COLUMN "AXIS"."BAJAS"."NDIACOT" IS 'Dias de cotizacion';
   COMMENT ON COLUMN "AXIS"."BAJAS"."FBAJA" IS 'Fecha de baja';
   COMMENT ON COLUMN "AXIS"."BAJAS"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."BAJAS"."FINGRES" IS 'Fecha ingreso en la empresa';
   COMMENT ON COLUMN "AXIS"."BAJAS"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."BAJAS"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."BAJAS"."SPERSON" IS 'Identificador �nico de la Personas';
   COMMENT ON COLUMN "AXIS"."BAJAS"."SPERALT" IS 'Identificador �nico de la Personas';
   COMMENT ON COLUMN "AXIS"."BAJAS"."CCIPSAP" IS 'C�digo CIPSAP';
   COMMENT ON COLUMN "AXIS"."BAJAS"."CPROFES" IS 'C�digo de profesi�n';
   COMMENT ON COLUMN "AXIS"."BAJAS"."CUSUARI" IS 'C�digo de usuario.';
   COMMENT ON COLUMN "AXIS"."BAJAS"."TMEDBAJ" IS 'Medico de baja';
   COMMENT ON COLUMN "AXIS"."BAJAS"."TMEDALT" IS 'Medico de alta';
  GRANT UPDATE ON "AXIS"."BAJAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."BAJAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."BAJAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."BAJAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."BAJAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."BAJAS" TO "PROGRAMADORESCSI";
