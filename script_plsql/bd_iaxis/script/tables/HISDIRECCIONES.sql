--------------------------------------------------------
--  DDL for Table HISDIRECCIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISDIRECCIONES" 
   (	"SHISDIR" NUMBER(9,0), 
	"SPERSON" NUMBER(10,0), 
	"CDOMICI" NUMBER, 
	"TDOMICI" VARCHAR2(40 BYTE), 
	"CPOSTAL" VARCHAR2(30 BYTE), 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER, 
	"CSIGLAS" VARCHAR2(2 BYTE), 
	"TNOMVIA" VARCHAR2(200 BYTE), 
	"NNUMVIA" NUMBER(5,0), 
	"TCOMPLE" VARCHAR2(100 BYTE), 
	"CTIPDIR" NUMBER(2,0), 
	"FMODIF" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FALTA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS"  ENABLE ROW MOVEMENT ;

   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."SHISDIR" IS 'N�mero de hist�rico';
   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."SPERSON" IS 'Identificador �nico de la Personas';
   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."CDOMICI" IS 'C�digo de domicilio';
   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."TDOMICI" IS 'Domicilio';
   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."CPOSTAL" IS 'C�digo postal';
   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."CPROVIN" IS 'C�digo de Provincia';
   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."CPOBLAC" IS 'C�digo de Poblaci�n';
   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."CSIGLAS" IS 'Siglas de la v�a';
   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."TNOMVIA" IS 'Nombre de la v�a';
   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."NNUMVIA" IS 'N�mero de la v�a';
   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."TCOMPLE" IS 'Resto de la direcci�n';
   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."CTIPDIR" IS 'Tipo de direcci�n. CVALOR: 191. 1.- Particular, 2.- Env�o, 3.- Cobro, 4.- Econ�mica, 5.- Otros.';
   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."FMODIF" IS 'Fecha modificaci�n';
   COMMENT ON COLUMN "AXIS"."HISDIRECCIONES"."CUSUMOD" IS 'Usuario modificaci�n';
   COMMENT ON TABLE "AXIS"."HISDIRECCIONES"  IS 'Hist�rico Direcciones';
  GRANT UPDATE ON "AXIS"."HISDIRECCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISDIRECCIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISDIRECCIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISDIRECCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISDIRECCIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISDIRECCIONES" TO "PROGRAMADORESCSI";