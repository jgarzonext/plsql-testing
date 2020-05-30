--------------------------------------------------------
--  DDL for Table HISSIN_SINIESTRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISSIN_SINIESTRO" 
   (	"NSINIES" VARCHAR2(14 BYTE), 
	"CEVENTO" VARCHAR2(20 BYTE), 
	"CCULPAB" NUMBER(1,0), 
	"CRECLAMA" NUMBER(2,0), 
	"CMEDDEC" NUMBER(2,0), 
	"CTIPDEC" NUMBER(2,0), 
	"TNOMDEC" VARCHAR2(60 BYTE), 
	"TAPE1DEC" VARCHAR2(60 BYTE), 
	"TAPE2DEC" VARCHAR2(60 BYTE), 
	"TTELDEC" VARCHAR2(100 BYTE), 
	"TSINIES" VARCHAR2(2000 BYTE), 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"DEC_SPERSON" NUMBER, 
	"CTIPIDE" NUMBER, 
	"NNUMIDE" VARCHAR2(100 BYTE), 
	"FSINIES" DATE, 
	"FNOTIFI" DATE, 
	"CCAUSIN" NUMBER(4,0), 
	"CMOTSIN" NUMBER(4,0), 
	"CNIVEL" NUMBER(1,0), 
	"SPERSON2" NUMBER(10,0), 
	"FECHAPP" DATE, 
	"NSINCIA" VARCHAR2(50 BYTE), 
	"CCOMPANI" NUMBER(3,0), 
	"NPRESIN" VARCHAR2(14 BYTE), 
	"CPOLCIA" VARCHAR2(40 BYTE), 
	"IPERIT" NUMBER, 
	"CAGENTE" NUMBER, 
	"CFRAUDE" NUMBER(2,0), 
	"CCARPETA" NUMBER(1,0), 
	"TNOM1DEC" VARCHAR2(500 BYTE), 
	"TNOM2DEC" VARCHAR2(500 BYTE), 
	"TMOVILDEC" VARCHAR2(100 BYTE), 
	"TEMAILDEC" VARCHAR2(3200 BYTE), 
	"CSALVAM" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."NSINIES" IS 'N�mero Siniestro';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CEVENTO" IS 'C�digo Evento Siniestro';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CCULPAB" IS 'C�digo Culpabilidad';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CRECLAMA" IS 'C�digo reclamaci�n VF 200011';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CMEDDEC" IS 'C�digo Medio declaraci�n';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CTIPDEC" IS 'C�digo Tipo Declarante';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."TNOMDEC" IS 'Nombre Declarante';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."TAPE1DEC" IS 'Primer Apellido Declarante';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."TAPE2DEC" IS 'Segundo Apellido Declarante';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."TTELDEC" IS 'Tel�fono Declarante';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."TSINIES" IS 'Descripci�n Siniestro';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."DEC_SPERSON" IS 'Sperson de bbdd del declarant';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CTIPIDE" IS 'Tipo de censo /pasaporte del declarante';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."NNUMIDE" IS 'Numero de Censo/Pasaporte del declarante';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."FSINIES" IS 'Fecha Ocurrencia Siniestro';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."FNOTIFI" IS 'Fecha Notificaci�n Siniestro';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CCAUSIN" IS 'C�digo Causa Siniestro';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CMOTSIN" IS 'C�digo Motivo Siniestro';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CNIVEL" IS 'Nivel del siniestro';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."SPERSON2" IS 'Persona del nivel 2';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."FECHAPP" IS 'Fecha especial de ocurrencia para PPAs (cuando es anterior a la fec. efec. de la p�liza';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."NSINCIA" IS 'Siniestro Compa�ia';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CCOMPANI" IS 'C�digo Compa�ia';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."NPRESIN" IS 'N�mero Presiniestro';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CPOLCIA" IS 'C�digo P�liza Compa��a Aseg. Contraria';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."IPERIT" IS 'Importe Peritaje';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CAGENTE" IS 'C�digo del agente';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CFRAUDE" IS 'C�digo del fraude';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CCARPETA" IS 'Carpeta asociada (S�/No)';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."TNOM1DEC" IS 'Primer Nombre Declarante';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."TNOM2DEC" IS 'Segundo Nombre Declarante';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."TMOVILDEC" IS 'Telefono movil Declarante';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."TEMAILDEC" IS 'Email Declarante';
   COMMENT ON COLUMN "AXIS"."HISSIN_SINIESTRO"."CSALVAM" IS 'Salvamentos 0=No 1=S�';
   COMMENT ON TABLE "AXIS"."HISSIN_SINIESTRO"  IS 'Siniestros';
  GRANT UPDATE ON "AXIS"."HISSIN_SINIESTRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISSIN_SINIESTRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISSIN_SINIESTRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISSIN_SINIESTRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISSIN_SINIESTRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISSIN_SINIESTRO" TO "PROGRAMADORESCSI";