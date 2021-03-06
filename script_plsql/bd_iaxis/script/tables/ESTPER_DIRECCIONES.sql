--------------------------------------------------------
--  DDL for Table ESTPER_DIRECCIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTPER_DIRECCIONES" 
   (	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CDOMICI" NUMBER, 
	"CTIPDIR" NUMBER(2,0), 
	"CSIGLAS" NUMBER(2,0), 
	"TNOMVIA" VARCHAR2(200 BYTE), 
	"NNUMVIA" NUMBER(5,0), 
	"TCOMPLE" VARCHAR2(100 BYTE), 
	"TDOMICI" VARCHAR2(1000 BYTE), 
	"CPOSTAL" VARCHAR2(30 BYTE), 
	"CPOBLAC" NUMBER, 
	"CPROVIN" NUMBER, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"CORIGEN" VARCHAR2(3 BYTE), 
	"TRECIBIDO" VARCHAR2(2000 BYTE), 
	"CVIAVP" NUMBER(2,0), 
	"CLITVP" NUMBER(2,0), 
	"CBISVP" NUMBER(2,0), 
	"CORVP" NUMBER(2,0), 
	"NVIAADCO" NUMBER(5,0), 
	"CLITCO" NUMBER(2,0), 
	"CORCO" NUMBER(2,0), 
	"NPLACACO" NUMBER(5,0), 
	"COR2CO" NUMBER(2,0), 
	"CDET1IA" NUMBER(2,0), 
	"TNUM1IA" VARCHAR2(100 BYTE), 
	"CDET2IA" NUMBER(2,0), 
	"TNUM2IA" VARCHAR2(100 BYTE), 
	"CDET3IA" NUMBER(2,0), 
	"TNUM3IA" VARCHAR2(100 BYTE), 
	"LOCALIDAD" VARCHAR2(3000 BYTE), 
	"FDEFECTO" NUMBER, 
	"TALIAS" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."SPERSON" IS 'Secuencia unica de identificacion de una persona';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CAGENTE" IS 'C�digo agente';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CDOMICI" IS 'C�digo domicilio';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CTIPDIR" IS 'Tipo de direcci�n';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CSIGLAS" IS 'C�digo siglas';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."TNOMVIA" IS 'Nombre v�a';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."NNUMVIA" IS 'N�mero v�a';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."TCOMPLE" IS 'Descripci�n complementaria';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."TDOMICI" IS 'Descripci�n direcci�n no normalizada';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CPOSTAL" IS 'C�digo postal';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CPOBLAC" IS 'C�digo poblaci�n';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CPROVIN" IS 'C�digo prov�ncia';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CUSUARI" IS 'C�digo usuario modificaci�n registro';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."FMOVIMI" IS 'Fecha modificaci�n registro';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CVIAVP" IS 'C�digo de via predio - via principal';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CLITVP" IS 'C�digo de literal predio - via principal';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CBISVP" IS 'C�digo BIS predio - via principal';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CORVP" IS 'C�digo orientaci�n predio - via principal';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."NVIAADCO" IS 'N�mero de via adyacente predio - coordenada';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CLITCO" IS 'C�digo de literal predio - coordenada';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CORCO" IS 'C�digo orientaci�n predio - coordenada';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."NPLACACO" IS 'N�mero consecutivo placa predio - ccordenada';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."COR2CO" IS 'C�digo orientaci�n predio 2 - coordenada';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CDET1IA" IS 'C�digo detalle 1 - informaci�n adicional';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."TNUM1IA" IS 'N�mero predio 1 - informacion adicional';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CDET2IA" IS 'C�digo detalle 2 - informaci�n adicional';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."TNUM2IA" IS 'N�mero predio 2 - informacion adicional';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."CDET3IA" IS 'C�digo detalle 3 - informaci�n adicional';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."TNUM3IA" IS 'N�mero predio 3 - informacion adicional';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."LOCALIDAD" IS 'Localidad';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."FDEFECTO" IS 'Direcci�n fiscal por defecto';
   COMMENT ON COLUMN "AXIS"."ESTPER_DIRECCIONES"."TALIAS" IS 'Alias - NIT Unico';
   COMMENT ON TABLE "AXIS"."ESTPER_DIRECCIONES"  IS 'Tabla con la direcci�n de la persona';
  GRANT UPDATE ON "AXIS"."ESTPER_DIRECCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPER_DIRECCIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTPER_DIRECCIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTPER_DIRECCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPER_DIRECCIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTPER_DIRECCIONES" TO "PROGRAMADORESCSI";
