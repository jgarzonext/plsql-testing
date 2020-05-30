--------------------------------------------------------
--  DDL for Table SIN_SINIESTRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_SINIESTRO" 
   (	"NSINIES" VARCHAR2(14 BYTE), 
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
	"TAPE1DEC" VARCHAR2(200 BYTE), 
	"TAPE2DEC" VARCHAR2(60 BYTE), 
	"TTELDEC" VARCHAR2(100 BYTE), 
	"TSINIES" VARCHAR2(2000 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"NCUACOA" NUMBER(2,0), 
	"NSINCOA" VARCHAR2(16 BYTE), 
	"DEC_SPERSON" NUMBER, 
	"CTIPIDE" NUMBER, 
	"NNUMIDE" VARCHAR2(100 BYTE), 
	"CNIVEL" NUMBER(1,0), 
	"SPERSON2" NUMBER(10,0), 
	"FECHAPP" DATE, 
	"NSINCIA" VARCHAR2(50 BYTE), 
	"CCOMPANI" NUMBER(3,0), 
	"NPRESIN" VARCHAR2(20 BYTE), 
	"CPOLCIA" VARCHAR2(40 BYTE), 
	"IPERIT" NUMBER, 
	"CFRAUDE" NUMBER(2,0), 
	"CMOTRESC" NUMBER(4,0), 
	"CAGENTE" NUMBER, 
	"CCARPETA" NUMBER(1,0), 
	"TNOM1DEC" VARCHAR2(500 BYTE), 
	"TNOM2DEC" VARCHAR2(500 BYTE), 
	"TMOVILDEC" VARCHAR2(100 BYTE), 
	"TEMAILDEC" VARCHAR2(3200 BYTE), 
	"CSALVAM" NUMBER(1,0), 
	"FDETECCION" DATE, 
	"SOLIDARIDAD" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."NSINIES" IS 'N�mero Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."SSEGURO" IS 'Secuencia Seguro';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."NRIESGO" IS 'N�mero Riesgo';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."NMOVIMI" IS 'N�mero Movimiento Seguro';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."FSINIES" IS 'Fecha Ocurrencia Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."FNOTIFI" IS 'Fecha Notificaci�n Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CCAUSIN" IS 'C�digo Causa Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CMOTSIN" IS 'C�digo Motivo Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CEVENTO" IS 'C�digo Evento Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CCULPAB" IS 'C�digo Culpabilidad';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CRECLAMA" IS 'C�digo reclamaci�n VF 200011';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."NASEGUR" IS 'N�mero asegurado (producto 2 cabezas)';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CMEDDEC" IS 'C�digo Medio declaraci�n';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CTIPDEC" IS 'C�digo Tipo Declarante';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."TNOMDEC" IS 'Nombre Declarante';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."TAPE1DEC" IS 'Primer Apellido Declarante';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."TAPE2DEC" IS 'Segundo Apellido Declarante';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."TTELDEC" IS 'Tel�fono Declarante';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."TSINIES" IS 'Descripci�n Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."NCUACOA" IS 'Cuadro de coaseguro a aplicar';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."NSINCOA" IS 'N�m. del siniestro para la empresa COA';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."DEC_SPERSON" IS 'Sperson de bbdd del declarant';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CTIPIDE" IS 'Tipo de censo /pasaporte del declarante';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."NNUMIDE" IS 'Numero de Censo/Pasaporte del declarante';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CNIVEL" IS 'Nivel del siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."SPERSON2" IS 'Persona del nivel 2';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."FECHAPP" IS 'Fecha especial de ocurrencia para PPAs (cuando es anterior a la fec. efec. de la p�liza';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."NSINCIA" IS 'Siniestro Compa�ia';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CCOMPANI" IS 'C�digo Compa�ia';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."NPRESIN" IS 'N�mero Presiniestro';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CPOLCIA" IS 'C�digo P�liza Compa��a Aseg. Contraria';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."IPERIT" IS 'Importe Peritaje';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CFRAUDE" IS 'C�digo Fraude';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CMOTRESC" IS 'C�digo Motivo Rescate (tabla SIN_CODMOTRESCCAU)';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CAGENTE" IS 'C�digo del agente';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CCARPETA" IS 'Carpeta asociada (S�/No)';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."TNOM1DEC" IS 'Primer Nombre Declarante';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."TNOM2DEC" IS 'Segundo Nombre Declarante';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."TMOVILDEC" IS 'Telefono movil Declarante';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."TEMAILDEC" IS 'Email Declarante';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."CSALVAM" IS 'Salvamentos 0=No 1=S�';
   COMMENT ON COLUMN "AXIS"."SIN_SINIESTRO"."SOLIDARIDAD" IS 'Numero de endoso';
   COMMENT ON TABLE "AXIS"."SIN_SINIESTRO"  IS 'Siniestros';
  GRANT UPDATE ON "AXIS"."SIN_SINIESTRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_SINIESTRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_SINIESTRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_SINIESTRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_SINIESTRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_SINIESTRO" TO "PROGRAMADORESCSI";
