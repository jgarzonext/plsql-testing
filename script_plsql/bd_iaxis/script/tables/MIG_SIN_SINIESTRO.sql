--------------------------------------------------------
--  DDL for Table MIG_SIN_SINIESTRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_SIN_SINIESTRO" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NSINIES" VARCHAR2(14 BYTE), 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"NMOVIMI" NUMBER(4,0), 
	"FSINIES" DATE, 
	"FNOTIFI" DATE, 
	"CCAUSIN" NUMBER(4,0), 
	"CMOTSIN" NUMBER(4,0), 
	"CEVENTO" VARCHAR2(20 BYTE), 
	"CCULPAB" NUMBER(1,0), 
	"CRECLAMA" NUMBER(2,0), 
	"NASEGUR" NUMBER(6,0), 
	"CMEDDEC" NUMBER(2,0), 
	"CTIPDEC" NUMBER(2,0), 
	"TNOMDEC" VARCHAR2(60 BYTE), 
	"TAPE1DEC" VARCHAR2(60 BYTE), 
	"TAPE2DEC" VARCHAR2(60 BYTE), 
	"TTELDEC" VARCHAR2(100 BYTE), 
	"TSINIES" VARCHAR2(2000 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"NCUACOA" NUMBER(2,0), 
	"NSINCOA" VARCHAR2(16 BYTE), 
	"CSINCIA" VARCHAR2(50 BYTE), 
	"TEMAILDEC" VARCHAR2(100 BYTE), 
	"CTIPIDE" NUMBER, 
	"NNUMIDE" VARCHAR2(100 BYTE), 
	"TNOM2DEC" VARCHAR2(500 BYTE), 
	"TNOM1DEC" VARCHAR2(500 BYTE), 
	"CAGENTE" NUMBER, 
	"CCARPETA" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."NCARGA" IS 'N�mero Riesgo';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."MIG_PK" IS 'Clave �nica (SINIEANN:SINIENUM)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."MIG_FK" IS 'Clave externa (MIG_RIESGOS)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."NSINIES" IS 'N�mero de siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."SSEGURO" IS 'Secuencia del Seguro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."NRIESGO" IS 'N�mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."NMOVIMI" IS 'N�mero Movimiento Seguro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."FSINIES" IS 'Fecha Ocurrencia Siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."FNOTIFI" IS 'Fecha Notificaci�n Siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CCAUSIN" IS 'C�digo Causa Siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CMOTSIN" IS 'C�digo Motivo Siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CEVENTO" IS 'C�digo Evento Siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CCULPAB" IS 'C�digo Culpabilidad';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CRECLAMA" IS 'C�digo reclamaci�n VF 200011';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."NASEGUR" IS 'N�mero asegurado (producto 2 cabezas)';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CMEDDEC" IS 'C�digo Medio declaraci�n';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CTIPDEC" IS 'C�digo Tipo Declarante    ';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."TNOMDEC" IS 'Nombre Declarante';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."TAPE1DEC" IS 'Primer Apellido Declarante';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."TAPE2DEC" IS 'Segundo Apellido Declarante';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."TTELDEC" IS 'Tel�fono Declarante';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."TSINIES" IS 'Descripci�n Siniestro';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CUSUMOD" IS 'C�digo Usuario Modificaci�n    ';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."FMODIFI" IS 'Nombre Declarante';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."NCUACOA" IS 'Cuadro de coaseguro a aplicar';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."NSINCOA" IS 'N�m. del siniestro para la empresa COA';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CSINCIA" IS 'C�digo de siniestro en sistema externo';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."TEMAILDEC" IS 'Email Declarante';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CTIPIDE" IS 'Tipo de censo /pasaporte del declarante';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."NNUMIDE" IS 'Numero de Censo/Pasaporte del declarante';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."TNOM2DEC" IS 'Segundo Nombre Declarante';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."TNOM1DEC" IS 'Primer Nombre Declarante';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CAGENTE" IS 'C�digo del agente';
   COMMENT ON COLUMN "AXIS"."MIG_SIN_SINIESTRO"."CCARPETA" IS 'Carpeta asociada (S�/No)';
   COMMENT ON TABLE "AXIS"."MIG_SIN_SINIESTRO"  IS 'Tabla para la migraci�n de sin_siniestro.';
  GRANT UPDATE ON "AXIS"."MIG_SIN_SINIESTRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_SINIESTRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_SIN_SINIESTRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_SIN_SINIESTRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_SIN_SINIESTRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_SIN_SINIESTRO" TO "PROGRAMADORESCSI";
