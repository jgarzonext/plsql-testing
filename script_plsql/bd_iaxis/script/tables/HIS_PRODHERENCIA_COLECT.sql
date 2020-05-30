--------------------------------------------------------
--  DDL for Table HIS_PRODHERENCIA_COLECT
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PRODHERENCIA_COLECT" 
   (	"SPRODUC" NUMBER(22,0), 
	"CAGENTE" NUMBER(22,0), 
	"CFORPAG" NUMBER(22,0), 
	"RECFRA" NUMBER(22,0), 
	"CCLAUSU" NUMBER(22,0), 
	"CGARANT" NUMBER(22,0), 
	"FRENOVA" NUMBER(22,0), 
	"CDURACI" NUMBER(22,0), 
	"CCORRET" NUMBER(22,0), 
	"CCOMPANI" NUMBER(22,0), 
	"CRETORNO" NUMBER(22,0), 
	"CREVALI" NUMBER(22,0), 
	"PIREVALI" NUMBER(22,0), 
	"CTIPCOM" NUMBER(22,0), 
	"CCOA" NUMBER(22,0), 
	"CTIPCOB" NUMBER(22,0), 
	"CBANCAR" NUMBER(22,0), 
	"CCOBBAN" NUMBER(22,0), 
	"CDOCREQ" NUMBER(22,0), 
	"CASEGURADO" NUMBER(22,0), 
	"CBENEFICIARIO" NUMBER(22,0), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."SPRODUC" IS 'C�digo de producto';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CAGENTE" IS 'Si hereda el agente del certificado 0. - 1:S�/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CFORPAG" IS 'Si hereda la forma de pago del certificado. - 2:S� por defecto/1:S� exclusivo/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."RECFRA" IS 'Si hereda el recargo por fraccionamiento del certificado 0. - 1:S�/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CCLAUSU" IS 'Si hereda cl�usulas del certificado 0. - 0:No / 1:S�, solo las de producto / 2:S�, las de producto y espec�ficas / 3:S�, solo las espec�ficas';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CGARANT" IS 'Si hereda las garantias del certificado 0. - 1:S�/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."FRENOVA" IS 'Hereda fecha de renovaci�n de la p�liza';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CDURACI" IS 'Hereda tipo de duraci�n. 0-No hereda; 1-Hereda estricto;  2-Hereda como temporal renovable.';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CCORRET" IS 'Si hereda el co-corretaje del certificado 0. - 1:S�/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CCOMPANI" IS 'Si hereda la compa�ia del certificado 0. 1:Si/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CRETORNO" IS 'Si hereda el retorno del certificado 0. - 1:S�/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CREVALI" IS 'Si hereda el tipo de revalorizaci�n del certificado 0. - 1:S�/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."PIREVALI" IS 'Si hereda el Porcentaje/Importe de revalorizaci�n del certificado 0. - 1:S�/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CTIPCOM" IS 'Si hereda el tipo de comisi�n del certificado 0. - 1:S�/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CCOA" IS 'Si hereda la comisi�n del certificado 0. - 1:S�/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CTIPCOB" IS 'Si hereda el tipo de cobro. - 2:S� por defecto/1:S� exclusivo/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CBANCAR" IS 'Si hereda la cuenta bancaria/tarjeta. - 1:S�/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CCOBBAN" IS 'Si hereda el cobrador bancario. - 1:S�/0:No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CDOCREQ" IS 'Si hereda documentaci�n requerida o no. 1:S� / 0: No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CASEGURADO" IS 'Si hereda el asegurado o no. 1:S� / 0: No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CBENEFICIARIO" IS 'Si hereda los beneficiarios definidos en la caratula o no. 1:S� / 0: No';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PRODHERENCIA_COLECT"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_PRODHERENCIA_COLECT"  IS 'Hist�rico de la tabla PRODHERENCIA_COLECT';
  GRANT UPDATE ON "AXIS"."HIS_PRODHERENCIA_COLECT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PRODHERENCIA_COLECT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PRODHERENCIA_COLECT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PRODHERENCIA_COLECT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PRODHERENCIA_COLECT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PRODHERENCIA_COLECT" TO "PROGRAMADORESCSI";
