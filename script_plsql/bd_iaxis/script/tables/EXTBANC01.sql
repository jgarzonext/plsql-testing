--------------------------------------------------------
--  DDL for Table EXTBANC01
--------------------------------------------------------

  CREATE TABLE "AXIS"."EXTBANC01" 
   (	"CTIPSOL" VARCHAR2(1 BYTE), 
	"NNUMSOL" NUMBER(10,0), 
	"NPOLIZA" VARCHAR2(15 BYTE), 
	"CCOMPAN" NUMBER(4,0), 
	"CRAMO" NUMBER(8,0), 
	"FENTRAD" DATE, 
	"FCOMUNI" DATE, 
	"FEFECTO" DATE, 
	"FVENCIM" DATE, 
	"CMOTBAJ" NUMBER(2,0), 
	"CTIPIDE" NUMBER(3,0), 
	"NIDENTI" VARCHAR2(12 BYTE), 
	"CBANCAR" VARCHAR2(50 BYTE), 
	"CMONEDA" VARCHAR2(3 BYTE), 
	"TSOLICI" VARCHAR2(60 BYTE), 
	"TDOMICI" VARCHAR2(60 BYTE), 
	"CPOSTAL" VARCHAR2(30 BYTE), 
	"TPOBLAC" VARCHAR2(50 BYTE), 
	"COFIENV" NUMBER(4,0), 
	"NESTABL" VARCHAR2(60 BYTE), 
	"TDOMEST" VARCHAR2(60 BYTE), 
	"CPOSEST" NUMBER(5,0), 
	"TPOBEST" VARCHAR2(50 BYTE), 
	"CACTIVI" NUMBER(4,0), 
	"TACTIVI" VARCHAR2(60 BYTE), 
	"CENTIDA" NUMBER(4,0), 
	"TENTIDA" VARCHAR2(60 BYTE), 
	"ICONTIN" NUMBER, 
	"ICONTEN" NUMBER, 
	"IPERDID" NUMBER, 
	"IBIENES" NUMBER, 
	"SPROCES" NUMBER, 
	"CIDIOMA" NUMBER(2,0), 
	"CGRUPAC" NUMBER(1,0), 
	"NPRESTAM" VARCHAR2(10 BYTE), 
	"TSUPLEM" VARCHAR2(35 BYTE), 
	"IAMPLUN" NUMBER, 
	"IAMPROB" NUMBER, 
	"CASICOM" VARCHAR2(1 BYTE), 
	"CRCTREX" VARCHAR2(1 BYTE), 
	"CAMPTRA" VARCHAR2(1 BYTE), 
	"CFORPAG" VARCHAR2(1 BYTE), 
	"CESTADO" VARCHAR2(2 BYTE), 
	"IAVMAQ" NUMBER, 
	"CPOBLAC" NUMBER, 
	"CPOBEST" NUMBER(5,0), 
	"TDESAVE" VARCHAR2(60 BYTE), 
	"CPASSOP" VARCHAR2(2 BYTE), 
	"LLOGCOMER�" VARCHAR2(1 BYTE), 
	"CTIPBAN" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."EXTBANC01"."CTIPSOL" IS 'Tipo de solicitud';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."NNUMSOL" IS 'Clave de acceso';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."NPOLIZA" IS 'N�mero de p�liza';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."CCOMPAN" IS 'C�digo de compa�ia.';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."CRAMO" IS 'Ramo del Banco';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."FENTRAD" IS 'Fecha de alta de la solicitud';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."FCOMUNI" IS 'Fecha de comunicaci�n a la Compa�ia';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."FEFECTO" IS 'Fecha de efecto';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."FVENCIM" IS 'Fecha de vencimiento';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."CMOTBAJ" IS 'Motivo de la baja';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."CTIPIDE" IS 'Identificador solicitante';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."NIDENTI" IS 'Identificador del asegurado';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."CBANCAR" IS 'Cuenta de domiciliaci�n';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."CMONEDA" IS 'Moneda de la operaci�n';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."TSOLICI" IS 'Nombre del solicitante';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."TDOMICI" IS 'Domicilio del solicitante';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."CPOSTAL" IS 'C�digo postal del solicitante';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."TPOBLAC" IS 'Poblaci�n del solicitante';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."COFIENV" IS 'Oficina de env�o';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."NESTABL" IS 'Nombre del establecimiento';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."TDOMEST" IS 'Domicili establecimiento';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."CPOSEST" IS 'C�digo postal establecimiento';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."TPOBEST" IS 'Poblaci�n del establecimiento';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."CACTIVI" IS 'Grupo de actividad';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."TACTIVI" IS 'Descripci�n actividad';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."CENTIDA" IS 'Entidad prestataria';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."TENTIDA" IS 'Nombre entidad prestataria';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."ICONTIN" IS 'Importe continente';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."ICONTEN" IS 'Importe contenido';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."IPERDID" IS 'Importe p�rdida por paralizaci�n';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."IBIENES" IS 'Importe bienes refrigerados';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."SPROCES" IS 'N�mero de proc�s';
   COMMENT ON COLUMN "AXIS"."EXTBANC01"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
  GRANT UPDATE ON "AXIS"."EXTBANC01" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXTBANC01" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EXTBANC01" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EXTBANC01" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXTBANC01" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EXTBANC01" TO "PROGRAMADORESCSI";