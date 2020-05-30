--------------------------------------------------------
--  DDL for Table MOVCTATECNICA
--------------------------------------------------------

  CREATE TABLE "AXIS"."MOVCTATECNICA" 
   (	"CCOMPANI" NUMBER(3,0), 
	"NVERSIO" NUMBER(2,0), 
	"SCONTRA" NUMBER(6,0), 
	"CTRAMO" NUMBER(2,0), 
	"NNUMLIN" NUMBER(6,0), 
	"FMOVIMI" DATE, 
	"FEFECTO" DATE, 
	"CCONCEP" NUMBER(2,0), 
	"CDEBHAB" NUMBER(1,0), 
	"IIMPORT" NUMBER, 
	"CESTADO" NUMBER(2,0), 
	"SPROCES" NUMBER, 
	"SCESREA" NUMBER(8,0), 
	"IIMPORT_MONCON" NUMBER, 
	"FCAMBIO" DATE, 
	"CEMPRES" NUMBER(2,0), 
	"CTIPMOV" NUMBER(1,0), 
	"SPRODUC" NUMBER(6,0), 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"NSINIES" NUMBER, 
	"TDESCRI" VARCHAR2(2000 BYTE), 
	"TDOCUME" VARCHAR2(2000 BYTE), 
	"FLIQUID" DATE, 
	"CCOMPAPR" NUMBER(3,0), 
	"SPAGREA" NUMBER(10,0), 
	"CEVENTO" VARCHAR2(20 BYTE), 
	"NID" NUMBER(6,0), 
	"FCONTAB" DATE, 
	"SIDEPAG" NUMBER(8,0), 
	"CUSUCRE" VARCHAR2(20 BYTE), 
	"FCREAC" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIF" DATE, 
	"CRAMO" NUMBER(8,0), 
	"CCORRED" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."CCOMPANI" IS 'C�digo de compa�ia';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."NVERSIO" IS 'N�mero versi�n contrato reas.';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."CTRAMO" IS 'C�digo del tramo';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."NNUMLIN" IS 'N�mero de l�nea';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."FMOVIMI" IS 'Fecha generaci�n movimiento';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."FEFECTO" IS 'Fecha de efecto del movimiento';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."CCONCEP" IS 'Concepto del movimiento';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."CDEBHAB" IS 'Debe o Haber';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."IIMPORT" IS 'Importe del movimiento';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."CESTADO" IS 'Estado del movimiento VF:800106';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."SPROCES" IS 'Identificador de proceso';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."IIMPORT_MONCON" IS 'Importe del movimiento en la moneda de la contabilidad';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."FCAMBIO" IS 'Fecha empleada para el c�lculo de los contravalores';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."CEMPRES" IS 'C�digo de Empresa';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."CTIPMOV" IS 'Tipo de movimiento manual-1 o autom�tica-0';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."SPRODUC" IS 'Secuencia del producto';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."NPOLIZA" IS 'N�mero de p�liza.';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."NCERTIF" IS 'N�mero de certificado para p�lizas colectivas';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."NSINIES" IS 'N�mero de siniestro';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."TDESCRI" IS 'Descripci�n';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."TDOCUME" IS 'Documento';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."FLIQUID" IS 'Fecha de liquidaci�n';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."CCOMPAPR" IS 'C�digo compa��a propia (CCOMPANI de SEGUROS)';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."SPAGREA" IS 'Campo secuencial del pago reaseguro';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."CEVENTO" IS 'Código de evento';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."FCONTAB" IS 'Fecha contable';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."SIDEPAG" IS 'Identificador del pago asociado al siniestro';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."CUSUCRE" IS 'Usuario de Creaci�n';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."FCREAC" IS 'Fecha de Creaci�n';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."CUSUMOD" IS 'Usuario de Modificaci�n';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."FMODIF" IS 'Fecha de Modificaci�n';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."CRAMO" IS 'Identificador del ramo';
   COMMENT ON COLUMN "AXIS"."MOVCTATECNICA"."CCORRED" IS 'Indicador corredor (Cia que agrupamos)';
  GRANT UPDATE ON "AXIS"."MOVCTATECNICA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MOVCTATECNICA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MOVCTATECNICA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MOVCTATECNICA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MOVCTATECNICA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MOVCTATECNICA" TO "PROGRAMADORESCSI";