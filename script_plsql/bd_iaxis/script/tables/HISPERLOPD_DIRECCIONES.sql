--------------------------------------------------------
--  DDL for Table HISPERLOPD_DIRECCIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISPERLOPD_DIRECCIONES" 
   (	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CDOMICI" NUMBER, 
	"NORDEN" NUMBER(5,0), 
	"CTIPDIR" NUMBER(2,0), 
	"CSIGLAS" NUMBER(2,0), 
	"TNOMVIA" VARCHAR2(200 BYTE), 
	"NNUMVIA" NUMBER(5,0), 
	"TCOMPLE" VARCHAR2(100 BYTE), 
	"TDOMICI" VARCHAR2(100 BYTE), 
	"CPOSTAL" VARCHAR2(30 BYTE), 
	"CPOBLAC" NUMBER, 
	"CPROVIN" NUMBER, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FUSUMOD" DATE, 
	"NUM_LOPD" NUMBER, 
	"FLOPD" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."SPERSON" IS 'Secuencia unica de identificacion de una persona';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."CAGENTE" IS 'C�digo agente';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."CDOMICI" IS 'C�digo domicilio';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."NORDEN" IS 'N�mero de orden del hist�rico';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."CTIPDIR" IS 'Tipo de direcci�n';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."CSIGLAS" IS 'C�digo siglas';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."TNOMVIA" IS 'Nombre v�a';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."NNUMVIA" IS 'N�mero v�a';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."TCOMPLE" IS 'Descripci�n complementaria';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."TDOMICI" IS 'Descripci�n direcci�n no normalizada';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."CPOSTAL" IS 'C�digo postal';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."CPOBLAC" IS 'C�digo poblaci�n';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."CPROVIN" IS 'C�digo prov�ncia';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."CUSUARI" IS 'C�digo usuario creaci�n registro';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."FMOVIMI" IS 'Fecha creaci�n registro';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."CUSUMOD" IS 'C�digo usuario modificaci�n';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."FUSUMOD" IS 'Fecha modificaci�n registro';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."NUM_LOPD" IS 'N�mero de orden de hist�rico';
   COMMENT ON COLUMN "AXIS"."HISPERLOPD_DIRECCIONES"."FLOPD" IS 'Fecha de traspaso a las tablas PERLOPD';
   COMMENT ON TABLE "AXIS"."HISPERLOPD_DIRECCIONES"  IS 'Tabla hist�rica direcci�n de la persona';
  GRANT UPDATE ON "AXIS"."HISPERLOPD_DIRECCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPERLOPD_DIRECCIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISPERLOPD_DIRECCIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISPERLOPD_DIRECCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISPERLOPD_DIRECCIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISPERLOPD_DIRECCIONES" TO "PROGRAMADORESCSI";
