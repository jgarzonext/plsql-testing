--------------------------------------------------------
--  DDL for Table PER_DIRECCIONES_AUT
--------------------------------------------------------

  CREATE TABLE "AXIS"."PER_DIRECCIONES_AUT" 
   (	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CDOMICI" NUMBER, 
	"NORDEN" NUMBER(5,0), 
	"CTIPDIR" NUMBER(2,0), 
	"CSIGLAS" NUMBER(2,0), 
	"TNOMVIA" VARCHAR2(200 BYTE), 
	"NNUMVIA" NUMBER(5,0), 
	"TCOMPLE" VARCHAR2(100 BYTE), 
	"TDOMICI" VARCHAR2(1000 BYTE), 
	"CPOSTAL" VARCHAR2(30 BYTE), 
	"CPOBLAC" NUMBER, 
	"CPROVIN" NUMBER, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FUSUMOD" DATE, 
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
	"FBAJA" DATE, 
	"CUSUAUT" VARCHAR2(20 BYTE), 
	"FAUTORIZ" DATE, 
	"CESTADO" NUMBER(2,0), 
	"TOBSERVA" VARCHAR2(200 BYTE), 
	"LOCALIDAD" VARCHAR2(3000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."SPERSON" IS 'Secuencia unica de identificaci�n de una persona';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CAGENTE" IS 'C�digo agente';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CDOMICI" IS 'C�digo domicilio';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."NORDEN" IS 'N�mero de orden del hist�rico';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CTIPDIR" IS 'Tipo de direcci�n';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CSIGLAS" IS 'C�digo siglas';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."TNOMVIA" IS 'Nombre v�a';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."NNUMVIA" IS 'N�mero v�a';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."TCOMPLE" IS 'Descripci�n complementaria';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."TDOMICI" IS 'Descripci�n direcci�n no normalizada';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CPOSTAL" IS 'C�digo postal';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CPOBLAC" IS 'C�digo poblaci�n';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CPROVIN" IS 'C�digo provincia';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CUSUMOD" IS 'C�digo usuario modificaci�n';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."FUSUMOD" IS 'Fecha modificaci�n registro';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CVIAVP" IS 'C�digo de v�a predio - v�a principal';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CLITVP" IS 'C�digo de literal predio - v�a principal';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CBISVP" IS 'C�digo BIS predio - via principal';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CORVP" IS 'C�digo orientaci�n predio - via principal';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."NVIAADCO" IS 'N�mero de via adyacente predio - coordenada';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CLITCO" IS 'C�digo de literal predio - coordenada';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CORCO" IS 'C�digo orientaci�n predio - coordenada';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."NPLACACO" IS 'N�mero consecutivo placa predio - ccordenada';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."COR2CO" IS 'C�digo orientaci�n predio 2 - coordenada';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CDET1IA" IS 'C�digo detalle 1 - informaci�n adicional';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."TNUM1IA" IS 'N�mero predio 1 - informacion adicional';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CDET2IA" IS 'C�digo detalle 2 - informaci�n adicional';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."TNUM2IA" IS 'N�mero predio 2 - informacion adicional';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CDET3IA" IS 'C�digo detalle 3 - informaci�n adicional';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."TNUM3IA" IS 'N�mero predio 3 - informacion adicional';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."FBAJA" IS 'Fecha de baja de la direcci�n';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CUSUAUT" IS 'C�digo usuario autorizaci�n';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."FAUTORIZ" IS 'Fecha autorizaci�n / rechazo';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."CESTADO" IS 'Estado de la autorizaci�n';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."TOBSERVA" IS 'Observaciones';
   COMMENT ON COLUMN "AXIS"."PER_DIRECCIONES_AUT"."LOCALIDAD" IS 'Localidad';
   COMMENT ON TABLE "AXIS"."PER_DIRECCIONES_AUT"  IS 'Tabla para la autorizaci�n de direcciones';
  GRANT UPDATE ON "AXIS"."PER_DIRECCIONES_AUT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PER_DIRECCIONES_AUT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PER_DIRECCIONES_AUT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PER_DIRECCIONES_AUT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PER_DIRECCIONES_AUT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PER_DIRECCIONES_AUT" TO "PROGRAMADORESCSI";
