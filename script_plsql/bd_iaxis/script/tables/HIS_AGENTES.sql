--------------------------------------------------------
--  DDL for Table HIS_AGENTES
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_AGENTES" 
   (	"CAGENTE" NUMBER, 
	"CRETENC" NUMBER(2,0), 
	"CTIPIVA" NUMBER(2,0), 
	"SPERSON" NUMBER(10,0), 
	"CCOMISI" NUMBER, 
	"CTIPAGE" NUMBER(2,0), 
	"CACTIVO" NUMBER(3,0), 
	"CDOMICI" NUMBER, 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"NCOLEGI" VARCHAR2(10 BYTE), 
	"FBAJAGE" DATE, 
	"CSOPREC" NUMBER(2,0), 
	"CMEDIOP" NUMBER(2,0), 
	"CCUACOA" NUMBER(1,0), 
	"TOBSERV" VARCHAR2(70 BYTE), 
	"NMESCOB" NUMBER(2,0), 
	"CRETLIQ" NUMBER(1,0), 
	"CPSEUDO" NUMBER(6,0), 
	"CCODCON" VARCHAR2(5 BYTE), 
	"CTIPBAN" NUMBER(3,0), 
	"CSOBRECOMISI" NUMBER, 
	"TALIAS" VARCHAR2(100 BYTE), 
	"CLIQUIDO" NUMBER(3,0), 
	"CCOMISI_INDIRECT" NUMBER, 
	"CTIPMED" NUMBER(3,0), 
	"TNOMCOM" VARCHAR2(200 BYTE), 
	"CDOMCOM" NUMBER(2,0), 
	"CTIPRETRIB" NUMBER(3,0), 
	"CMOTBAJA" NUMBER(3,0), 
	"CBLOQUEO" NUMBER(3,0), 
	"NREGDGS" NUMBER, 
	"FINSDGS" DATE, 
	"CREBCONTDGS" NUMBER(3,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FUSUMOD" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CRETENC" IS 'C�digo de retenci�n';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CTIPIVA" IS 'C�digo tipo de IVA';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."SPERSON" IS 'Identificador �nico de la Personas';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CCOMISI" IS 'C�digo comisi�n';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CTIPAGE" IS 'Tipo de agente.';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CACTIVO" IS 'Agente activo (VF:31)';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CDOMICI" IS 'C�digo del domicilio que utiliza';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CBANCAR" IS 'Cuenta domiciliaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."NCOLEGI" IS 'N�mero de colegiado';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."FBAJAGE" IS 'Fecha baja del agente';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CSOPREC" IS 'Tipo de soporte de los recibos (null = papel)';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CSOBRECOMISI" IS 'C�digo sobrecomisi�n';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."TALIAS" IS 'Nombre corto del agente';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CLIQUIDO" IS 'Indica si el Intermediario tiene autorizaci�n para descontarse directamente las comisiones. V.F. 372';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CCOMISI_INDIRECT" IS 'C�digo comisi�n indirecta';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CTIPMED" IS 'Tipo de mediador (VF:1062)';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."TNOMCOM" IS 'Nombre comercial';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CDOMCOM" IS 'Direcci�n comercial del agente';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CTIPRETRIB" IS 'Tipo de retribuci�n (VF:1063)';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CMOTBAJA" IS 'Motivo de baja agente (VF:1066)';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CBLOQUEO" IS 'Bloqueo agente  (VF:1067)';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."NREGDGS" IS 'N� de registros DGS';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."FINSDGS" IS 'Fecha de inscripci�n DGS';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CREBCONTDGS" IS 'Contrato recibido: 0-No, 1-Si.';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CUSUALT" IS 'C�digo usuario alta del registro';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."CUSUMOD" IS 'C�digo usuario creaci�n del registro';
   COMMENT ON COLUMN "AXIS"."HIS_AGENTES"."FUSUMOD" IS 'Fecha de creaci�n del registro';
   COMMENT ON TABLE "AXIS"."HIS_AGENTES"  IS 'Hist�rico Agentes - Elementos de la Red Comercial';
  GRANT UPDATE ON "AXIS"."HIS_AGENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_AGENTES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_AGENTES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_AGENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_AGENTES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_AGENTES" TO "PROGRAMADORESCSI";