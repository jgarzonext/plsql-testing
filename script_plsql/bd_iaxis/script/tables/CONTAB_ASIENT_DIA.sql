--------------------------------------------------------
--  DDL for Table CONTAB_ASIENT_DIA
--------------------------------------------------------

  CREATE TABLE "AXIS"."CONTAB_ASIENT_DIA" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCONTA" DATE, 
	"NASIENT" NUMBER(8,0), 
	"NLINEA" NUMBER(6,0), 
	"CCUENTA" VARCHAR2(50 BYTE), 
	"CPROCES" NUMBER, 
	"FEFEADM" DATE, 
	"CPAIS" NUMBER(3,0), 
	"TAPUNTE" VARCHAR2(1 BYTE), 
	"IAPUNTE" NUMBER, 
	"TDESCRI" VARCHAR2(200 BYTE), 
	"FTRASPASO" DATE, 
	"CENLACE" VARCHAR2(20 BYTE), 
	"CLAVEASI" VARCHAR2(20 BYTE), 
	"TIPODIARIO" VARCHAR2(20 BYTE), 
	"FASIENTO" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CMANUAL" NUMBER(2,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."CEMPRES" IS 'C�digo de Empresa';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."FCONTA" IS 'Fecha en la que se env�a a contabilidad';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."NASIENT" IS 'N� de asiento. Corresponde a la secuencia del m�dulo contable';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."NLINEA" IS 'N� de l�nea en este asiento';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."CCUENTA" IS 'C�digo de cuenta';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."CPROCES" IS 'Identificador del proceso que lo ha generado';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."FEFEADM" IS 'Fecha administraci�n';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."CPAIS" IS 'Pais de residencia';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."TAPUNTE" IS 'Tipo de apunte (D= Debe; H= Haber)';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."IAPUNTE" IS 'Importe del apunte';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."TDESCRI" IS 'Descripci�n de la cuenta';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."FTRASPASO" IS 'Fecha en que se ha traspasado a contabilidad. Puede ser nulo.';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."CENLACE" IS 'Clave Enlace';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."CLAVEASI" IS 'Clave Asiento';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."TIPODIARIO" IS 'Tipo Diario';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."FASIENTO" IS 'Fecha que se informar� al sistema contable como fecha en la que se contabiliza.';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."CUSUARI" IS 'Usuario alta';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."FALTA" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."CONTAB_ASIENT_DIA"."CMANUAL" IS 'Indica registro autom�tico/manual (0/1)';
   COMMENT ON TABLE "AXIS"."CONTAB_ASIENT_DIA"  IS 'Contabilidad diaria';
  GRANT UPDATE ON "AXIS"."CONTAB_ASIENT_DIA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTAB_ASIENT_DIA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONTAB_ASIENT_DIA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONTAB_ASIENT_DIA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONTAB_ASIENT_DIA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONTAB_ASIENT_DIA" TO "PROGRAMADORESCSI";
