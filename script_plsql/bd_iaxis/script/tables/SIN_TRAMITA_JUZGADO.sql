--------------------------------------------------------
--  DDL for Table SIN_TRAMITA_JUZGADO
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_TRAMITA_JUZGADO" 
   (	"NSINIES" VARCHAR2(14 BYTE), 
	"NTRAMIT" NUMBER(4,0), 
	"CORGJUD" NUMBER(2,0), 
	"NORGJUD" VARCHAR2(10 BYTE), 
	"TREFJUD" VARCHAR2(20 BYTE), 
	"CSIGLAS" NUMBER(2,0), 
	"TNOMVIA" VARCHAR2(200 BYTE), 
	"NNUMVIA" NUMBER(5,0), 
	"TCOMPLE" VARCHAR2(100 BYTE), 
	"TDIREC" VARCHAR2(100 BYTE), 
	"CPAIS" NUMBER(3,0), 
	"CPROVIN" NUMBER, 
	"CPOBLAC" NUMBER, 
	"CPOSTAL" VARCHAR2(30 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"NLINJUZ" NUMBER(6,0), 
	"TASUNTO" VARCHAR2(30 BYTE), 
	"NCLASEDE" NUMBER(8,0), 
	"NTIPOPRO" NUMBER(8,0), 
	"NPROCEDI" VARCHAR2(50 BYTE), 
	"FNOTIASE" DATE, 
	"FRECPDEM" DATE, 
	"FNOTICIA" DATE, 
	"FCONTASE" DATE, 
	"FCONTCIA" DATE, 
	"FAUDPREV" DATE, 
	"FJUICIO" DATE, 
	"CMONJUZ" VARCHAR2(3 BYTE), 
	"CPLEITO" NUMBER(8,0), 
	"IPLEITO" NUMBER, 
	"IALLANA" NUMBER, 
	"ISENTENC" NUMBER, 
	"ISENTCAP" NUMBER, 
	"ISENTIND" NUMBER, 
	"ISENTCOS" NUMBER, 
	"ISENTINT" NUMBER, 
	"ISENTOTR" NUMBER, 
	"CARGUDEF" NUMBER(8,0), 
	"CRESPLEI" NUMBER(8,0), 
	"CAPELANT" NUMBER(8,0), 
	"THIPOASE" VARCHAR2(2000 BYTE), 
	"THIPOTER" VARCHAR2(2000 BYTE), 
	"TTIPRESP" VARCHAR2(2000 BYTE), 
	"COPERCOB" NUMBER(1,0), 
	"TREASMED" VARCHAR2(2000 BYTE), 
	"CESTPROC" NUMBER(8,0), 
	"CETAPROC" NUMBER(8,0), 
	"TCONCJUR" VARCHAR2(2000 BYTE), 
	"TESTRDEF" VARCHAR2(2000 BYTE), 
	"TRECOMEN" VARCHAR2(2000 BYTE), 
	"TOBSERV" VARCHAR2(80 BYTE), 
	"FCANCEL" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."NSINIES" IS 'N�mero Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."NTRAMIT" IS 'N�mero Tramitaci�n Siniestro';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CORGJUD" IS 'C�digo Organo Judicial (VF=800059)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."NORGJUD" IS 'N�mero Organo Judicial';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."TREFJUD" IS 'Referencia Judicial';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CSIGLAS" IS 'C�digo Tipo V�a';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."TNOMVIA" IS 'Nombre V�a';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."NNUMVIA" IS 'N�mero V�a';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."TCOMPLE" IS 'Descripci�n Complementaria';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."TDIREC" IS 'Direcci�n no normalizada';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CPAIS" IS 'C�digo Pa�s';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CPROVIN" IS 'C�digo Provincia';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CPOBLAC" IS 'C�digo Poblaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CPOSTAL" IS 'C�digo Postal';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."NLINJUZ" IS 'N�mero L�nea';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."TASUNTO" IS 'Descripci�n Asunto';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."NCLASEDE" IS 'Clase de demanda (VF=800066)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."NTIPOPRO" IS 'Tipo de procedimiento (VF=800065)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."NPROCEDI" IS 'N�mero de procedimiento';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."FNOTIASE" IS 'Fecha notificaci�n o emplazamiento al asegurado';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."FRECPDEM" IS 'Fecha recepci�n demanda';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."FNOTICIA" IS 'Fecha notificaci�n o emplazamiento a la CIA';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."FCONTASE" IS 'Fecha contestaci�n demanda asegurado';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."FCONTCIA" IS 'Fecha contestaci�n demanda CIA';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."FAUDPREV" IS 'Fecha audiencia previa';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."FJUICIO" IS 'Fecha del juicio';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CMONJUZ" IS 'C�digo Moneda';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CPLEITO" IS 'Tipo de cuant�a del pleito (VF=800064)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."IPLEITO" IS 'Importe de la cuant�a del pleito';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."IALLANA" IS 'Importe de allanamiento parcial';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."ISENTENC" IS 'Importe total de la sentencia';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."ISENTCAP" IS 'Importe de la sentencia por capital';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."ISENTIND" IS 'Importe de la sentencia por indexaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."ISENTCOS" IS 'Importe de la sentencia por costas';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."ISENTINT" IS 'Importe de la sentencia por intereses';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."ISENTOTR" IS 'Importe de la sentencia por otros';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CARGUDEF" IS 'Argumentos de la defensa (VF=800063)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CRESPLEI" IS 'Resultado del pleito (VF=800062)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CAPELANT" IS 'Apelante (VF=800061)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."THIPOASE" IS 'Hip�tesis del asegurado';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."THIPOTER" IS 'Hip�tesis del tercero';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."TTIPRESP" IS 'Tipo de responsabilidad';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."COPERCOB" IS '�Opera cobertura? (S/N)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."TREASMED" IS 'Reporto asesor m�dico';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CESTPROC" IS 'Estado del proceso (VF=800060)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."CETAPROC" IS 'Etapa procesal (VF=800059)';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."TCONCJUR" IS 'Concepto jur�dico';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."TESTRDEF" IS 'Estrategia de la defensa';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."TRECOMEN" IS 'Recomendaciones';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."TOBSERV" IS 'Descripci�n Observaci�n';
   COMMENT ON COLUMN "AXIS"."SIN_TRAMITA_JUZGADO"."FCANCEL" IS 'Fecha Cancelaci�n';
   COMMENT ON TABLE "AXIS"."SIN_TRAMITA_JUZGADO"  IS 'Juzgado por Tramitaci�n Siniestro';
  GRANT UPDATE ON "AXIS"."SIN_TRAMITA_JUZGADO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_JUZGADO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_TRAMITA_JUZGADO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_TRAMITA_JUZGADO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_JUZGADO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_TRAMITA_JUZGADO" TO "PROGRAMADORESCSI";
