--------------------------------------------------------
--  DDL for Table DELPER_CONTACTOS_AUT
--------------------------------------------------------

  CREATE TABLE "AXIS"."DELPER_CONTACTOS_AUT" 
   (	"CUSUARIDEL" VARCHAR2(40 BYTE), 
	"FDEL" DATE, 
	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CMODCON" NUMBER, 
	"NORDEN" NUMBER(5,0), 
	"CTIPCON" NUMBER(2,0), 
	"TCOMCON" VARCHAR2(100 BYTE), 
	"TVALCON" VARCHAR2(100 BYTE), 
	"COBLIGA" NUMBER(1,0), 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FUSUMOD" DATE, 
	"FBAJA" DATE, 
	"CUSUAUT" VARCHAR2(20 BYTE), 
	"FAUTORIZ" DATE, 
	"CESTADO" NUMBER(2,0), 
	"TOBSERVA" VARCHAR2(200 BYTE), 
	"CDOMICI" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."SPERSON" IS 'Secuencia unica de identificaci�n de una persona';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."CAGENTE" IS 'C�digo agente';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."CMODCON" IS 'Secuencia modo contacto';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."NORDEN" IS 'N�mero de orden de la modificaci�n del contacto';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."CTIPCON" IS 'C�digo tipo contacto';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."TCOMCON" IS 'Especificaci�n del medio';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."TVALCON" IS 'Valor contacto';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."COBLIGA" IS 'Codigo de contaco �nico (Si: 1, No: 0)';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."CUSUMOD" IS 'C�digo usuario modificaci�n';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."FUSUMOD" IS 'Fecha modificaci�n registro';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."FBAJA" IS 'Fecha de baja del contacto';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."CUSUAUT" IS 'C�digo usuario autorizaci�n';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."FAUTORIZ" IS 'Fecha autorizaci�n / rechazo';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."CESTADO" IS 'Estado de la autorizaci�n';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."TOBSERVA" IS 'Observaciones';
   COMMENT ON COLUMN "AXIS"."DELPER_CONTACTOS_AUT"."CDOMICI" IS 'C�digo domicilio';
   COMMENT ON TABLE "AXIS"."DELPER_CONTACTOS_AUT"  IS 'Tabla para la autorizaci�n de contactos';
  GRANT UPDATE ON "AXIS"."DELPER_CONTACTOS_AUT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_CONTACTOS_AUT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DELPER_CONTACTOS_AUT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DELPER_CONTACTOS_AUT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_CONTACTOS_AUT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DELPER_CONTACTOS_AUT" TO "PROGRAMADORESCSI";
